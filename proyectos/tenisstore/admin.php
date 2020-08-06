<?php
include 'connection.php';
session_start();
$session = $_SESSION['rol'];
if($session == null || $session=='' || $session != 'admin'){
    header("location: usuarionoregistrado.php");
}

require("plantillas/cabecera.php");

$server="localhost";
$userserver="root";
$passwordserver="";
$db="tenisstore";
$connection = mysqli_connect($server,$userserver,$passwordserver,$db);
$productos=mysqli_query($connection,"SELECT * FROM productos");

require("plantillas/navbar-admin.php");

?>	


<div class="container">	
	<div class="row">
		<div class="col-md-4 col-sm-12">
			<input class="btn btn-cust mt-4" type="button" onclick="location.href='registrar-empleado.php';" value="Registrar Empleado"  />	
		</div>
		<div class="col-md-4 col-sm-12">
			<input class="btn btn-cust mt-4" type="button" value="Agregar Producto" onclick="location.href='nuevo-producto.php';">
		</div>
	</div>
	
	<h2 class="text-center mb-2 mt-2"> Productos </h4>
	<div class="table-responsive">
		<table class="table table-dark table-striped table-bordered table-hover">
			<thead>
				<tr>
					<th>Nombre</th>
					<th>Codigo</th>
					<th>Cantidad</th>
					<th>Cantidad de vendidos</th>
					<th>Precio</th>
					<th>Precio de Venta</th>
					<th>% de venta</th>
					<th>Acciones</th>
				</tr>
			</thead>
			<tbody>
			<?php

			$tamanho_pag=5;
			
			if (isset($_GET["pagination"])) {
				$pagina=$_GET["pagination"];
			}else{
				$pagina=1;
			}

			$desde=($pagina-1)*$tamanho_pag;

			$sql="select *
				from productos";
			$resultado=$base->prepare($sql);
			$resultado->execute();
			$num_filas=$resultado->rowCount();
			$totalpaginas=ceil($num_filas/$tamanho_pag);
			$sql2="select *
			from productos
			limit $desde,$tamanho_pag";
			$resultado=$base->prepare($sql2);
			$resultado->execute();
			$cont=1;
			$sql3="select sum(cantidad)
				from detalle_factura";
			$resultado3=$base->prepare($sql3);
			$resultado3->execute();
			$registros3=$resultado3->fetch(PDO::FETCH_ASSOC);

			while($registros=$resultado->fetch(PDO::FETCH_ASSOC)){
				?> 
					<tr>
						<td><?php echo $registros['nombre']; ?></td>
						<td><?php echo $registros['codigo']; ?></td>
						<td><?php echo $registros['cantidad']; ?></td>
						<td><?php echo $registros['cantidad_vendidos']; ?></td>
						<td><?php echo $registros['precio']; ?> Bs</td>
						<td><?php echo $registros['precio_venta']; ?> Bs</td>
						<td>
							<?php 
								
								$id_pr=$registros["id"];
								$sql4="select sum(cantidad)
								from detalle_factura
								where id_producto='$id_pr'";
								$resultado4=$base->prepare($sql4);
								$resultado4->execute();
								$registros4=$resultado4->fetch(PDO::FETCH_ASSOC);
								$porc=0;
								if($registros3["sum(cantidad)"]!=0){
									$porc=($registros4["sum(cantidad)"]*100)/$registros3["sum(cantidad)"];
								}
								echo (round($porc * 10) / 10).'%'; 
							?>
						</td>
						<td>
							<form class="" method="POST" action="editarproducto.php">
								<input class='m-2 btn btn-warning' type='submit' name='edit' value='Actualizar'>
								<input type="hidden" value="<?php echo $registros["id"]; ?>" name="id">
								<input class="m-2 btn btn-danger" type="button" name="delete" value="Borrar" onclick='deletee(<?php echo $registros["id"]; ?>)'>
							</form>
						</td>
					</tr>

				<?php	
				$cont++;
			}
				
			?>
			</tbody>
		</table>

		<?php if (isset($totalpaginas) && $totalpaginas != 0): ?>	
			<nav aria-label="...">
				<ul class="pagination justify-content-center">
					<?php  if (isset($_GET["pagination"]) && $_GET["pagination"]!=1) { ?>
						<li class="page-item">
				    		<a class="page-link" href="?pagination=<?php echo $_GET['pagination']-1; ?>" tabindex="-1">Previous</a>
				   		</li>
						<?php }else{ ?>
							<li class="page-item disabled">
						    	  <a class="page-link" tabindex="-1">Previous</a>
							</li>
							<?php }  ?>
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
												if (isset($_GET["pagination"]) ) {
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
			<?php endif ?>
			<?php if ($totalpaginas == 0): ?>
				<h3 class="text-center"> No hay productos en la base de datos. </h3>
			<?php endif ?>	
	</div>
</div>
<?php if ($totalpaginas != 0): ?>	
	<div class="row d-flex justify-content-center m-0">
		<a href="reportes.php" class="btn btn btn-success">Generar Reportes</a>
	</div>
<?php endif ?>

<script type="text/javascript">
	function deletee(a) {
		location.href="borrarproducto.php?id="+a;
	}
</script>

<?php
	require("plantillas/footer.php");
?>