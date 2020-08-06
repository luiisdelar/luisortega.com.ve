<?php 

    require("plantillas/cabecera.php"); 
	session_start();
    $session = $_SESSION['rol'];
    if($session == null || $session=='' || $session != 'admin'){
        header("location: usuarionoregistrado.php");
    }

    require("plantillas/modal.php"); 

    if(isset($_POST["save"])) {

        require("connection.php");
        $nombre=$_POST["nombre"];
        $codigo=$_POST["codigo"];
        $sql="select * from productos
        where codigo='$codigo'";        
        $resultado=$base->prepare($sql);
        $resultado->execute();
        $registro=$resultado->fetch(PDO::FETCH_ASSOC);
        if($registro){
            echo "<script> window.onload=function(){
                             $('#texto-info').text('El codigo del producto ya existe, elige uno diferente ');
                             $('#modal-info').modal('show'); 
                            } 
                </script>";
        }else{
            $cantidad=$_POST["cantidad"];
            $p=$_POST["precio"];
            $pv=$_POST["precio_venta"];
            $sql="insert into productos(nombre,cantidad,codigo,precio,precio_venta) values
            ('$nombre','$cantidad','$codigo','$p','$pv')";
            $resultado=$base->prepare($sql);
            $resultado->execute();
            if (!$resultado) {
                echo "Error editando";
            }else{
                echo "<script> window.onload=function(){
                                $('#texto-info').text('Producto añadido exitosamente. ');
                                $('#modal-info').modal('show'); 
                                } 
                    </script>";
            }
        }
    }
   require('plantillas/navbar-admin.php');
?>

<div class="container d-flex justify-content-center">

        <form method="POST" action="<?php echo $_SERVER['PHP_SELF']; ?>" class="col-12 box mt">
            <h2 class="text-center title-oscuro">Nuevo Producto</h2>

            <div class="row justify-content-start">
                <div class="col-md-6 col-sm-12 form-group">
                    <label class="label-w">Nombre</label>
                    <input type="text" name="nombre" placeholder="Nombre" class="form-control">
                </div>
            
                <div class="col-md-6 col-sm-12 form-group">
                    <label class="label-w">Codigo</label>
                    <input type="text" name="codigo" placeholder="Codigo" class="form-control">
                </div>
          
                <div class="col-md-6 col-sm-12 form-group">
                    <label class="label-w">Cantidad</label>
                    <input type="number" name="cantidad" placeholder="Cantidad" class="form-control">
                </div>
           
                <div class="col-md-6 col-sm-12 form-group">
                    <label class="label-w">Precio (Bs)</label>
                    <input type="number" name="precio" placeholder="Precio" class="form-control">
                </div>
           
                <div class="col-md-6 col-sm-12 form-group">
                    <label class="label-w">Precio de venta (Bs)</label>
                    <input type="number" name="precio_venta" placeholder="Precio venta" class="form-control">
                </div>
            </div>

            <div class="row justify-content-center">
                <div class="col-md-6 col-sm-12 form-group">
                    <input type="submit" name="save" value="Crear" class="btn btn-cust2" />
                </div>
            </div>

            <div class="row justify-content-center">
                <div class="col-md-6 col-sm-12 form-group">
                    <input type="button" onclick="location.href='admin.php';" value="Volver" class="btn btn-cust" />
                </div>
            </div>
        </form>
      
    </div>

<?php require("plantillas/footer.php"); ?>