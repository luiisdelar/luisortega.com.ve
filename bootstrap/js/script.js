$(document).ready(function(){
    $('.mobile-menu a').on('click', function() {
        $('.desktop-menu').toggle('slow');
    });

    // var breakpoint = 768;

    // $('a.efecto-nav').on('click', function() {
    //     if($(window).width <= breakpoint){
    //         $('.desktop-menu').hide('slow');
    //     }
        
    // });

    // $(window).resize(function(){
    //     if($(this).width() >= breakpoint){
    //         $('.desktop-menu').show();
    //     }else{
    //         $('.desktop-menu').hide();
    //     }
    // })
});