<?php require("templates/header.php"); ?>

<body>

	<?php 
		session_start();	
		if (!isset($_SESSION["user"])){
			header("location:index.php");
		}
		require("templates/navbar.php");
	 ?>

	<div class="container">
		
		<?php 
			$user=$_SESSION["user"];
			require("data_connection.php");
			$registros=$base->query("select * from users_pass where user='$user'")->fetchAll(PDO::FETCH_OBJ);
			if ($registros[0]->type=="admin") {
				include("admin_zone.php");		
			}else{
		?>

			<h1 class="text-center">Inscription Tournament</h1>
			

		<form method="POST" action="<?php echo $_SERVER['PHP_SELF']; ?>">

			<div class="form-group">
				<label>Tournaments</label>
				<select class="form-control" name="sel">

					<?php 
						
						$registros=$base->query("select * from tournaments")->fetchAll(PDO::FETCH_OBJ);	
						foreach ($registros as $x): 
					
					?>
													
						<option value='<?php echo $x->name_tourn;?>'> <?php echo $x->name_tourn;?> </option>

					<?php 
					
						endforeach; 
					
					?>	

				</select>
			</div>	

			<div class="form-group">
				<label>Participants numbers</label>
				<input class="form-control" type="number" required="true" name="participants" placeholder="participants numbers">
			</div>

			<div class="form-group">
				<label>Category</label>
				<select class="form-control" name="category">
					<option value="1">Beginner</option>
					<option value="2">Amateur</option>
					<option value="3">Profesional</option>
				</select>

			</div>	
			


			<div class="row justify-content-center">
				<div class="col-12">
					<div class="form-group"> 
					<input class="btn btn-primary form-control" type="submit" name="inscription" value="Inscription">
					</div>
				</div>

				<div class="col-12">
					<div class="form-group">
					<input class="btn btn-primary form-control" type="button" value="Tournaments List" onclick="location.href='list_tourn.php';">
					</div>
				</div>
			</div>

			<?php 

				if (isset($_POST["inscription"])) {
					
					$tourn=$_POST["sel"];
					$part=$_POST["participants"];
					$cat=$_POST["category"];
					$user=$_SESSION["user"];


					if(!is_numeric($part) || $part<=0 ){
						?>

						<!-- Modal -->
						<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
						  <div class="modal-dialog" role="document">
						    <div class="modal-content">
						      <div class="modal-header">
						        <h5 class="modal-title" id="exampleModalLabel">Inscription error</h5>
						        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
						          <span aria-hidden="true">&times;</span>
						        </button>
						      </div>
						      <div class="modal-body">
						        <p>Only interger numeric values in participants</p>
						      </div>
						      <div class="modal-footer">
						        <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
						      </div>
						    </div>
						  </div>
						</div>
						
						<script>$('#exampleModal').modal('show');</script>

						<?php
						exit();	
					}

					require("data_connection.php");	
						
					$registros=$base->query("select name_tourn,category from inscriptions where user='$user'")->fetchAll(PDO::FETCH_OBJ);
					
					foreach ($registros as $y) {
						
						if (strcasecmp($y->name_tourn,$tourn)==0 && strcasecmp($y->category,$cat)==0) {

							?>
								<!-- Modal -->
								<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
								  <div class="modal-dialog" role="document">
								    <div class="modal-content">
								      <div class="modal-header">
								        <h5 class="modal-title" id="exampleModalLabel">Inscription error</h5>
								        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
								          <span aria-hidden="true">&times;</span>
								        </button>
								      </div>
								      <div class="modal-body">
								        <p>Team already registered in that tournament and in that category</p>
								      </div>
								      <div class="modal-footer">
								        <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
								      </div>
								    </div>
								  </div>
								</div>
						
								<script>$('#exampleModal').modal('show');  </script>
							<?php

							exit();
			
						}

					}

					$sql="insert into inscriptions (name_tourn, participants, category, user) values ('$tourn','$part','$cat','$user')";

					$resultado=$base->prepare($sql);

					$resultado->execute();

					echo "<script> alert('Equipo inscrito con exito'); location.href ='list_tourn.php'; </script>";

				}
				
			 ?>
			 
		</form>
		
		<?php 
			}
		 ?>

	</div>
	

<?php require("templates/endpage.php"); ?>