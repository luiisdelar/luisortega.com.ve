<?php 

	$db_host="localhost";
	$db_usuario="root";
	$db_pass="";
	$db_nombre="proyectodeportes";
	
	try {
		
		$base= new PDO('mysql:host=localhost; dbname=proyectodeportes','root','');

		$base->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);

		$base->exec("set character set utf8");

	} catch (Exception $e) {
	
		die("Error: " . $e->getMessage());
		echo "Linea del error: ".$e->getLine();

	}
 ?>