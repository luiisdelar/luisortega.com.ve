<?php require("templates/header.php"); ?>
<body>

	<?php 

		if (isset($_POST["register"])) {
			
				$name_team=$_POST["name_team"];
				$short_name=trim($_POST["short_name"]);
				$creation=$_POST["creation_date"];
				$adress=$_POST["adress"];
				$email=trim($_POST["email"]);
				$website=trim($_POST["website"]);
				$user=trim($_POST["user"]);
				$pass=trim($_POST["password"]);

				if (empty($short_name) || empty($name_team) || empty($creation) || empty($email) || empty($user) || empty($pass)) {
					echo "<script> alert('Error. Do not leave empty fields'); location.href ='register.php' </script>";
					exit();
				}

				//mezcla de pdo con msqli xd	
				try {
					require("data_connection.php");	

					$conexion=mysqli_connect($db_host,$db_usuario,$db_pass,$db_nombre);

					$base=new PDO("mysql:host=$db_host; dbname=$db_nombre",$db_usuario,$db_pass);

					$base->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);

					$base->exec("set character set utf8");
					
					$consulta="select user from users_pass";

					$resultados=mysqli_query($conexion,$consulta);

					while($fila=mysqli_fetch_row($resultados)){

						if (strcasecmp($fila[0],$user)===0) {
							echo "<script>alert('El usuario ya existe'); location.href ='register.php'; </script>";
							exit();
						}

					}

					$sql="insert into users_pass (user, password, name_team, short_name, creation_date, adress, email, website) values ('$user','$pass','$name_team','$short_name','$creation','$adress','$email','$website')";

					$resultado=$base->prepare($sql);

					$resultado->execute();

					$resultado->closeCursor();

					echo "<script> alert('Registrado con exito'); 
							location.href='index.php'; </script>";
					
					exit();

				} catch (Exception $e) {
					echo "<script> alert('Error al conectar con la base de datos'); </script>";
					exit();
				}
			
				//mysqli_close($conexion);*/

		}


	 ?>
	<?php require("templates/navbar3.php"); ?>
	<div class="container h-100">
	
	<div class="row h-100 justify-content-center align-items-center">	

	<form class="col border border-primary rounded shadow-lg p-3 mb-5 bg-white rounded" method="POST" action="<?php echo $_SERVER['PHP_SELF']; ?>">
		
		<h1 class="text-center">Register</h1>

		<div class="row">

			<div class="col-md-4 col-xs-12"> 
				<div class="form-group">
					<label>Name team</label>
					<input class="form-control" type="text" placeholder="name team" name="name_team" required="true">
				</div>
			</div>
			
			<div class="col-md-4 col-xs-12">
				<div class="form-group">
					<label>Short name</label>
					<input class="form-control" type="text" placeholder="short name" name="short_name" required="true">
				</div>
			</div>		
	
			<div class="col-md-4 col-xs-12">
				<div class="form-group">
					<label>Creation date</label>
					<input class="form-control" type="date" name="creation_date" required="true">
				</div>
			</div>
		</div>

		<div class="row">

			<div class="col-md-4 col-xs-12"> 
				<div class="form-group">
					<label>Responsability adress</label>
					<input class="form-control" type="text" name="adress" placeholder="responsabilty adress">
				</div>
			</div>

			<div class="col-md-4 col-xs-12"> 
				<div class="form-group">
					<label>Email</label>
					<input class="form-control" type="email" name="email" placeholder="email" required="true">
				</div>
			</div>	
		
			<div class="col-md-4 col-xs-12"> 	
				<div class="form-group">
					<label>Website</label>		
					<input class="form-control" typer="web" name="website" placeholder="website">
				</div>
			</div>	

		</div>

		<div class="row">

			<div class="col-md-4 col-xs-12"> 
				<div class="form-group">
					<label>Username</label>
					<input class="form-control" type="text" name="user" placeholder="username" required="true">
				</div>
			</div>

			<div class="col-md-4 col-xs-12">	
				<div class="form-group">
					<label>Password</label>
					<input class="form-control" type="password" name="password" placeholder="password" id="password" required="true">
				</div>
			</div>
			
			<div class="col-md-4 col-xs-12">	
				<div class="form-group">
					<label>Confirm password</label>
					<input class="form-control" type="password" placeholder="confirm password" id="confirm_password" required="true">
				</div>
			</div>
		
		</div>

		<div class="row justify-content-center">

			<div class="col-lg-4">
				<div class="form-group">
					<input class="form-control btn btn-primary" type="submit" name="register" value="Register">
				</div>
			</div>	

			<div class="col-lg-4">
				<div class="form-group">
					<input class="form-control btn btn-primary" type="button" value="Return" onclick="location.href='index.php';">
				</div>	
			</div>

		</div>


	</div>	
			
		

	</form>
	
	</div>

	</div>

	<script type="text/javascript">

		var password = document.getElementById("password")
  		var confirm_password = document.getElementById("confirm_password");

		function validatePassword(){
		  if(password.value != confirm_password.value) {
		    confirm_password.setCustomValidity("Passwords Don't Match");
		  } else {
		    confirm_password.setCustomValidity('');
		  }
		}

		password.onchange = validatePassword;
		confirm_password.onkeyup = validatePassword;

	</script>

<?php require("templates/endpage.php"); ?>