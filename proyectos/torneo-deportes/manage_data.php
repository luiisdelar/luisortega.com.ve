<?php require("templates/header.php"); 
	session_start();	

	if (!isset($_SESSION["user"])){		
		header("location:index.php");
	}

	if (isset($_POST["save"])) {
			require("data_connection.php");
			$name_team=$_POST["name_team"];
			$short_name=trim($_POST["short_name"]);
			$creation=$_POST["creation_date"];
			$adress=$_POST["adress"];
			$email=trim($_POST["email"]);
			$website=trim($_POST["website"]);
			$user=trim($_POST["user"]);
			$pass=trim($_POST["password"]);
			$sql="update users_pass 
					   set name_team='$name_team', short_name='$short_name', creation_date='$creation',
					   adress='$adress', email='$email', website='$website'
					   where user='$user'";
			$resultado=$base->prepare($sql);
			$resultado->execute();
			if (!$resultado) {
				echo "Error saving";
			}else{
				echo "<script> alert('Datos editados'); location.href ='inscr_tourn.php' </script>";
				exit();
			}
	}
?>

<body>
	<?php require("templates/navbar2.php"); ?>
	<div class="container mt-5">
	
	<div class="row justify-content-center">	

	<form class="shadow-lg  form-style" method="POST" action="<?php echo $_SERVER['PHP_SELF']; ?>">
		<h1 class="text-center">Admin Zone</h1>
		<h3 class="text-center">Editing Register</h1>
		
		<div class="row w-100">
			<div class="col-md-4 col-12"> 
				<div class="form-group">
					<label>Name team</label>
					<input class="form-control" type="text" placeholder="name team" name="name_team" required="true" value="<?php echo $_POST['team']; ?>">
				</div>
			</div>
			<div class="col-md-4 col-12"> 
				<div class="form-group">
					<label>Short name</label>
					<input class="form-control" type="text" placeholder="short name" name="short_name" required="true" value="<?php echo $_POST['short']; ?>">
				</div>
			</div>
			<div class="col-md-4 col-12"> 
				<div class="form-group">
					<label>Creation date</label>
					<input class="form-control" type="date" name="creation_date" required="true" value="<?php echo $_POST['date']; ?>">
				</div>
			</div>
		</div>	
		
		<div class="row w-100">
			<div class="col-md-4 col-12">
				<div class="form-group">
					<label>Responsability adress</label>
					<input class="form-control" type="text" name="adress" placeholder="responsabilty adress" value="<?php echo $_POST['date']; ?>">
				</div>
			</div>
			<div class="col-md-4 col-12">	
				<div class="form-group">
					<label>Email</label>
					<input class="form-control" type="email" name="email" placeholder="email" required="true" value="<?php echo $_POST['email']; ?>">
				</div>
			</div>
			<div class="col-md-4 col-12">			
				<div class="form-group">
					<label>Website</label>		
					<input class="form-control" typer="web" name="website" placeholder="website" value="<?php echo $_POST['web']; ?>">
				</div>
			</div>		
		</div>
		
		<div class="row w-100">
			<div class="col-md-4 col-12">
				<div class="form-group">
					<label>Username</label>
					<input class="form-control" type="text" readonly name="user" placeholder="username" required="true" value="<?php echo $_POST['user']; ?>">
				</div>
			</div>

			<div class="col-md-4 col-12">
				<div class="form-group">
					<label>Password</label>
					<?php $p="love u <3"; ?>
					<input class="form-control" readonly type="password" name="password" placeholder="password" required="true" value="<?php echo $p; ?>">
				</div>
			</div>	
			

		</div>	
			
		<div class="row w-100 justify-content-center">
			<div class="col-md-4 col-12">
				<div class="form-group">
					<input class="form-control btn btn-primary" type="submit" name="save" value="Save">
				</div>
			</div>	
		</div>
	</form>
	</div>
	</div>

<?php require("templates/endpage.php"); ?>