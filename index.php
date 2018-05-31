<!DOCTYPE html>
<html>

<head>

	<title>Construcción</title>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="personal/css/fonts.css">
	<link rel="stylesheet" type="text/css" href="personal/css/styles.css">
	<link rel="	stylesheet" type="text/css" href="personal/css/bootstrap-social.css">
	
</head>

<body>
	<div class="nav navbar-fixed-top">
		<div class="container">
			<ul class="nav nav-pills">
			  <li role="presentation"><a class="navtextt" href="https://www.facebook.com/luisortegadlr/" target="_blank"><span class="icon-facebook2"></span></a></li>
			  <li role="presentation"><a class="navtextt" href="https://www.instagram.com/luiisdelar/" target="_blank"><span class="icon-instagram"></span></a></li>
			  <li role="presentation"><a class="navtextt" href="https://www.twitter.com/luiiscfc/" target="_blank"><span class="icon-twitter"></span></a></li>
			  <li role="presentation"><a class="navtextt" href="https://www.t.me/luiisdelar/" target="_blank"><span class="icon-telegram"></span></a></li>
			  <li role="presentation"><a class="navtextt" href="https://github.com/luiisdelar" target="_blank"><span class="icon-github"></span></a></li>
			  
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
					<h1>Que buena imagen xD</h1>
				</div>

				<div>
					<img src="personal/imgs/three.jpg">
				</div>

				<div>
					<img src="personal/imgs/four.jpg">
				</div>
				
			</div>

		</div>

		<div class="aside list-group">
			<ul class="list-group">
				<a class="list-group-item">Nada que abre el pasaporte express</a>
				<a class="list-group-item">Maduro dio prorroga para bolivar soberano</a>
				<a class="list-group-item">Estan frias y caras</a>
				<a class="list-group-item">Esta jeva no me habla claro si quiere unos besos o que coño</a>
			</ul>
		</div>

	</div>
	
	<footer>Luis Eduardo Ortega De La Rosa 2018</footer>
	
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