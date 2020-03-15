<?php 
	require("templates/header.php"); 	  
?>


<!--nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
	<a class="navbar-brand" href="#">Navbar</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"baria-expanded="false" aria-label="Toggle navigation">
	<span class="navbar-toggler-icon"></span></button><div class="collapse navbar-collapse" id="navbarSupportedContent">
	
	<ul class="navbar-nav mr-auto">
		<li class="nav-item active">
			<a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
		</li>
		<li class="nav-item">
			<a class="nav-link" href="#">Link</a>
		</li>
		<li class="nav-item">
			<a class="nav-link disabled" href="#">Disabled</a>
		</li>
	</ul>
</nav-->

	<nav class="navbar navbar-expand-md navbar-dark fixed-top fondo-nav" id="menu">
		<a class="navbar-brand labelmenu mb-0" href="#" data-toggle="collapse" data-target="#navbarSupportedContent" >Menu</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent">
			<span class="navbar-toggler-icon"></span>
		</button>
		
		<div class="collapse navbar-collapse justify-content-center" id="navbarSupportedContent">

			<a class="efecto-nav github nav-position" href="https://github.com/luiisdelar" target="_blank" alt="GitHub">
				<i class="github fab fa-github-alt fa-2x"></i>
				<span class="d-block">GitHub</span>
			</a>
		
			<a class="efecto-nav instagram nav-position" href="https://instagram.com/luiisdelar" target="_blank">
				<i class="instagram fab fa-instagram fa-2x"></i>
				<span class="d-block">Instagram</span> 
			</a>
		
			<a class="efecto-nav telegram nav-position" href="https://t.me/luiisdelar" target="_blank">
				<i class="telegram fab fa-telegram-plane fa-2x"></i> 
				<span class="d-block">Telegram</span>
			</a>

			<a class="efecto-nav mail nav-position" href="mailto:luisortegadlr@gmail.com">
				<i class="mail fas fa-at fa-2x"></i> 
				<span class="d-block">Contacto</span>
			</a>
		</div>
		
	</nav>

	<div class="container-fluid p-0">
		
		<div class="row m-0">
			<div class="col-12 banner">
				<!-- <img class="img-fluid imagen" src="imgs/fondo.jpg"> -->
				<h1 class="text-center display-6"><span>Luis Eduardo Ortega </span><span>De La Rosa</span></h1>	
			</div>
		
		</div>
	</div>

	<div class="container">	
		<div class="articles"> 	
			<div class="row justify-content-center">
				<div class="col-md-9 col-sm-12">
					<h3 class="m-4 text-center">Creación del sitio 🔧</h3>  
					<article>

						<p>			
							La idea de este sitio es mostrar algunos proyectos, entre otras
							cosas hechas por mi con diferentes tecnologias y lenguajes de programación. 
							En los proyectos que se muestran mas abajo se podra ver el uso de HTML, CSS3, 
							PHP, Javascript, SQL, Python, Wordpress, en mi repositorio de Git tambien se 
							pueden ver algunas cosas hechas con C, C++, Java, NodeJs, ademas del uso de 
							algunos Frameworks como Boostrap para CSS, Laravel para PHP entre otros, 
							tambien se ira adicionando contenido que aun esta en etapa de desarrollo 
							y aprendizaje.
						</p>

					</article>
				</div>	
			</div>
		</div>
	</div>

	<div class="container-fluid fondo" id="proyectos">	
		<div class="proyectos">
			
			<div class="text-center mov">
				<h2 class="m-4">Proyectos 💼</h2>
			</div>

			<div class="row justify-content-center align-items-center">
				
				<div class="col-md-5 col-sm-10 col-12">
					<div class="card mb-3 shadow-lg p-3 mb-5 bg-white rounded">
					 	<img class="card-img-top border border-dark" src="imgs/pro3.png" alt="Card image cap" height="">
					  	<div class="card-body">
					    	<h5 class="card-title text-center">Sistema de Torneos</h5>
					    	<p class="card-text">Proyecto de sistema de inscripción de torneos deportivos, con este sistema los oganizadores pueden conocer cuántas personas van a participar y conocer como repartir los premios, definir los enfrentamientos, por mencionar algunas tareas a realizar por parte de los organizadores.</p>
					    		<button class="btn btn-dark form-control" 
										onclick="location.href='proyectos/sistema-deportes/';">Acceder</button>
					    	<p class="card-text">
					    		<small class="text-muted">
					    			<i class="fab fa-html5"></i> HTML
									<i class="fab fa-css3-alt"></i> CSS
									<i class="fab fa-php"></i> PHP
									<i class="fas fa-database"></i> SQL
					    		</small>
					    	</p>
					 	</div>
					</div>
				</div>
				
				<div class="col-md-5 col-sm-10 align-middle col-12">
					<div class="card mb-3 shadow-lg p-3 mb-5 bg-white rounded">
					 	<img class="card-img-top border border-dark" src="imgs/pro2.png" alt="Card image cap" height="">
					  	<div class="card-body">
					    	<button class="btn btn-dark form-control" onclick="location.href='proyectos/cableunet/';">Acceder</button>
					    
					    	<p class="card-text">
					    		<small class="text-muted">
					    			<i class="fab fa-js"></i> Javascript
					    		</small>
					    	</p>
					 	</div>
					</div>
				</div>

				<div class="col-md-5 col-sm-10 align-middle col-12">
					<div class="card mb-3 shadow-lg p-3 mb-5 bg-white rounded">
					 	<img class="card-img-top border border-dark" src="imgs/pro1.png" alt="Card image cap" height="">
					  	<div class="card-body">
					    	<h5 class="card-title text-center">Cable UNET</h5>
					    	<p class="card-text">Sistema Web para la administración de servicios de cable, internet y telefonía.</p>
					    		<button disabled class="btn btn-dark form-control"
										onclick="location.href='cableUNET/';">Acceder</button>
					    	<p class="card-text">
					    		<small class="text-muted">
									<i class="fab fa-laravel"></i> Laravel
					    		</small>
					    	</p>
					 	</div>
					</div>
				</div>
				
		</div>	
	</div>
</div>

<?php require("templates/footer.php") ?>