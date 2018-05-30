<!DOCTYPE html>
<html>

<head>

	<title>Construcción</title>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="personal/css/fonts.css">
	<link rel="stylesheet" type="text/css" href="personal/css/styles.css">
	<link rel="stylesheet" type="text/css" href="personal/css/bootstrap-social.css">
	
</head>

<body>
	<div class="nav navbar-fixed-top">
		<div class="container">
			<ul class="nav nav-pills">
			  <li role="presentation"><a class="navtextt" href="#">Contacto</a></li>
			  <li role="presentation"><a class="navtextt" href="#">Redes Sociales</a></li>
			  <li role="presentation"><a class="navtextt" href="#">Deja un comentario</a></li>
			</ul>
		</div>

	</div>	

	<div class="main container">
		
		<div class="portada">
			<h1>Titulo principal</h1>
			<h5>Sitio web personal de presentación</h5>	
		</div>

		<div class="boxslide"> 

			<div class="slides">
				<div>
					<img src="personal/imgs/one.jpg">
				</div>
				
				<div>
					<img src="personal/imgs/two.jpg">
				</div>

				<div>
					<img src="personal/imgs/three.jpg">
				</div>

				<div>
					<img src="personal/imgs/four.jpg">
				</div>
				
			</div>

		</div>

	</div>
	
	<script src="personal/js/jquery.js"></script>
	<script src="personal/js/jquery.slides.js"></script>

	<script>
		$(function(){
  $(".slides").slidesjs({
    play: {
      active: true,
        // [boolean] Generate the play and stop buttons.
        // You cannot use your own buttons. Sorry.
      effect: "slide",
        // [string] Can be either "slide" or "fade".
      interval: 3000,
        // [number] Time spent on each slide in milliseconds.
      auto: true,
        // [boolean] Start playing the slideshow on load.
      swap: true,
        // [boolean] show/hide stop and play buttons
      pauseOnHover: false,
        // [boolean] pause a playing slideshow on hover
      restartDelay: 2500
        // [number] restart delay on inactive slideshow
    }
  });
});
	</script>	
</body>
</html>