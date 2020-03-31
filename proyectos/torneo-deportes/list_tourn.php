<?php require("templates/header.php"); ?>


<body>

	<?php 
		
		session_start();	

		if (!isset($_SESSION["user"])){
			
			header("location:index.php");

		}

		require("templates/navbar2.php");
		
	?>

	<div class="container">

		<h2 class="text-center">Tournaments List</h2>	
		<?php 
						$user=$_SESSION["user"];

						require("data_connection.php");
						
						?>
						<div class="table-responsive">
							<table class="table table-dark table-striped table-bordered table-hover">
							
								<thead>
									 <tr>
									    <th>Tournament</th>
									    <th>Number of participants</th>
									    <th>Category</th>
									 </tr>
								</thead>
								
								<tbody>
									<?php 

										$tamanho_pag=4;
											
											if (isset($_GET["pagination"])) {

												if ($_GET["pagination"]==1) {
													$pagina=1;
													header("location:list_tourn.php");
												}else{
													$pagina=$_GET["pagination"];
												}


											}else{
												$pagina=1;
											}

										$desde=($pagina-1)*$tamanho_pag;

										$sql="select * from inscriptions where user='$user'";

										$resultado=$base->prepare($sql);

										$resultado->execute();

										$num_filas=$resultado->rowCount();

										$totalpaginas=ceil($num_filas/$tamanho_pag);

										$sql2="select * from inscriptions where user='$user' limit $desde,$tamanho_pag";
											
										$resultado=$base->prepare($sql2);

										$resultado->execute();
											
										while ($registros=$resultado->fetch(PDO::FETCH_ASSOC)) {
											
											echo "<tr><td>".$registros["name_tourn"]."</td>";
											echo "<td>".$registros["participants"]."</td>";

											if ($registros["category"]==1) {
												echo "<td>Beginner</td></tr>";	
											}
											if ($registros["category"]==2) {
												echo "<td>Amateur</td></tr>";	
											}
											if ($registros["category"]==3) {
												echo "<td>Professional</td></tr>";	
											}

										}

				 				?>	
								</tbody>

							</table>

							<nav aria-label="...">
								 <ul class="pagination">
								  	
								    <?php  

								    	if (isset($_GET["pagination"])) {
								    		?>
								    		  	<li class="page-item">
								    			  <a class="page-link" href="?pagination=<?php echo $_GET['pagination']-1; ?>" >Previous</a>
								    			</li>
								    		<?php
								    	}else{
								    		?>
								    			<li class="page-item disabled">
								    			  <a class="page-link" tabindex="-1">Previous</a>
								    			</li>
								    		<?php	
								    	}

								    ?>



									<?php for ($i=1; $i <= $totalpaginas; $i++) :?>
										
										<?php 
											if ($pagina==$i) {
												echo "<li class='page-item active'>";		
											}else{
												echo "<li class='page-item'>";											
											}
										?>
										
											<a class="page-link" href="?pagination=<?php echo $i; ?>"><?php echo $i; ?></a>
										</li>
								    <?php endfor; ?>	

									<?php  

										if (isset($_GET["pagination"]) && $_GET["pagination"]==$totalpaginas || $totalpaginas==1) {
											?>
												<li class="page-item disabled">
											      <a class="page-link">Next</a>
											    </li>
											<?php
										}else{
											
												if (isset($_GET["pagination"])) {
													?>	
														<li class="page-item">
													      <a class="page-link" href="?pagination=<?php echo $_GET["pagination"]+1; ?>">Next</a>
													    </li>
													<?php
												}else{
													?>
														<li class="page-item">
													      <a class="page-link" href="?pagination=2">Next</a>
													    </li>
													<?php
												}
										}

									?>								   

								  </ul>
							</nav>

						</div>
						

	</div>
<?php require("templates/endpage.php"); ?>