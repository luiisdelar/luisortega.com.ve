<?php
    require("templates/header.php"); 
?>

    <nav class="navbar navbar-dark fixed-top fondo-nav d-flex align-items-center justify-content-between" id="menu">
        
    
        <div class="d-flex align-items-center">
            <a class="efecto-nav back" href="index.php">
                <i class="back fas fa-arrow-circle-left fa-2x"></i>
            </a>   
        </div>

        <div class="d-flex justify-content-beteen">
            <a class="efecto-nav github mx-2" href="https://github.com/luiisdelar" target="_blank" alt="GitHub">
                <i class="github fab fa-github-alt fa-2x"></i>
            </a>
            
            <a class="efecto-nav instagram mx-2" href="https://instagram.com/luiisdelar" target="_blank">
                <i class="instagram fab fa-instagram fa-2x"></i>
            </a>
            
            <a class="efecto-nav telegram mx-2" href="https://t.me/luiisdelar" target="_blank">
                <i class="telegram fab fa-telegram-plane fa-2x"></i>
            </a>

            <a class="efecto-nav mail mx-2" href="contacto.php">
                <i class="mail fas fa-at fa-2x"></i>
            </a>
        </div>
        <div></div>
	</nav>

<div class="container-fluid bg-white">
    <div class="row justify-content-center mt-5 pt-5">
        <div class="col-7 col-md-6">
            <h1 class="text-center display-4">Contacto</h1>
            <hr class="bg-info">
            
            <div class="alert alert-success d-none" id="mensajeExito">
                Mensaje enviado con exito
            </div>
            
            <div class="alert alert-danger d-none" id="mensajeError"></div>

            <form id="formulario">
                <div class="row form-group">
                    <label for="nombre" class="col-form-label col-md-4">Nombre:</label>
                    <div class="col-md-8">
                        <input required type="text" name="nombre" class="form-control" placeholder="Nombre" id="nombre">        
                    </div>
                </div>

                <div class="row form-group">
                    <label for="email" class="col-form-label col-md-4">E-mail:</label>
                    <div class="col-md-8">
                        <input type="email" name="email" class="form-control" id="email" placeholder="E-mail">        
                    </div>
                </div>

                <div class="row form-group">
                    <label for="mensaje" class="col-form-label col-md-4">Mensaje:</label>
                    <div class="col-md-8">
                        <textarea placeholder="Cuerpo del mensaje" class="form-control" required name="mensaje" id="mensaje" rows="3"></textarea>
                    </div>
                </div>
                <button type="submit" class="btn btn-info">Enviar</button>
                
            </form>    
        </div>
    </div>
    
    
</div>

<?php 
    require("templates/footer.php")
?>