$("#formulario").submit(function(event){
    event.preventDefault();//almacena los datos sin refrescar la pagina 
    enviar();
})

function enviar(){
    var datos = $("#formulario").serialize();
    $.ajax({
        type: "post",
        url: "formulario.php",
        data: datos,
        success: function(resultado){
            if(resultado=="exito"){
                correcto();
            }else{
                phperror(resultado);
            }
        }
    })
}

function correcto(){
    $("#mensajeExito").removeClass("d-none"); 
    $("#mensajeError").addClass("d-none");
}

function phperror(resultado){
    $("#mensajeError").removeClass("d-none");
    $("#mensajeError").html(resultado);
}