<?php 
	  require("templates/header.php"); 
	  require("templates/navbar.php");
?>
	

	<div class="container-fluid orange">
		<h1 class="text-center">Luis Eduardo Ortega De La Rosa</h1>
	</div>	

	<div class="container-fluid">	
	<div class="articulos"> 	
		<div class="row justify-content-center">
  			<div class="col-lg-5">
  				<div class="article">
					<h2 class="text-center">Creación del sitio</h3>
					<p>Sabiendo que en la actualidad hay muchas formas de crear una pagina
					web ya sea con ayuda de un Framework, con algun CMS <em>(Content Management System)</em>, 
					ya sea <a href="https://es.wordpress.com/">Wordpress</a>, <a href="https://www.godaddy.com/es">GoDaddy</a>, <a href="https://es.wix.com/">Wix</a>, etc. Este sitio esta hecho de la manera mas simple posible a mi parecer. Sin alguna plantilla prediseñada, ni con ayuda de algun editor de diseño (ejemplo Dreamweaver), solo con la ayuda de Bootstrap <em>(Framework CSS)</em>, usé Sublime Text como editor de codigo fuente. El sitio esta hecho 100% por mi, con la ayuda del inspector de Firefox que es el navegador que mas uso justamente porque me gusta mas su inspector de elementos que el de Chrome (aunque tambien seria bueno probar el de Opera, Safari e Internet Explorer).</p>
				</div> 
  			</div>

  			<div class="col-lg-5">
  				<div class="article">
  					<h3 class="text-center">Skills</h3>
  					<p>Hasta este ultimo <em>'git push'</em> se programar en C-C++, Java con POO, por ahora hasta la GUI en el caso de Java mientras lo termino de aprender. En el desarrollo web se HTML, CSS, PHP, Javascript, Bootstrap como Framework CSS y Laravel como Framework PHP  </p>
  				</div>
  			</div>

		</div>
	</div>
		
	<div class="proyectos">
		
		<div class="text-center">
			<h2>Proyectos</h2>
		</div>

		<div class="row justify-content-center">
			<div class="col-4">
				<div class="card mb-3">
				 	<img class="card-img-top" src="imgs/koala.jpg" alt="Card image cap" height="200">
				  	<div class="card-body">
				    	<h5 class="card-title text-center">Koala</h5>
				    	<p class="card-text">Esto es una especie que podria estar en peligro de 
				    		extincion si no nos ponemos ilas en esta mierda ahhhh.</p>
				    		<button class="btn btn-primary form-control">Boton</button>
				    	<p class="card-text"><small class="text-muted">30/11/2018</small></p>
				 	</div>
				</div>
			</div>
			
			<div class="col-4">
				<div class="card mb-3">
				 	<img class="card-img-top" src="imgs/koala.jpg" alt="Card image cap" height="200">
				  	<div class="card-body">
				    	<h5 class="card-title text-center">Koala</h5>
				    	<p class="card-text">Esto es una especie que podria estar en peligro de 
				    		extincion si no nos ponemos ilas en esta mierda ahhhh.</p>
				    		<button class="btn btn-primary form-control">Boton</button>
				    	<p class="card-text"><small class="text-muted">30/11/2018</small></p>
				 	</div>
				</div>
			</div>


		</div>
	</div>
		

	</div>

<?php require("templates/footer.php") ?>