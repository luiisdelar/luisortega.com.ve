<?php 
    require("plantillas/cabecera.php");
    require("plantillas/modal.php");

	session_start();
    $session = $_SESSION['rol'];
    if($session == null || $session=='' || $session != 'admin'){
        header("location: usuarionoregistrado.php");
    }
    $id=$_POST["id"];
    require("connection.php");
    if(isset($_POST["save"])) {
        require("connection.php");
        $nombre=$_POST["nombre"];
        $codigo=$_POST["codigo"];
        $cantidad=$_POST["cantidad"];
        $cv=$_POST["cantidad_vendidos"];
        $pre=$_POST["precio"];
        $pv=$_POST["precio_venta"];
        $sql="update productos 
            set nombre='$nombre', codigo='$codigo', cantidad='$cantidad',
            cantidad_vendidos='$cv', precio='$pre', precio_venta='$pv'
            where id='$id'";
        $resultado=$base->prepare($sql);
        $resultado->execute();
        if (!$resultado) {
            echo "Error editando";
        }else{
            echo "<script> window.onload=function(){
                                $('#texto-info').text('El producto ha sido actualizado con exito. ');
                                $('#modal-info').modal('show'); 
                            } 
                    </script>";
        }
    }
    
    $sql="select * from productos where id='$id'";
    $resultado=$base->prepare($sql);
	$resultado->execute();
    $registro=$resultado->fetch(PDO::FETCH_ASSOC);

    require("plantillas/navbar-admin.php");
?>

    <div class="container d-flex justify-content-center">
       
        <form method="POST" action="<?php echo $_SERVER['PHP_SELF']; ?>" class="col-12 box mt">
                
            <h2 class="text-center label-w mb-4 mt-4">Editar Producto</h2>
            
            <div class="row justify-content-center">
                <div class="col-lg-4 col-md-6 col-sm-12 form-group">
                    <label class="label-w">Nombre</label>
                    <input type="text" name="nombre" value="<?php echo $registro["nombre"]; ?>" class="form-control">
                </div>
            
                <div class="col-lg-4 col-md-6 col-sm-12 form-group">
                    <label class="label-w">Codigo</label>
                    <input type="text" name="codigo" value="<?php echo $registro["codigo"]; ?>" class="form-control">
                </div>
            
                <div class="col-lg-4 col-md-6 col-sm-12 form-group">
                    <label class="label-w">Cantidad</label>
                    <input type="number" name="cantidad" value="<?php echo $registro["cantidad"]; ?>" class="form-control">
                </div>
           
                <div class="col-lg-4 col-md-6 col-sm-12 form-group">
                    <label class="label-w">Cantidad de vendidos</label>
                    <input type="number" name="cantidad_vendidos" value="<?php echo $registro["cantidad_vendidos"]; ?>" class="form-control">
                </div>
            
                <div class="col-lg-4 col-md-6 col-sm-12 form-group">
                    <label class="label-w">Precio</label>
                    <input type="number" name="precio" value="<?php echo $registro["precio"]; ?>" class="form-control">
                </div>
            
                <div class="col-lg-4 col-md-6 col-sm-12 form-group">
                    <label class="label-w">Precio de venta</label>
                    <input type="number" name="precio_venta" value="<?php echo $registro["precio_venta"]; ?>" class="form-control">
                </div>
            </div>

            <div class="row justify-content-center">
                <div class="col-6 form-group">
                    <input type="hidden" name="id" value="<?php echo $_POST["id"]; ?>">
                    <input type="submit" name="save" value="Actualizar" class="btn btn-cust2" />
                </div>
            </div>

            <div class="row justify-content-center">
                <div class="col-6 form-group">
                    <input type="button" onclick="location.href='admin.php';" value="Volver" class="btn btn-cust" />
                </div>
            </div>
        </form>
      
    </div>

<?php require("plantillas/footer.php"); ?>