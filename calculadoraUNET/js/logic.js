$('.efect-1').click(function(){
	
});

function aceptar() {
	
	var select = parseInt(document.getElementById('seleccion').value);

	$('#container-2').remove();
	$('.row-1').empty();

	for (var i = 0; i < select ; i++) {
		
		$('.row-1').append(
			
			$('<div>',{
				'class': 'col-12'
			}).append(
				$('<h3>',{
					'text': 'Parcial '+(i+1),
					'class': 'title'
				})
			),
			$('<div>',{
				'class': 'form-group col-lg-6'
			}).append(
				$('<div>',{
					'class': 'input-group' 
				}).append(
					$('<span>',{
					'class': 'input-group-text',
					'text': 'Nota: 1-100',
					'id': 'basic-addon3'
					}),
					$('<input>',{
							'id': 'nota'+(i+1),
							'class': 'form-control',
							'aria-describedby': 'basic-addon3',
							'type': 'number'
					})
				)
			),
			$('<div>',{
				'class': 'form-group col-lg-6',
			}).append(
				$('<div>',{
					'class': 'input-group' 
				}).append(
					$('<span>',{
						'class': 'input-group-text',
						'text': 'Porcentaje: %'
					}),
					$('<input>',{
							'id': 'porc'+(i+1),
							'class': 'form-control',
							'aria-describedby': 'basic-addon3',
							'type': 'number'
					})
				)
			)
		);
	
	}

		$('.row-1').append(
			$('<div>',{
				'class': 'col-8 form-group'
			}).append(
				$('<button>',{
					'class': 'form-control btn btn-primary',
					'onclick': 'calculos('+select+')',
					'text': 'Calcular'	
				})
			),
			$('<div>',{
				'class': 'col-8 form-group',
			}).append(
				$('<button>',{
					'class': 'form-control btn btn-primary',
					'onclick':'document.location="index.html"',
					'text': 'Volver'
				})
			)
		);
		
}

function calculos(parciales) {
	var contNotas = 0, porcentajes = 0, notaFinal = 0;

	for (var i = 0; i < parciales; i++) {	
		contNotas = parseInt(document.getElementById('nota'+(i+1)).value);
		porcentajes += parseInt(document.getElementById('porc'+(i+1)).value);
		if (contNotas > 100 || contNotas < 0) {
			alert("Error en notas");
			aceptar();
		}
	}

	if (porcentajes != 100) {
		alert("Error en suma de porcentajes");
		aceptar();
	}

	//			|||||||||
	///Calculos VVVVVVVVV

	for (var i = 0; i < parciales; i++) {
		notaFinal += (parseInt(document.getElementById('porc'+(i+1)).value)*convert(parseInt(document.getElementById('nota'+(i+1)).value)))/100;
	}

	$('.nota-final').text('Nota Final: '+notaFinal);
	$('#modal-notes').modal('show');

	// alert("Su nota definitiva acumulada es "+notaFinal);
}	

function convert(i){
    var retorno=0.0;
    
    if(i==0){ retorno=0; }     
    if(i!=0 && i<8){ retorno=1.0; }
    if(i==8){ retorno=1.1; }
    if(i==9){ retorno=1.2; }
    if(i==10){ retorno=1.3; }
    if(i==11){ retorno=1.4; }
    if(i==12){ retorno=1.5; }
    if(i==13){ retorno=1.6; }
    if(i==14){ retorno=1.7; }
    if(i==15){ retorno=1.8; }
    if(i==16){ retorno=1.9; }
    if(i==17 || i==18){ retorno=2.0; }
    if(i==19){ retorno=2.1; }
    if(i==20){ retorno=2.2; }
    if(i==21){ retorno=2.3; }
    if(i==22){ retorno=2.4; }
    if(i==23){ retorno=2.5; }
    if(i==24){ retorno=2.6; }
    if(i==25){ retorno=2.7; }
    if(i==26){ retorno=2.8; }
    if(i==27){ retorno=2.9; }
    if(i==28 || i==29){ retorno=3.0; }
    if(i==30){ retorno=3.1; }
    if(i==31){ retorno=3.2; }
    if(i==32){ retorno=3.3; }
    if(i==33){ retorno=3.4; }
    if(i==34){ retorno=3.5; }
    if(i==35){ retorno=3.6; }
    if(i==36){ retorno=3.7; }
    if(i==37){ retorno=3.8; }
    if(i==38){ retorno=3.9; }
    if(i==39||i==40){ retorno=4.0; }
    if(i==41){ retorno=4.1; }
    if(i==42){ retorno=4.2; }
    if(i==43){ retorno=4.3; }
    if(i==44){ retorno=4.4; }
    if(i==45){ retorno=4.5; }
    if(i==46){ retorno=4.6; }
    if(i==47){ retorno=4.7; }
    if(i==48||i==49){ retorno=4.8; }
    if(i==50){ retorno=4.9; }
    if(i==51){ retorno=5.0; }
    if(i==52){ retorno=5.1; }
    if(i==53){ retorno=5.2; }
    if(i==54||i==55){ retorno=5.3; }
    if(i==56){ retorno=5.4; }
    if(i==57){ retorno=5.5; }
    if(i==58){ retorno=5.6; }
    if(i==59){ retorno=5.7; }
    if(i==60){ retorno=5.8; }
    if(i==61){ retorno=5.9; }
    if(i==62||i==63){ retorno=6.0; }
    if(i==64){ retorno=6.1; }
    if(i==65){ retorno=6.2; }
    if(i==66){ retorno=6.3; }
    if(i==67){ retorno=6.4; }
    if(i==68){ retorno=6.5; }
    if(i==69){ retorno=6.6; }
    if(i==70){ retorno=6.7; }
    if(i==71){ retorno=6.8; }
    if(i==72){ retorno=6.9; }
    if(i==73||i==74){ retorno=7.0; }
    if(i==75){ retorno=7.1; }
    if(i==76){ retorno=7.2; }
    if(i==77){ retorno=7.3; }
    if(i==78){ retorno=7.4; }
    if(i==79){ retorno=7.5; }
    if(i==80){ retorno=7.6; }
    if(i==81){ retorno=7.7; }
    if(i==82){ retorno=7.8; }
    if(i==83){ retorno=7.9; }
    if(i==84||i==85){ retorno=8.0; }
    if(i==86){ retorno=8.1; }
    if(i==87){ retorno=8.2; }
    if(i==88){ retorno=8.3; }
    if(i==89){ retorno=8.4; }
    if(i==90){ retorno=8.5; }
    if(i==91){ retorno=8.6; }
    if(i==92){ retorno=8.7; }
    if(i==93){ retorno=8.8; }
    if(i==94){ retorno=8.9; }
    if(i==95 ||i>95){ retorno=9.0; }
  
    return retorno;   

}
