<nav class="navbar navbar-expand-lg navbar-dark bg-oscuro justify-content-between">

	<a class="navbar-brand" href="admin.php">Tenis Store</a>
	 
	<form action="buscarproducto.php" method="POST">
		<div class="justify-content-end">
			<div class="justify-content-end">
				<input type="text" placeholder="Nombre Producto" name="codigo" class="buscador">
				<input class="bot-busc btn btn-outline-light" type="submit" name="buscar" value="Buscar">
				<input class="bot-salir btn btn-outline-light my-2 my-sm-0" type="button" value="Salir" onclick="location.href='close.php';">
			</div>
		</div>
	</form>	
	
</nav>