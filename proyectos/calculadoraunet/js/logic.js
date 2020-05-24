window.onload=function(){
	iniciar();
}

function check(e) {
    tecla = (document.all) ? e.keyCode : e.which;
    //Tecla de retroceso para borrar, siempre la permite
    if (tecla == 8 ) {
        return true;
    }
    // Patron de entrada, en este caso solo acepta numeros
    patron = /[0-9]/;
    tecla_final = String.fromCharCode(tecla);
    return patron.test(tecla_final);
}

function calcular(opcion){
	var select = parseInt(document.getElementById('seleccion-2').value);
	var select2 = parseInt(document.getElementById('seleccion').value);

	
	if(opcion==1){
		select2-=1;
		select=select2;
	}

	$('#container-2').empty();
	$('.row-1').empty();

 	if(opcion==1){
		$('.titulo').text('Cuanto me falta para pasar');
	}else{
		$('.titulo').text('Calculadora de notas');
	}

	for (var i = 0; i < select ; i++) {
		$('.row-1').append(
			$('<div>',{
				'class': 'col-12',
				'data-aos': 'zoom-in'
			}).append(
				$('<h3>',{
					'text': 'Parcial '+(i+1),
					'class': 'title'
				})
			),
			$('<div>',{
				'class': 'form-group col-lg-6',
				'data-aos': 'zoom-in'
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
							'type': 'number',
							'onkeypress': 'return check(event)'
					})
				)
			),
			$('<div>',{
				'class': 'form-group col-lg-6',
				'data-aos': 'zoom-in'
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
							'type': 'number',
							'onkeypress': 'return check(event)'
					})
				)
			)
		);
	
	}

	if(opcion==1){
		$('.row-1').append(
			$('<div>',{
				'class': 'col-12',
				'data-aos': 'zoom-in'
			}).append(
				$('<h3>',{
					'text': 'Parcial '+(select+1),
					'class': 'title'
				})
			),
			$('<div>',{
				'class': 'form-group col-lg-6',
				'data-aos': 'zoom-in'
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
							'id': 'nota'+(select+1),
							'class': 'form-control',
							'aria-describedby': 'basic-addon3',
							'type': 'number',
							'readonly': 'true'
					})
				)
			),
			$('<div>',{
				'class': 'form-group col-lg-6',
				'data-aos': 'zoom-in'
			}).append(
				$('<div>',{
					'class': 'input-group' 
				}).append(
					$('<span>',{
						'class': 'input-group-text',
						'text': 'Porcentaje: %'
					}),
					$('<input>',{
							'id': 'porc'+(select+1),
							'class': 'form-control',
							'aria-describedby': 'basic-addon3',
							'type': 'number',
							'readonly': 'true'
					})
				)
			)
		);
	
	}	

	
	if(opcion==0){
		$('.row-1').append(
			$('<div>',{
				'class': 'row ancho d-flex justify-content-center'
			}).append(
				$('<div>',{
					'class': 'col-md-4 col-sm-10 form-group'
				}).append(
					$('<button>',{
						'class': 'form-control btn btn-primary hover-person calcular',
						'onclick': 'calculos('+select+')',
						'text': 'Calcular'	
					})
				)
			)
		);
	}else{
		$('.row-1').append(
			$('<div>',{
				'class': 'row ancho d-flex justify-content-center'
			}).append(
				$('<div>',{
					'class': 'col-md-4 col-sm-10 form-group'
				}).append(
					$('<button>',{
						'class': 'form-control btn btn-primary hover-person calcular',
						'onclick': 'cuantoFalta('+select+')',
						'text': 'Calcular'	
					})
				)
			)
		);
	}

	$('.row-1').append(	
		$('<div>',{
			'class': 'row ancho d-flex justify-content-center'
		}).append(
			$('<div>',{
				'class': 'col-md-4 col-sm-10 form-group'
			}).append(
				$('<button>',{
					'class': 'form-control btn btn-primary hover-person calcular',
					'onclick': 'borrar('+select+')',
					'text': 'Borrar'	
				})
			)
		),
		$('<div>',{
			'class': 'row ancho d-flex justify-content-center'
		}).append(
			$('<div>',{
				'class': 'col-md-4 col-sm-10 form-group'
			}).append(
				$('<button>',{
					'class': 'form-control btn btn-primary hover-person',
					'onclick': 'iniciar()',
					'text': 'Volver'
				})
			)
		)
	);
		
}

