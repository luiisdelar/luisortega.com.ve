<?php 

	require("data_connection.php");	

	$conexion=mysqli_connect($db_host,$db_usuario,$db_pass,$db_nombre);

	if (mysqli_connect_errno()) {
		echo "<script> alert('Error al conectar con la base de datos'); </script>";
		exit();
	}

	mysqli_set_charset($conexion,"utf8");

	$consulta="delete from inscriptions where id=".$_GET["id"];

	$resultados=mysqli_query($conexion,$consulta);

	if (!$resultados) {
		echo "<script> alert('Fail to delete'); location.href ='inscr_tourn.php' </script>";
		exit();
	}else{
		echo "<script> alert('Data delete'); location.href ='inscr_tourn.php' </script>";
		exit();
	}
	mysqli_close($conexion);
?>