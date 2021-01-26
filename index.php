<?php 
	include "config.php";
	require("templates/header.php"); 	  
?>


	<!-- <nav class="navbar navbar-expand-md navbar-dark fixed-top fondo-nav" id="menu">
		
		<a class="navbar-brand labelmenu mb-0" href="#" data-toggle="collapse" data-target="#navbarSupportedContent" >< Luis / ></a>
		
		<button class="navbar-toggler boton-menu" type="button" data-toggle="collapse" data-target="#navbarSupportedContent">
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
				<span class="d-block">Email</span>
			</a>

			<a class="efecto-nav instagram nav-position" href="https://instagram.com/luiisdelar" target="_blank">
				<i class="instagram fab fa-instagram fa-2x"></i>
				<span class="d-block">Instagram</span> 
			</a>
		</div>
	</nav> -->

	<div class="container-fluid p-0">
		<div class="row m-0">
			<div class="col-12 banner">
				<h1 data-aos="fade-right" class="text-center display-6"><span>Luis Eduardo Ortega </span><span>De La Rosa</span></h1>	
			</div>
		</div>
	</div>

	<div class="container-fluid">	
		
	<div class="articles m-0"> 	
			<div class="row justify-content-center">
				<div class="col-lg-7 col-md-12 col-sm-12">
					<h2 class="m-4 text-center"><?php echo $lang['titulo-1'] ?> 🔧</h2>  
					<article class="mb-4">
						<p>			
							<?php echo $lang['p-1'] ?>
						</p>		
						<p>
							<?php echo $lang['p-2'] ?>
						</p>
					</article>
				</div>	
			</div>
		</div>
	</div>

	<div class="container-fluid" id="disenos">
		<h2 class="text-center pt-2"><?php echo $lang['titulo-2'] ?> 👨🏻‍🎨</h2>
		
		<div class="row d-flex justify-content-center mb-2 mt-2">
			<div class="col-lg-7 col-md-12 col-sm-12">
				<article>
					<p>	
						<?php echo $lang['p-3'] ?>
					</p>
				</article>
			</div>
		</div>
			
		
		<div class="row d-flex justify-content-center mb-2 mt-2">
			<div class="col-lg-4 col-md-8 col-sm-12 mt-2 col-img-d">
				<img class="shadow-lg" src="imgs/d1.gif" alt="imagen de diseño" height="">
				<button class="btn btn-neg form-control mt-2 mb-4" 
					onclick="location.href='diseños/diseño-1/';"><?php echo $lang['dis'] ?> 1</button>
			</div>
			
			<div class="col-lg-4 col-md-8 col-sm-12 mt-2 col-img-d">
				<img class="shadow-lg" src="imgs/d2.gif" alt="imagen de diseño" height="">
				<button class="btn btn-neg form-control mt-2 mb-4" 
					onclick="location.href='diseños/diseño-2/';"><?php echo $lang['dis'] ?> 2</button>
			</div>
		</div>	
	</div>

	<div class="container-fluid" id="proyectos">	
		<div class="proyectos">
			
			<div class="text-center mov">
				<h2 class="m-4"><?php echo $lang['titulo-3'] ?> 💼</h2>
			</div>

			<div class="row justify-content-center align-items-center">	
				<div class="col-lg-5 col-md-8 col-sm-12">
					<div class="card mb-3 shadow-lg p-3 mb-5 bg-white rounded">
					 	<img class="card-img-top border border-dark" src="imgs/img1.jpg" alt="imagen de proyecto" height="">
					  	<div class="card-body">
					    	<h4 class="card-title text-center"><?php echo $lang['tp-1'] ?></h4>
					    	<p class="card-text">
								<?php echo $lang['proyecto-1'] ?>
							</p>
							<div class="btn-card">
								<button class="btn btn-neg form-control" 
									    onclick="location.href='proyectos/torneo-deportes/';"><?php echo $lang['acc'] ?></button>
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
				
				<div class="col-lg-5 col-md-8 col-sm-12 align-middle">
					<div class="card mb-3 shadow-lg p-3 mb-5 bg-white rounded">
					 	<img class="card-img-top border border-dark" src="imgs/img2.png" alt="imagen de proyecto" height="">
					  	<div class="card-body">
					    	<h4 class="card-title text-center">Cable UNET</h4>
					    	<p class="card-text"><?php echo $lang['proyecto-1'] ?></p>
							<div class="btn-card">
								<button class="btn btn-neg disabled form-control"><?php echo $lang['const'] ?></button>
							</div>
					    	<p class="card-text">
					    		<small class="text-muted">
									<i class="fab fa-laravel"></i> Laravel
					    		</small>
					    	</p>
					 	</div>
					</div>
				</div>

				<div class="col-lg-5 col-md-8 col-sm-12 align-middle">
					<div class="card mb-3 shadow-lg p-3 mb-5 bg-white rounded">
					 	<img class="card-img-top border border-dark" src="imgs/img3.png" alt="imagen de proyecto" height="">
					  	<div class="card-body">
					    	<h4 class="card-title text-center"><?php echo $lang['tp-3'] ?></h4>
					    	<p class="card-text"><?php echo $lang['proyecto-3'] ?></p>
							<div class="btn-card">
								<button class="btn btn-neg form-control"
										onclick="location.href='proyectos/calculadoraunet';"><?php echo $lang['acc'] ?></button>
							</div>
					    	<p class="card-text">
					    		<small class="text-muted">
									<i class="fab fa-js"></i> Javascript
					    		</small>
					    	</p>
					 	</div>
					</div>
				</div>

				<div class="col-lg-5 col-md-8 col-sm-12 align-middle">
					<div class="card mb-3 shadow-lg p-3 mb-5 bg-white rounded">
					 	<img class="card-img-top border border-dark" src="imgs/img4.jpg" alt="imagen de proyecto" height="">
					  	<div class="card-body">
					    	<h4 class="card-title text-center">Tenis Store</h4>
					    	<p class="card-text">
								<?php echo $lang['proyecto-4'] ?>
								</p>
							<div class="btn-card">
								<button class="btn btn-neg form-control"
										onclick="location.href='proyectos/tenisstore';"><?php echo $lang['acc'] ?></button>
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
		</div>	
	</div>
</div>

<?php require("templates/footer.php") ?>