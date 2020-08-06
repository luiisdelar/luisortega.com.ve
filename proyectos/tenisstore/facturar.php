<?php 
    require("plantillas/cabecera.php");
    session_start();
    $session = $_SESSION['rol'];
    if($session == null || $session=='' || $session != 'empleado'){
        header("location: usuarionoregistrado.php");
    }
    if(!isset($_POST['productosfacturados'])){
        $productosfacturados=1;
    }else{
        $_POST['productosfacturados']++;
        $productosfacturados=$_POST['productosfacturados'];
    }
    require("plantillas/navbar-empleado.php");
?>
    
<div class="container justify-content-center">
    <div class="row">
        <div class="col-md-4 col-sm-12">
            <input class="btn btn-cust mt-4" type="button" value="Registrar Cliente" onclick="location.href='registrar-cliente.php';">   
        </div>
    </div>

    <div class="row box mt mr-0 ml-0">
        <form action="validarfactura.php" method="POST" class="col-sm-12 mt">
           
        <h2 class="text-center label-w mt-2 mb-4">Factura</h2>
            <div class="row justify-content-center">
                <div class="col-md-6 col-sm-12 form-group">
                    <label class="label-w">Cedula del Cliente</label>
                    <?php 
                    if (isset($_POST["addproduct"])) {
                    ?>
                        <input type="text" required name="cedula_cliente" id="cedula_cliente" class="form-control" placeholder="Cedula Cliente" value="<?php echo $_POST['x_cedula'];?>">
                    <?php 
                        }else{
                    ?>
                        <input type="text" required name="cedula_cliente" id="cedula_cliente" class="form-control" placeholder="Cedula Cliente">
                    <?php 
                        }
                    ?>
                </div>
            
                <div class="col-md-6 col-sm-12 form-group">
                    <label class="label-w">Empleado</label>
                    <input type="hidden" name="id_empleado" value="<?php echo $_SESSION['id']; ?>">
                    <input type="text" readonly name="empleado" class="form-control" value="<?php echo $_SESSION['username']; ?>">
                </div>
            </div>
            
            <?php for($i=0;$i<$productosfacturados;$i++){ ?>
                <div class="row justify-content-center">    
                    <div class="col-md-6 col-sm-12 form-group">
                        <label class="label-w">Codigo de Producto</label>
                        <?php 
                            if (isset($_POST["addproduct"]) && $i != ($productosfacturados-1) ) {
                        ?>
                            <input id="codigo-<?php echo ($i+1); ?>" type="text" required name="<?php echo "codigo".($i+1) ?>" class="form-control" value="<?php echo $_POST['x_codigo'.($i+1)] ?>">
                        <?php
                            }else{ ?>
                                <input id="codigo-<?php echo ($i+1); ?>" type="text" required name="<?php echo "codigo".($i+1) ?>" class="form-control" placeholder="Codigo">
                        <?php
                            }
                        ?>
                    </div>
                    <div class="col-md-6 col-sm-12 form-group">
                        <label class="label-w">Cantidad</label>
                        <?php 
                            if (isset($_POST["addproduct"]) && $i != ($productosfacturados-1) ) {
                        ?>
                                <input id="cantidad-<?php echo ($i+1); ?>" type="number" required name="<?php echo "cantidadpro".($i+1) ?>" class="form-control" placeholder="Cantidad" value="<?php echo $_POST['x_cantidadpro'.($i+1)] ?>">
                        <?php
                            }else{ ?>
                                <input id="cantidad-<?php echo ($i+1); ?>" type="number" required name="<?php echo "cantidadpro".($i+1) ?>" class="form-control" placeholder="Cantidad">
                                <?php
                            }
                        ?>
                    </div>
                </div>
            <?php } ?>
            <div class="row justify-content-center">
                <div class="col-md-6 col-sm-12 form-group">
                    <input type="hidden" name="productosfacturados" value="<?php echo $productosfacturados; ?>">
                    <input type="submit" name="facturar" class="btn btn-cust2" value="Facturar">
                </div>
            </div>
        </form>

        <form class="col-sm-12" action="<?php echo $_SERVER['PHP_SELF']; ?>" method="POST">
            <div class="row justify-content-center">
                <div class="col-md-6 col-sm-12 form-group">
                    <?php 
                        if(isset($_POST['productosfacturados'])){
                    ?>
                        <input type="hidden" name="productosfacturados" value="<?php echo $_POST['productosfacturados']; ?>">
                    <?php }else{ ?>
                        <input type="hidden" name="productosfacturados" value="1">
                    <?php } ?>    
                    
                    <!-- Aqui ponemos inputs vacios que se llenaran con los datos 
                        escritos por el usuario con la funcion sendData() y enviados a
                        este mismo documento en caso de que el usuario quiera agregar otro
                        producto sin perder los datos que ya haya estado llenando-->
                    <?php for($i=0;$i<$productosfacturados;$i++){ ?>
                        <input type="hidden" name="<?php echo "x_codigo".($i+1) ?>" id="<?php echo "x_codigo".($i+1) ?>" >
                        <input type="hidden" name="<?php echo "x_cantidadpro".($i+1) ?>" id="<?php echo "x_cantidadpro".($i+1) ?>">
                        
                    <?php } ?>
                    <input type="hidden" name="x_cedula" id="x_cedula">
                    <input type="submit" class="btn btn-cust" onClick="sendData(<?php echo $productosfacturados; ?>)" value="Agregar Producto" name="addproduct">  
                
                </div>
            </div>
        </form>
    </div>
</div>

<script>
    function sendData(x){
        $('#x_cedula').val($('#cedula_cliente').val());
        for (let i = 0; i < x; i++) {
            $('#x_codigo'+(i+1)).val($('#codigo-'+(i+1)).val());
            $('#x_cantidadpro'+(i+1)).val($('#cantidad-'+(i+1)).val());
        }
    }
</script>
<?php require("plantillas/footer.php"); ?>
