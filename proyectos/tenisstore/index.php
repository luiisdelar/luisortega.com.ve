<?php 
    require("plantillas/cabecera.php"); 
    require("plantillas/modal.php"); 
    require('connection.php');
    
    if(isset($_POST["login"])) {
        $sql="select * from users where username= :username and password= :password";
        $resultado=$base->prepare($sql);
        $user=htmlentities(addslashes($_POST["username"]));
        $password=htmlentities(addslashes($_POST["password"]));
        $resultado->bindValue(":username",$user);
        $resultado->bindValue(":password",$password);
        $resultado->execute();
        $num_register=$resultado->rowCount();
        if ($num_register!=0){
            session_start();
            $user=$_POST["username"];
            $sql="select * from users where username='$user'";
            $resultado=$base->prepare($sql);
            $resultado->execute();
            $registros=$resultado->fetch(PDO::FETCH_ASSOC);       
            if(strcasecmp($registros["rol"],"admin")==0){
                $_SESSION["rol"]="admin";
                header("location: admin.php");
            }
            if(strcasecmp($registros["rol"],"empleado")==0){
                $_SESSION["rol"]="empleado";
                $_SESSION["username"]=$user;
                $_SESSION["id"]=$registros["id"];
                $_SESSION["productosfacturados"]=1;

                header("location: facturar.php");
            }
        }else{
            echo "<script> window.onload=function(){
                                $('#texto-info').text('Usuario y/o contraseña incorrectos.');
                                $('#modal-info').modal('show'); 
                           } 
                 </script>";
        }
    }
?>

<nav class="navbar navbar-expand-lg navbar-dark bg-oscuro justify-content-between">
    <div>  
        <a class="navbar-brand" href="index.php">Tenis Store</a>
    </div>  
    
</nav>

<div class="login-box login-boxx container d-flex justify-content-center">
    <form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="POST" class="box col-md-12 col-sm-12 col-lg-6">
        <div class="row justify-content-center ">
            <div class="col-12">
                <h1 class="text-center title-oscuro">Tenis Store</h1>
            </div>
        </div>
            
        <div class="row justify-content-center">
            <div class="textbox form-group col-12">
                <input type="text" class="form-control" placeholder="&#128100;Usuario" name="username" id="username" required autofocus/>
            </div>
        </div>    
        
        <div class="row justify-content-center">
            <div class="textbox form-group col-12">
                <input type="password" class="form-control" placeholder="&#x1f512;Contraseña" name="password" id="password" required />
            </div>
        </div>    
    
        <div class="row justify-content-center">
            <div class="form-group col-12">
                <input type="submit" name="login" value="Ingresar" class="btn btn-cust" />
            </div>
            <div class="form-group col-12 ">
                <button class="btn btn-cust2" onclick="location.href='../../';">
                   Volver
                </button>
            </div>
        </div>
    </form>
</div>
    
<?php require("plantillas/footer.php"); ?>