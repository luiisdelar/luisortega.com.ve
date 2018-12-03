<?php 
	  require("templates/header.php"); 
	  require("templates/navbar.php");
?>
	

	<div class="container-fluid fondo">
		<h1 class="text-center">Luis Eduardo Ortega De La Rosa</h1>
	</div>	

	<div class="container-fluid fondob">	
		<div class="articulos"> 	
			<div class="row justify-content-center">
	  			<div class="col-lg-5">
	  				<div class="article">
						<h2 class="text-center">Creación del sitio 🔧</h3>
						<p>Sabiendo que en la actualidad hay muchas formas de crear una pagina
						web ya sea con ayuda de un Framework, con algun CMS <em>(Content Management System)</em>, 
						ya sea <a target="_blank" href="https://es.wordpress.com/">Wordpress</a>, <a target="_blank" href="https://www.godaddy.com/es">GoDaddy</a>, <a target="_blank" href="https://es.wix.com/">Wix</a>, etc. Este sitio esta hecho de la manera mas simple posible a mi parecer. Sin alguna plantilla prediseñada, ni con ayuda de algun editor de diseño (ejemplo Dreamweaver), solo con la ayuda de Bootstrap <em>(Framework CSS)</em>, usé Sublime Text como editor de codigo fuente. El sitio esta hecho 100% por mi, con la ayuda del inspector de Firefox que es el navegador que mas uso justamente porque me gusta mas su inspector de elementos que el de Chrome (aunque tambien seria bueno probar el de Opera, Safari e Internet Explorer). De igual manera este sitio es algo simple, estatico y de modo informativo. Como este hosting es gratuito no es muy bueno a la hora de cargar las paginas y es posible que a veces falle.</p>

					</div> 
	  			</div>

	  			<div class="col-lg-5">
	  				<div class="article">
	  					<h3 class="text-center">Skills 📜</h3>
	  					<p>Hasta este ultimo <em>'git push'</em> se programar en C-C++, Java, con POO en los anteriores, por ahora hasta la GUI en el caso de Java mientras lo termino de aprender. En el desarrollo web se HTML, CSS, PHP, Javascript, Bootstrap como Framework CSS y Laravel como Framework PHP, gestion de base de datos PL/SQL con Oracle Database y amateur en el uso del controlador de versiones Git. Espero que a medida que pase el tiempo este parrafo se haga mas largo y mas profesional.  </p>
	  				</div>
	  			</div>

			</div>
		</div>
	</div>

	<div class="container-fluid fondo">	
		<div class="proyectos">
			
			<div class="text-center mov">
				<h2>Proyectos 💼</h2>
			</div>

			<div class="row justify-content-center align-items-center ">
				
				<div class="col-4 ">
					<div class="card mb-3 shadow-lg p-3 mb-5 bg-white rounded">
					 	<img class="card-img-top border border-dark" src="imgs/pro3.png" alt="Card image cap" height="">
					  	<div class="card-body">
					    	<h5 class="card-title text-center">Sistema de Torneos</h5>
					    	<p class="card-text">Proyecto de sistema de inscripción de torneos deportivos, con este sistema los oganizadores pueden conocer cuántas personas van a participar y conocer como repartir los premios, definir los enfrentamientos, por mencionar algunas tareas a realizar por parte de los organizadores.</p>
					    		<button class="btn btn-dark form-control">Acceder</button>
					    	<p class="card-text"><small class="text-muted">HTML-CSS-PHP-SQL-Js-Boostrap</small></p>
					 	</div>
					</div>
				</div>
				
				<div class="col-4 align-middle">
					<div class="card mb-3 shadow-lg p-3 mb-5 bg-white rounded">
					 	<img class="card-img-top border border-dark" src="imgs/pro2.png" alt="Card image cap" height="">
					  	<div class="card-body">
					    	<h5 class="card-title text-center">Calculadora de Notas</h5>
					    	<p class="card-text">Pagina para hacer el calcula de la nota final de alguna materia teniendo en cuenta el sistema de evaluacion de la <a target="_blank" href="http://unet.edu.ve/">UNET</a>.</p>
					    		<button class="btn btn-dark form-control">Acceder</button>
					    	<p class="card-text"><small class="text-muted">HTML-CSS-Js-Boostrap</small></p>
					 	</div>
					</div>
				</div>


			</div>
		</div>	
	</div>

<?php require("templates/footer.php") ?>