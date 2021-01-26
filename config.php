<?php

    session_start();
    $_SESSION['lang'] = "en";
    
    if (isset($_GET['lang']) && $_GET['lang'] == "es") {
        $_SESSION['lang'] = "es";
    }
    
    require_once "lang/" . $_SESSION['lang'] . ".php";

?>