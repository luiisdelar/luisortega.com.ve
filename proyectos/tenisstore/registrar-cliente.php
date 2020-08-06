<?php 
    require("plantillas/cabecera.php"); 
    require("plantillas/navbar-empleado.php");
    require("plantillas/modal.php");

    if (isset($_POST["save-cliente"])) {
        include('connection.php');
        $nombres=$_POST["nombres"];
        $apellidos=$_POST["apellidos"];
        $cedula=$_POST["cedula"];
        $direccion=$_POST["direccion"];

        if (empty($nombres) || empty($apellidos) || empty($cedula) || empty($direccion)) {
            echo "<script> window.onload=function(){
                        $('#texto-info').text('No dejes espacios en blanco. ');
                        $('#modal-info').modal('show'); 
                            } 
                </script>";
        }else{
            try {
                $server="localhost";
                $userserver="root";
                $passwordserver="";
                $db="tenisstore";
                $connection = mysqli_connect($server,$userserver,$passwordserver,$db);
                $base=new PDO("mysql:host=localhost; dbname=tenisstore","root","");
                $base->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);
                $base->exec("set character set utf8");
                $consulta="select cedula from clientes";
                $resultados=mysqli_query($connection,$consulta);
                $band=false;

                while($fila=mysqli_fetch_row($resultados)){
                    if (strcasecmp($fila[0],$cedula)===0) {
                        echo "<script> window.onload=function(){
                            $('#texto-info').text('La cedula ya fue registrada. ');
                            $('#modal-info').modal('show'); 
                                } 
                            </script>";
                        $band=true;       
                    }
                }
                if(!$band){ 
                    $sql="insert into clientes (nombres, apellidos, cedula, direccion) values ('$nombres','$apellidos','$cedula','$direccion')";
                    $resultado=$base->prepare($sql);
                    $resultado->execute();
                    $resultado->closeCursor();           
                    echo "<script> window.onload=function(){
                                $('#texto-info').text('Cliente registrado con exito. ');
                                $('#modal-info').modal('show'); 
                            } 
                            </script>";
                }

            } catch (Exception $e) {
                echo "<script> window.onload=function(){
                    $('#texto-info').text('Error al conectar con la base de datos. ');
                    $('#modal-info').modal('show'); 
                } 
                </script>";
            }
        }
    }
?>

    <div class="container login-box justify-content-center d-flex">
        <form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="POST" class="col-12 box mt">

        <h2 class="text-center label-w mt-4 mb-4">Registro Cliente</h4>
         
        <div class="row justify-content-center">
            <div class="col-md-6 col-sm-12 form-group">
                <label class="label-w">Nombres</label>
                <input type="text" name="nombres" class="form-control" placeholder="Nombres">
            </div>
        
            <div class="col-md-6 col-sm-12 form-group">
                <label class="label-w">Apellidos</label>
                <input type="text" name="apellidos" class="form-control" placeholder="Apellidos">
            </div>
        
            <div class="col-md-6 col-sm-12 form-group">
                <label class="label-w">Cedula</label>
                <input type="number" name="cedula" class="form-control" placeholder="Cedula">
            </div>

            <div class="col-md-6 col-sm-12 form-group">
                <label class="label-w">Dirección</label>
                <input type="text" name="direccion" class="form-control" placeholder="Direccion">
            </div>
        </div>    
        
        <div class="row justify-content-center">        
            <div class="col-md-6 col-sm-12 form-group">
                <input type="submit" name="save-cliente" class="subnewuser btn btn-cust2" value="Registrar">
            </div>
        </div>
        
        <div class="row justify-content-center">
            <div class="form-group col-md-6 col-sm-12">
                <input type="button" onclick="location.href='facturar.php';" value="Volver" class="btn btn-cust" />
            </div>
        </div>

       
        </form>
    </div>

<?php require("plantillas/footer.php"); ?>    