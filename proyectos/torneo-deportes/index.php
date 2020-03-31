<?php require("templates/header.php"); ?>

	<?php 

		if (isset($_POST["login"])) {
			
				require("data_connection.php");

				$sql="select * from users_pass where user= :user and password= :password";

				$resultado=$base->prepare($sql);

				$user=htmlentities(addslashes($_POST["user"]));

				$password=htmlentities(addslashes($_POST["password"]));

				$resultado->bindValue(":user",$user);

				$resultado->bindValue(":password",$password);

				$resultado->execute();

				$num_register=$resultado->rowCount();

				if ($num_register!=0){

					session_start();
	
					$_SESSION["user"]=$_POST["user"];

					header("location:inscr_tourn.php");

				}else{
					?>
					<!-- Modal -->
						<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
						  <div class="modal-dialog" role="document">
						    <div class="modal-content">
						      <div class="modal-header">
						        <h5 class="modal-title" id="exampleModalLabel">Login error</h5>
						        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
						          <span aria-hidden="true">&times;</span>
						        </button>
						      </div>
						      <div class="modal-body">
						        <p>Username or password incorrect</p>
						      </div>
						      <div class="modal-footer">
						        <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
						      </div>
						    </div>
						  </div>
						</div>
						
						<script>$('#exampleModal').modal('show');  </script>
					<?php	
				}		


		}	
			require("templates/navbar3.php");
		?>

	<div class="container">

		<div class="row align-items-center justify-content-center mt-4">
				
				<form class="col-md-6 col-sm-12 col-lg-6  border border-secondary rounded shadow-lg p-3 m-5 bg-white rounded" method="POST" action="<?php echo $_SERVER['PHP_SELF']; ?>">

					<h1 class="text-center">Login</h1>			
					
						<div class="form-group">
							<label >User:</label>
							<input class="form-control" type="text" placeholder="user" name="user">		
						</div>
							
						
						<div class="form-group">
							<label>Password:</label>
							<input class="form-control" type="password" placeholder="password" name="password">
						</div>

						
						<div class="row justify-content-center">		
							
							<div class="col-12"> 
								<div class="form-group">	
									<input class="btn btn-primary form-control" type="submit" value="Login" name="login">
								</div>
							</div>
							
							<div class="col-12">
								<div class="form-group">
									<input class="btn btn-primary form-control" type="button" value="Register" onclick="location.href='register.php';">
								</div>
							</div>	
						</div>	
						
		
				</form>
			</div>
		
	</div>			

<?php require("templates/endpage.php"); ?>