<script type="text/javascript" src="bootstrap4.1/js/all.js"></script>
<script type="text/javascript" src="bootstrap4.1/js/jquery3.3.1.js"></script>
<script type="text/javascript" src="bootstrap4.1/js/formulario.js"></script>

<script>
    $(window).scroll(function(){
        if($('#menu').offset().top > 86 ){
            $('#menu').addClass('bg-primary');
        }else{
            $('#menu').removeClass('bg-primary');
        }
    });
</script>

</body>
</html>