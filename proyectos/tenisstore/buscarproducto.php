<?php 
	require("plantillas/cabecera.php"); 
	session_start();
    $session = $_SESSION['rol'];
    if($session != 'admin' && $session != 'empleado'){
        header("location: usuarionoregistrado.php");
    }

    $busqueda=trim($_POST["codigo"]);

    require("connection.php");
	
    $sql="select *
          from productos
		  where nombre like '%".$busqueda."%'";
		  
    $resultado=$base->prepare($sql);
	$resultado->execute();
    
	$band=false;
	require("plantillas/navbar-admin.php");
?>

<div class="container">
	<h2 class="text-center"> Resultados de la busqueda "<?php echo $busqueda ?>"</h4>
	<div class="table-responsive">
		<table class="table table-dark table-striped table-bordered table-hover">
			<thead>
				<tr>
					<th>Nombre</th>
					<th>Codigo</th>
					<th>Cantidad disponible</th>
					<th>Precio de venta</th>
					<th>Acciones</th>
				</tr>
			</thead>
			<tbody>
            <?php 
               while($registro=$resultado->fetch(PDO::FETCH_ASSOC)){
				   $band=true;
			?> 
					<tr>
						<td><?php echo $registro['nombre']; ?></td>
						<td><?php echo $registro['codigo']; ?></td>
						<td><?php echo $registro['cantidad']; ?></td>
						<td><?php echo $registro['precio_venta']; ?></td>
						<td>
                        <?php 
                            if($session=='admin'){
                        ?>
							<form method="POST" action="editarproducto.php">
								<input class='btn btn-warning' type='submit' name='edit' value='Actualizar'>
                                <input type="hidden" value="<?php echo $registro["id"]; ?>" name="id">
                                <input class="btn btn-danger" type="button" name="delete" value="Borrar" onclick='deletee(<?php echo $registro["id"]; ?>)'>
                            </form>
                        <?php } ?>   
						</td>
					</tr>

               <?php } ?> 
            </tbody>
        </table>
    </div>
	<?php  
        if(!$band){  echo "<h2 class='text-center'>No se ha encontrado productos con esa coincidencia </h2>"; }
	?>
		<div class="row justify-content-center">
			<div class="form-group col-md-6 col-sm-12">
			<?php 
				if($session=='admin'){ 
			?>
				<input type="button" onclick="location.href='admin.php';" value="Ir al inicio" class="btn btn-cust" />
			<?php 
				}else{
			?>
				<input type="button" onclick="location.href='facturar.php';" value="Facturar" class="btn btn-cust" />
			<?php 
				}
			?>		
			</div>
		</div> 
</div>

<script type="text/javascript">
	function deletee(a) {
		location.href="borrarproducto.php?id="+a;
	}
</script>

<?php
	require("plantillas/footer.php");
?>