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
            console.log(resultado);
            if(resultado==""){
                correcto(resultado);
            }else{
                phperror(resultado);
            }
        }
    })
}

function correcto(resultado){
    $("#mensajeExito").removeClass("d-none"); 
    $("#mensajeError").addClass("d-none");
    $("#mensajeExito").html("El mensaje ha sido enviado con exito");
}

function phperror(resultado){
    $("#mensajeError").removeClass("d-none");
    $("#mensajeError").html(resultado);
}