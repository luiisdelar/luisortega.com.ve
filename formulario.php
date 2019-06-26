<?php
    $error='';
    $nom=$_POST['nombre'];
    $email=$_POST['email'];
    $msg=$_POST['mensaje'];

    // validando nombre
    if(empty($_POST["nombre"])){
        $error='Ingresa un nombre.<br>';
    }else{
        $nom=filter_var($nom,FILTER_SANITIZE_STRING);
        $nom=trim($nom);
        if($nom==''){
            $error .= 'El nombre no puede estar vacio.<br>';
        }
    }

    //validando email
    if(empty($_POST["email"])){
        $error .= 'Ingresa un email.<br>';
    }else{
        if(!filter_var($email,FILTER_VALIDATE_EMAIL)){
            $error .= 'Ingresa un email correcto.<br>';
        }else{
            $email=filter_var($email,FILTER_SANITIZE_EMAIL);
        }
    }

    //validando mensaje
    if(empty($_POST['mensaje'])){
        $error .= 'Ingresa un mensaje.<br>';
    }else{
        $msg=filter_var($msg,FILTER_SANITIZE_STRING);
        $msg=trim($msg);
        if($msg==''){
            $error .= 'El mensaje no puede estar vacio.<br>';
        }
    }

    //cuerpo del mensaje 
    $cuerpo='Nombre: ' .$nom. '<br>';
    $cuerpo='E-mail: '.$email.'<br>';
    $cuerpo='Mensaje: '.$msg.'<br>';

    //direccion
    $destinatario='luisortegadlr@gmail.com';
    $asunto='Correo desde www.luisortega.com.ve';

    //envio de correo 
    if($error==''){
        $success=mail($destinatario,$asunto,$cuerpo,'de: '.$email);
    }else{
        echo $error;
    }

?>