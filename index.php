<?php 
	require("templates/header.php"); 	  
?>


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
		
			<a class="efecto-nav telegram nav-position" href="https://t.me/luiisdelar" target="_blank">
				<i class="telegram fab fa-telegram-plane fa-2x"></i> 
				<span class="d-block">Telegram</span>
			</a>

			<a class="efecto-nav mail nav-position" href="mailto:luisortegadlr@gmail.com">
				<i class="mail fas fa-at fa-2x"></i> 
				<span class="d-block">Contacto</span>
			</a>

			<a class="efecto-nav instagram nav-position" href="https://instagram.com/luiisdelar" target="_blank">
				<i class="instagram fab fa-instagram fa-2x"></i>
				<span class="d-block">Instagram</span> 
			</a>
		</div>
	</nav>

	<div class="container-fluid p-0">
		<div class="row m-0">
			<div class="col-12 banner">
				<h1 class="text-center display-6"><span>Luis Eduardo Ortega </span><span>De La Rosa</span></h1>	
			</div>
		</div>
	</div>

	<div class="container-fluid">	
		<div class="articles m-0"> 	
			<div class="row justify-content-center">
				<div class="col-md-7 col-sm-12">
					<h3 class="m-4 text-center">Creación del sitio 🔧</h3>  
					<article class="mb-4">
						<p>			
							La idea de este sitio es mostrar algunos proyectos, entre otras
							cosas hechas por mi, con diferentes tecnologias y lenguajes de programación 
							(ademas de ver como era la subida de una página a un servidor en internet). 
							En los proyectos que se muestran se podra ver el uso de HTML, CSS3, 
							PHP, Javascript, SQL, Python, Wordpress, en mi repositorio de Git tambien se 
							pueden ver algunas cosas hechas con C, C++, Java, NodeJs, ademas del uso de 
							algunos Frameworks como Boostrap de CSS, Laravel de PHP, entre otros, 
							a medida de lo posible se ira adicionando contenido que aun esta en etapa de desarrollo.
						</p>
					</article>
				</div>	
			</div>
		</div>
	</div>

	<div class="container-fluid" id="proyectos">	
		<div class="proyectos">
			
			<div class="text-center mov">
				<h2 class="m-4">Proyectos 💼</h2>
			</div>

			<div class="row justify-content-center align-items-center">	
				<div class="col-md-5 col-sm-10 col-12">
					<div class="card mb-3 shadow-lg p-3 mb-5 bg-white rounded">
					 	<img class="card-img-top border border-dark" src="imgs/pro3.png" alt="Card image cap" height="">
					  	<div class="card-body">
					    	<h4 class="card-title text-center">Sistema de Torneos</h4>
					    	<p class="card-text">
								En este proyecto podemos registrar la participación de distintos
								equipos en diferentes torneos deportivos. El administrador del 
								sistema puede editar y ver la informacion de los distintos equipos
								inscritos en los torneos. Con este sistema los oganizadores pueden conocer cuántas 
								personas van a participar y conocer como repartir los premios, 
								definir los enfrentamientos, por mencionar algunas tareas a 
								realizar por parte de los organizadores. Esta aplicación fue hecha con 
								HTML, CSS3, Boostrap, Js y SQL para guardar la informacion en la base de datos.
							</p>
							<div class="btn-card">
								<button class="btn btn-neg form-control" 
									    onclick="location.href='proyectos/torneo-deportes/';">Acceder</button>
							</div>
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
					 	<img class="card-img-top border border-dark" src="imgs/pro1.png" alt="Card image cap" height="">
					  	<div class="card-body">
					    	<h4 class="card-title text-center">Cable UNET</h4>
					    	<p class="card-text">Sistema Web para la administración de servicios de cable, internet y telefonía. 
							En este proyecto el administrador puede crear diferentes servicios a vender asi como asignarle
							a cada servicio su caracterista correspondiente </p>
							<div class="btn-card">
								<button class="btn btn-neg form-control"
										onclick="location.href='proyectos/cableunet/public';">Acceder</button>
							</div>
					    	<p class="card-text">
					    		<small class="text-muted">
									<i class="fab fa-laravel"></i> Laravel
					    		</small>
					    	</p>
					 	</div>
					</div>
				</div>

				<div class="col-md-5 col-sm-10 align-middle col-12">
					<div class="card mb-3 shadow-lg p-3 mb-5 bg-white rounded">
					 	<img class="card-img-top border border-dark" src="imgs/pro1.png" alt="Card image cap" height="">
					  	<div class="card-body">
					    	<h4 class="card-title text-center">Calculadora de notas UNET</h4>
					    	<p class="card-text"> En esta aplicación web podemos calcular la nota 
							en base a los porcentajes de cada parcial, tambien dispone de la opción de 
							calcular cuanto falta para pasar una materia en base al criterio de evaluación 
							de la <a href="https://unet.edu.ve">UNET.</a> </p>
							<div class="btn-card">
								<button class="btn btn-neg form-control"
										onclick="location.href='proyectos/calculadoraunet';">Acceder</button>
							</div>
					    	<p class="card-text">
					    		<small class="text-muted">
									<i class="fab fa-js"></i> Javascript
					    		</small>
					    	</p>
					 	</div>
					</div>
				</div>

				
		</div>	
	</div>
</div>

<?php require("templates/footer.php") ?>