<?php 
    
    require("plantillas/cabecera.php"); 
    require("plantillas/navbar-admin.php");
    require("plantillas/modal.php");
    session_start();
    $session = $_SESSION['rol'];
    if($session == null || $session=='' || $session != 'admin'){
        header("location: usuarionoregistrado.php");
    }
    
    if (isset($_POST["register"])) {
        require ('connection.php');
        $fullname=$_POST["fullname"];
        $username=$_POST["username"];
        $mail=$_POST["mail"];
        $password=$_POST["password"];
        $rol=$_POST["rol"];
        $band=false;

        if (empty($fullname) || empty($username) || empty($mail) || empty($password) || empty($rol)) {
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
                $consulta="select username from users";
                $resultados=mysqli_query($connection,$consulta);
            
                while($fila=mysqli_fetch_row($resultados)){
                    if (strcasecmp($fila[0],$username)===0) {
                        echo "<script> window.onload=function(){
                            $('#texto-info').text('El nombre de usuario ya existe, seleccione uno diferente.');
                            $('#modal-info').modal('show'); 
                        } 
                        </script>";
                        $band=true;
                    }
                }
                if (!$band) {        
                    $sql="insert into users (username, password, fullname, mail, rol) values ('$username','$password','$fullname','$mail','$rol')";
                    $resultado=$base->prepare($sql);
                    $resultado->execute();
                    $resultado->closeCursor();
                    echo "<script> window.onload=function(){
                        $('#texto-info').text('Empleado registrado con exito.');
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

    <h2 class="label-w text-center mt-4 mb-4">Datos del Empleado</h4>
    
    <div class="row justify-content-start">
        <div class="col-md-6 col-sm-12 form-group">
            <label class="label-w">Nombre Completo</label>
            <input type="text" name="fullname" class="form-control" placeholder="Nombre Completo">
        </div>
    
        <div class="col-md-6 col-sm-12 form-group">
            <label class="label-w">Tipo de usuario</label>
            <select readonly name="rol" class="form-control">
                <option value="Empleado">Empleado</option>
            </select>
        </div>
    
        <div class="col-md-6 col-sm-12 form-group">
            <label class="label-w">Correo</label>
            <input type="mail" name="mail" class="form-control" placeholder="Correo">
        </div>
    
        <div class="col-md-6 col-sm-12 form-group">
            <label class="label-w">Nombre de usuario</label>
            <input type="text" name="username" class="form-control" placeholder="Nombre de usuario">
        </div>
    
        <div class="col-md-6 col-sm-12 form-group">
            <label class="label-w">Contraseña</label>
            <input type="password" name="password" class="form-control" placeholder="Contraseña">
        </div>
    </div>
    
    <div class="row justify-content-center">        
        <div class="col-md-6 col-sm-12 form-group">
            <input type="submit" name="register" class="btn btn-cust2" value="Registrar">
        </div>
    </div>
    
    <div class="row justify-content-center">
        <div class="form-group col-md-6 col-sm-12">
            <input type="button" onclick="location.href='admin.php';" value="Volver" class="btn btn-cust" />
        </div>
    </div>

    </div>
    </form>
</div>

<?php require("plantillas/footer.php"); ?>    