function iniciar(){
	
	$('#container-1').empty();
	
	$('#container-1').append(
 		$('<h1>',{
 			'text': 'Cuanto me falta para pasar',
 			'class': 'text-center titulo',
 			'data-aos': 'fade-down'
		 }),
		$('<div>',{
			'class': 'row row-1'
		}) 
	);
	 
	$('.row-1').append(
		$('<div>', {
			'class': 'col-xl-4 col-md-6 col-sm-6 col-10',
			'data-aos': 'fade-right'
		}).append(
			$('<div>',{
				'class': 'form-group'
			}).append(
				$('<label>',{
					'id': 'label1',
					'text': 'Número de parciales:'
				}),
				$('<select>', {
					'class': 'form-control',
					'id': 'seleccion'
				}).append(
					$('<option>',{
						'text': '2'
					}),
					$('<option>',{
						'text': '3'
					}),
					$('<option>',{
						'text': '4'
					})
				)
			)
		),
		$('<div>',{
			'class': 'col-xl-4 col-md-6 col-sm-6 col-10 acomodar form-group efect-1',
			'data-aos': 'fade-left'
		}).append(
			$('<input>',{
				'type': 'button',
				'id': 'botonaceptar',
				'name': 'boton',
				'onclick': 'calcular(1)',
				'class': 'btn btn-primary form-control acomodar hover-person',
				'value': 'Calcular'
			})
		)
	
	);

 $('#container-2').append(
 	$('<h1>',{
 		'class': 'text-center mt-5',
		'text': 'Calculadora de notas',
		'data-aos': 'fade-down'
 	}),
 	$('<div>',{
 		'class': 'row row-1'
 	}).append(
 		$('<div>',{
 			'class': 'col-xl-4 col-md-6 col-sm-6 col-10',
 			'data-aos': 'fade-right'
 		}).append(
 			$('<div>',{
 				'class': 'form-group'
 			}).append(
 				$('<label>',{
 					'id': 'label1',
 					'text': 'Número de parciales:'
 				}),
 				$('<select>',{
 					'class': 'form-control',
 					'id': 'seleccion-2'		
 				}).append(
					$('<option>',{
						'text': '1'
					}),
 					$('<option>',{
 						'text': '2'
 					}),
 					$('<option>',{
 						'text': '3'
 					}),
 					$('<option>',{
 						'text': '4'
 					})
 				)
 			)
 		),
 		$('<div>',{
 			'class': 'col-xl-4 col-md-6 col-sm-6 col-10 acomodar form-group',
 			'data-aos': 'fade-left'
 		}).append(
 			$('<input>',{
 				'type': 'button',
 				'id': 'botonaceptar',
 				'name': 'boton',
 				'onclick': 'calcular(0)',
 				'class': 'btn btn-primary form-control acomodar hover-person',
 				'value': 'Calcular'
 			})
 		)
 	)
 );	
}

function calculos(parciales) {
	var contNotas = 0, porcentajes = 0, notaFinal = 0, band = false;

	for (var i = 0; i < parciales; i++) {	
		contNotas = parseInt(document.getElementById('nota'+(i+1)).value);
		porcentajes += parseInt(document.getElementById('porc'+(i+1)).value);		
	}
	$('#nota-final').addClass('text-center');
	if (contNotas > 100 || contNotas < 0) {
		$('#nota-final').text('Error en notas.');
		band=true;
	}
	if (porcentajes != 100) {
		$('#nota-final').text('Error en suma de porcentajes.');
		band=true;
	}
	//			|||||||||
	///Calculos VVVVVVVVV
	for (var i = 0; i < parciales; i++) {
		notaFinal += (parseInt(document.getElementById('porc'+(i+1)).value)*convert(parseInt(document.getElementById('nota'+(i+1)).value)))/100;
	}
	notaFinal = notaFinal.toFixed(2);
	$('#nota-final').removeClass();
	$('#nota-final').addClass('text-center');
	if (notaFinal >= 4.5 && !band){
		$('#nota-final').addClass('text-success');
		$('#nota-final').text('Nota Final: '+notaFinal);
	}
	if (notaFinal < 4.5 && !band ){
		$('#nota-final').addClass('text-danger');
		$('#nota-final').text('Nota Final: '+notaFinal);
	}
	$('#modal-notes').modal('show');
}	

function cuantoFalta(parciales) {
//cuantoFalta(3)
	//parciales += 1;
	var contNotas = 0, porcentajes = 0, notaFinal = 0, band = false, bariable = 0, x = 0;
//cuantoFalta(4)
	for (var i = 0; i < parciales; i++) {	
		contNotas = parseInt(document.getElementById('nota'+(i+1)).value);
		porcentajes += parseInt(document.getElementById('porc'+(i+1)).value);		
	}
	console.log(contNotas);
	if (contNotas > 100 || contNotas <= 0 || !contNotas) {
		$('#nota-final').addClass('text-center');
		$('#nota-final').text('Error en notas.');
		band=true;
	}
	if (porcentajes > 99 || porcentajes < 1 || !porcentajes ) {
		$('#nota-final').addClass('text-center');
		$('#nota-final').text('Error en suma de porcentajes.');
		band=true;
	}
	console.log(porcentajes);
	for (var i = 0; i < parciales ; i++) {
		notaFinal += (parseInt(document.getElementById('porc'+(i+1)).value)*convert(parseInt(document.getElementById('nota'+(i+1)).value)))/100;
	}
	
	if(notaFinal >= 4.50 && !band){
		$('#nota-final').removeClass();
		$('#nota-final').addClass('text-center');
		$('#nota-final').addClass('text-success');
		$('#nota-final').text('¡Ya tienes la materia aprobada con '+notaFinal+'!');
		band=true;
	}

	porcentajes=100-porcentajes;
	
	while(bariable < 4.50 && !band){
		bariable = porcentajes*convert(x)/100;		
		bariable += notaFinal;
		x++;
		if(x == 101){
			$('#nota-final').removeClass();
			$('#nota-final').addClass('text-center');
			$('#nota-final').addClass('text-danger');
			$('#nota-final').text('Estas fuera de escala para pasar la materia.');
			band=true;
		}
	}

	if(!band){
		$('#nota-final').removeClass();
		$('#nota-final').addClass('text-center');
		$('#nota-final').addClass('text');
		$('#nota-final').text('Debes sacar '+(x-1)+' para pasarla con '+bariable);
	}

	$('#modal-notes').modal('show');
}

function borrar(select){
	for (var i = 0; i < select ; i++) {
		$('#nota'+(i+1)).val('');
		$('#porc'+(i+1)).val('');
	}
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
    if(i==95 || i>95){ retorno=9.0; }
    return retorno;   
}
