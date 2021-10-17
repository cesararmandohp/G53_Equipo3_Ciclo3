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
<title>Ventas</title>
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
			<a class="navbar-brand links" href="listausuarios.jsp"> <i
				class="fas fa-users"></i> Usuarios
			</a> <a class="navbar-brand links" href="listaclientes.jsp"> <i
				class="fas fa-address-book"></i> Clientes
			</a> <a class="navbar-brand links" href="listaproveedores.jsp"> <i
				class="fas fa-truck"></i> Proveedores
			</a> <a class="navbar-brand links" href="insertarproducto.jsp"> <i
				class="fas fa-apple-alt"></i> Productos
			</a> <a class="navbar-brand links" href="ventas.jsp"> <i
				class="fas fa-money-check-alt"></i> Ventas
			</a> <a class="navbar-brand links" href="reportes.jsp"> <i
				class="fas fa-clipboard-list"></i> Reportes
			</a>
		</div>
	</nav>
		<center><h1 class= "titulomoduloBuscar"> </i> Reportes</h1></center>

	<center>
<section>
</center>
</section>	
<br>
	<br>

</div>
</center>
</section>
<center>
	<div style="padding-left: 5px">

<div class="containerRegistroReportes">
	<h5>
		<i class="fas fa-clipboard"></i> Reportes
	</h5>
	<br>
	<section>
<div class="nuevo-vertical">

<div class="btn-group">
<li>
 <ul> <a href="listausuarios.jsp" class="btn btn-primary active" style="width: 15rem; background-color: #453b3b" aria-current="page"><i class="fas fa-table"></i>  Listado de usuarios</a></ul>	
 <button type="button" class="btn btn-success" onclick="loadusuarios()" id="usuariosinfo"> Generar</button>
 <br>
 <br>
 <ul> <a href="listaclientes.jsp" class="btn btn-primary active" style="width: 15rem; background-color: #453b3b" aria-current="page"><i class="fas fa-male"></i>  Listado de clientes</a></ul>
 <button type="button" class="btn btn-success" onclick="loadclientes()" id="clientesinfo"> Generar</button>
 <br>
 <br>
 <ul> <a href="listaclientes.jsp" class="btn btn-primary active" style="width: 15rem; background-color: #453b3b" aria-current="page"><i class="fas fa-shopping-cart"></i>  Ventas por cliente</a></ul>
 
</li>
</div>

<script>
	var baseurl = "http://localhost:8080/listarclientes";
	function loadclientes() {
		var xmlhttp = new XMLHttpRequest();
		xmlhttp.open("GET", baseurl, true);
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState === 4 && xmlhttp.status === 200) {
				var clientes = JSON.parse(xmlhttp.responseText);
				var tbltop = "<table class='table table-dark table-striped'><tr><th>Cedula</th><th>Dirección</th><th>Email</th><th>Nombre</th><th>Teléfono</th></tr>";
				var main = "";
				for (i = 0; i < clientes.length; i++) {
					main += "<tr><td>" + clientes[i].cedula_cliente
					+ "</td><td>" + clientes[i].direccion_cliente
					+ "</td><td>" + clientes[i].email_cliente
					+ "</td><td>" + clientes[i].nombre_cliente + "</td><td>"
					+ clientes[i].telefono_cliente + "</td></tr>";
		}
		var tblbottom = "</table>";
		var tbl = tbltop + main + tblbottom;
		document.getElementById("clientesinfo").innerHTML = tbl;
	}
};
xmlhttp.send();
}

	var baseUrl = "http://localhost:8080/listarusuarios";
	function loadusuarios() {
		var xmlhttp = new XMLHttpRequest();
		xmlhttp.open("GET", baseUrl, true);
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState === 4 && xmlhttp.status === 200) {
				var usuarios = JSON.parse(xmlhttp.responseText);
				var tbltop = "<table class='table table-dark table-striped'><tr><th>Cedula</th><th>Email</th><th>Nombre</th><th>Password</th><th>Usuario</th></tr>";
				var main = "";
				for (i = 0; i < usuarios.length; i++) {
					main += "<tr><td>" + usuarios[i].cedula_usuario
							+ "</td><td>" + usuarios[i].email_usuario
							+ "</td><td>" + usuarios[i].nombre_usuario
							+ "</td><td>" + usuarios[i].password + "</td><td>"
							+ usuarios[i].usuario + "</td></tr>";
				}
				var tblbottom = "</table>";
				var tbl = tbltop + main + tblbottom;
				document.getElementById("usuariosinfo").innerHTML = tbl;
			}
		};
		xmlhttp.send();
	}
</script>


</body>
</html> tml>