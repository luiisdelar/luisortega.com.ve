<?php 
	require("connection.php");
	require("plantillas/cabecera.php");
?>
<div class="modal fade" id="modal-info" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
        <div class="modal-header">
            <button type="button" class="close" onclick="location.href='admin.php';" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
        </div>
        <div class="modal-body">
            <h3 id="texto-info" class="text-center"></h3>
        </div>
        <div class="modal-footer">
            <button type="button" class="hover-person btn btn-secondary"  onclick="location.href='admin.php';">Close</button>
        </div>
    </div>
    </div>
</div>

<?php
    $server="localhost";
    $userserver="root";
    $passwordserver="";
    $db="tenisstore";
    $connection = mysqli_connect($server,$userserver,$passwordserver,$db);

	if (mysqli_connect_errno()) {
		echo "<script> alert('Error al conectar con la base de datos'); </script>";
		exit();
	}
	mysqli_set_charset($connection,"utf8");
	$consulta="delete from productos where id=".$_GET["id"];
	$resultados=mysqli_query($connection,$consulta);
	if (!$resultados) {
		echo "<script> alert('Fallo intento de borrar'); location.href ='admin.php' </script>";
		exit();
	}else{
		 echo "<script> window.onload=function(){
                                $('#texto-info').text('El producto ha sido actualizado con exito. ');
								$('#modal-info').modal('show');
                            } 
                    </script>";
	}
	mysqli_close($connection);
	require("plantillas/footer.php");
?>