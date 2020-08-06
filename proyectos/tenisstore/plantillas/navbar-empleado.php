<nav class="navbar navbar-expand-lg navbar-dark bg-oscuro justify-content-between">
	<div>  
		<a class="navbar-brand" href="facturar.php"> Tenis Store </a>
	</div>  
	<form action="buscarproducto.php" method="POST">
		<div class="justify-content-end">
			<div class="justify-content-end">
                <input type="search" placeholder="Codigo Producto" name="codigo" class="buscador">
                <input class="bot-busc btn btn-outline-light" type="submit" name="buscar" value="Buscar">
			    <input class="bot-salir btn btn-outline-light my-2 my-sm-0" type="button" value="Salir" onclick="location.href='close.php';">
			</div>
		</div>
	</form>	
</nav>