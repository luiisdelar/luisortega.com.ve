<?php 
	require("plantillas/cabecera.php");
	require("plantillas/navbar-empleado.php"); 
?>
<div class="modal fade" id="modal-info" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
        <div class="modal-header">
        </div>
        <div class="modal-body">
            <h3 id="texto-info" class="text-center"></h3>
        </div>
        <div class="modal-footer">
            <button type="button" class="hover-person btn btn-secondary" onclick="location.href='index.php';">Ingresar</button>
        </div>
    </div>
    </div>
</div>	
<?php	
	echo "<script> window.onload=function(){
			$('#texto-info').text('Debe estar registrado para entrar a esta sección.');
			$('#modal-info').modal('show'); 
			} 
	</script>";
require("plantillas/footer.php"); ?>