<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>


<!-- paquete de caracteres -->
<meta charset="utf-8">
<!-- Tamaño de la pantalla -->
<meta name="viewport" content="width=device-width">
<!-- titulo de la pestaña -->
<title>Lista de clientes</title>
<!-- bootstrap-->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">

<!-- font awesome -->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.15.4/css/all.css"
	integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm"
	crossorigin="anonymous">

<!-- Cargando mi hoja de estilo -->
<link href="style.css" rel="stylesheet" type="text/css" />


<script>
<!--var baseUrl = "http://localhost:8080/listardetalleclientes";-->

var getUrl = window.location;
var baseUrl = getUrl.protocol + "//" + getUrl.host + "/"+ getUrl.pathname.split('/')[1];	

function detalle_venta() {
	var xmlhttp = new XMLHttpRequest();
	xmlhttp.open("GET", baseUrl + "/listardetalleclientes" , true);
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState === 4 && xmlhttp.status === 200) {
			var venta = JSON.parse(xmlhttp.responseText);
			var tbltop = "<table class='table table-dark table-striped'><tr><th>Cédula Cliente</th><th>Nombre Cliente</th><th>Valor Total Ventas</th>";
			var main = "";
			for (i = 0; i < venta.length; i++) {
				main += "<tr><td>" + venta[i].cedula_cliente
						+ "</td><td>" + venta[i].nombre_cliente
						+ "</td><td>" + venta[i].valor_venta;
			}
			var tblbottom = "</table>";
			var tbl = tbltop + main + tblbottom;
			document.getElementById("detalle_venta").innerHTML = tbl;
		}
	};
	xmlhttp.send();
}

function sumvalor_ventas() {
	var req = new XMLHttpRequest();
	<!--req.open('GET', 'http://localhost:8080/sumatotalventas', false);-->
	req.open('GET', baseUrl + '/sumatotalventas', false);
	req.send(null);
	var cont = null;
	if (req.status == 200)
		cont = JSON.parse(req.responseText);
	console.log(cont.toString());
	document.getElementById("sumvalor_ventas").value = cont;
}



window.onload = function() {
detalle_venta();
sumvalor_ventas();
	}
</script>

</head>


<body>
	<!-- Navbar-->
	<nav class="navbar navbar-dark bg-dark">
		<div class="container-fluid">
			<a class="navbar-brand links" href="index.html"><i class="fas fa-store"></i></i> Bienvenid@ a la Tienda virtual</a>
		</div>
	</nav>

	<!-- Navbar modulos-->
	<nav class="navbar navbar-dark bg-primary">
		<div class="container">
			<a class="navbar-brand links" href="listausuarios.jsp">
			<i class="fas fa-users"></i> Usuarios</a> 
			<a class="navbar-brand links" href="listaclientes.jsp">
			<i class="fas fa-address-book"></i> Clientes</a>
			<a class="navbar-brand links" href="listaproveedores.jsp">
			<i class="fas fa-truck"></i> Proveedores</a>
			<a class="navbar-brand links" href="insertarproducto.jsp">
			<i class="fas fa-apple-alt"></i> Productos</a>
			<a class="navbar-brand links" href="insertarventas.jsp">
			<i class="fas fa-money-check-alt"></i> Ventas</a>
			<a class="navbar-brand links" href="reportes.jsp">
			<i class="fas fa-clipboard-list"></i> Reportes</a>
		</div>
	</nav>
	<center><h1 class= "titulomoduloLista"> </i> Módulo detalle de ventas</h1></center>

	<center>

<section>

</section>

	<!-- contenido  -->
	
	<div style="padding-left: 5px;">

	<div style="padding-left: 5px;">
	<div class="badge bg-primary text-wrap" style="width: 60rem;" ><i class="fas fa-list-ol"></i> Total de ventas por cliente</div>
	<br>
	<br>
			<div class="containerdetalleventas">
				<div class="row">
					<!--  Aqui es donde se autogenera la tabla basado en el script -->
					<div class="col align-self-center" id="detalle_venta">
					
					</div>
	
									<div class="row justify-content-end">
									<div class="col-xl-4 col-lg-3 col-md-7 col-sm-8">
										<div class="input-group input-group-sm mb-2">
											<span class="text-white" id="basic-addon1" >Total
												ventas <i class="fas fa-arrow-right"></i></span> 
												<input type="text" class="form-control text-white bg-dark"
												id="sumvalor_ventas" readonly="readonly">
										</div>
										
									</div>
								</div>
	
				</div>
			</div>
	
	</div>





	<nav class="navbar fixed-bottom navbar-dark bg-dark">
				<a class="navbar-brand links" href="#">
					&copy; 2021 Tienda Virtual Grupo 53 Equipo 3 </a>
			</div>
		</div>
	</nav>


</body>
</html>