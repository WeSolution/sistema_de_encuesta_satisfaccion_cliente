<?php
	header("Content-type: application/vnd.ms-excel; name='excel'");
	header("Content-Disposition: filename=Prenomina 1ra Junio 2017.xls");
	header("Pragma: no-cache");header("Expires: 0");
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Quejas</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!--Import Google Icon Font-->
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.99.0/css/materialize.min.css">
	<link rel="stylesheet" type="text/css" href="./style.css" />
</head>
<body>

	<div class="container" style="padding: 20px;">
		<!-- <div class="row">
			<form action="#" class="col s12" >
				<div class="card z-depth-5">
					<div class="card-content">
						<div class="row">
							<div class="col s12">
								<h5>Ingresa una fecha de inicio y una fecha de fin para buscar las quejas en un rango de fechas.</h5>
							</div>
						</div>
						<div class="row">
							<div class="input-field col s6">
							   	<input placeholder="Fecha de inicio" id="fechaInicio" name="fechaInicio" type="date" class="datepicker validate">
							</div>
							<div class="input-field col s6">
								<input placeholder="Fecha fin" id="fechaFin" name="fechaFin" type="date" class="datepicker validate">
							</div>
						</div>
					</div>
					<div class="card-action">
					  <div class="row">
					  	<div class="input-field col s6"></div>	
					  	<div class="input-field col s6">
							
						</div>
					  </div>
					</div>
				</div>
			</form>
		</div>-->

		<div class="fixed-action-btn toolbar">
			<a class="btn-floating btn-large red pulse">
			  <i class="large material-icons">mode_edit</i>
			</a>
			<ul>
			  <li class="waves-effect waves-light"><a href="#!"><i class="material-icons">insert_chart</i></a></li>
			  <!-- <li class="waves-effect waves-light"><a href="#!"><i class="material-icons">format_quote</i></a></li> -->
			  <li class="waves-effect waves-light"><a href="#!"><i class="material-icons">import_export</i></a></li>
			  <!-- <li class="waves-effect waves-light"><a href="#!"><i class="material-icons">attach_file</i></a></li> -->
			</ul>
		</div>

		<div class="row">
			<div class="col s12" >
				<div class="card z-depth-5">
					
					<div class="card-content">
						<div class="row">
							<div class="col s12">
								<div id="prel"></div>
								<h5 class="center">Aquí se muestra el total de evaluaciones realizadas a las sucursales que han implementado el sistema de encuesta</h5>
							</div>
						</div>
						<div class="row">
							<div class="col s12">
								<table class="highlight bordered striped centered" style="margin-bottom: 15px;">
									<thead>
									  <tr>
									  	  <th>SUCURSAL</th>
									      <th>BUENO</th>
									      <th>REGULAR</th>
									      <th>MALO</th>
									      <th>EN SUCURSAL</th>
									      <th>EN FACEBOOK</th>
									      <th>PERIFONEO</th>
									      <th>RADIO</th>
									  </tr>
									</thead>

									<tbody id="tbody"></tbody>
								</table>
							</div>
						</div>
					</div>
					
				</div>
				
			</div>
		</div>
	</div>

	
	
	<script src="https://code.jquery.com/jquery-3.2.1.js" integrity="sha256-DZAnKJ/6XZ9si04Hgrsxu/8s717jcIzLy3oi35EouyE=" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.99.0/js/materialize.min.js"></script>
	<script type="text/javascript">
		$('.datepicker').pickadate({
			selectMonths: true, // Creates a dropdown to control month
			selectYears: 15 // Creates a dropdown of 15 years to control year
		});
		$(document).ready(()=>{
			$.ajax({
				url:'controlador.php',
				data:{accion:'bucarSucursalesEncuestadas'},
				type:'GET',
				dataType:'json',
				beforeSend:()=>{
					$('#prel').html('<div class="progress"><div class="indeterminate"></div></div>');
				},
				success: json => {

					json.forEach(v => {
						$('#tbody').append('<tr><th>'+ v.sucursal +'</th><td id="tableBueno'+v.id_sucursal+'">0</td><td id="tableRegular'+v.id_sucursal+'">0</td><td id="tableMalo'+v.id_sucursal+'">0</td><td id="tableEnSucursal'+v.id_sucursal+'">0</td><td id="tableEnFacebook'+v.id_sucursal+'">0</td><td id="tableEnPerifoneo'+v.id_sucursal+'">0</td><td id="tableRadio'+v.id_sucursal+'">0</td></tr>');

						v.respuestas.forEach(v => {
							if(v.respuesta == 'En Sucursal') $('#tableEnSucursal'+v.id_sucursal).html(v.total);
							if(v.respuesta == 'Bueno') $('#tableBueno'+v.id_sucursal).html(v.total);
							if(v.respuesta == 'Regular') $('#tableRegular'+v.id_sucursal).html(v.total);
							if(v.respuesta == 'Malo') $('#tableMalo'+v.id_sucursal).html(v.total);
							if(v.respuesta == 'Facebook') $('#tableEnFacebook'+v.id_sucursal).html(v.total);
							if(v.respuesta == 'Perifoneo') $('#tableEnPerifoneo'+v.id_sucursal).html(v.total);
							if(v.respuesta == 'Radio') $('#tableRadio'+v.id_sucursal).html(v.total);
							console.log(v);	
						});
					});

				},
				error: (xhr, status) => console.log(xhr,status),
				complete:()=>{
					$('.progress').remove();	
				}
			});
		});
	</script>
</body>
</html>


