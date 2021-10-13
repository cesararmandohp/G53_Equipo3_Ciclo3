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
			</a> <a class="navbar-brand links" href="listausuarios.jsp"> <i
				class="fas fa-money-check-alt"></i> Ventas
			</a> <a class="navbar-brand links" href="listausuarios.jsp"> <i
				class="fas fa-clipboard-list"></i> Reportes
			</a>
		</div>
	</nav>
		<center><h1 class= "titulomoduloBuscar"> </i> Módulo ventas</h1></center>

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

<div class="containerRegistroVentas">
	<h5>
		<i class="fas fa-search"></i> Registro de Cliente
	</h5>
	<br>
	<form id="form1">
	<div class="input-group mb-3">
		<span class="input-group-text" id="basic-addon4">Cédula del cliente</span> <input
			type="text" class="form-control"
			placeholder="Ingrese número de cédula del cliente..."
			aria-describedby="basic-addon4" required id="cedula" >
			<button type="button" class="btn btn-success" onclick="enviar()">
				<i class="fas fa-check"></i> Consultar
			</button>
	</div>

	<div class="input-group mb-3">
			<span class="input-group-text" id="basic-addon3">Nombre cliente</span>
			<input type="text" class="form-control"
			aria-describedby="basic-addon3" required id="nombre_cliente"  disabled="disabled">
			
	</div>
	
	<h5>
		<i class="fas fa-search"></i> Registro de Usuario
	</h5>
	<br>
	<form id="form2">
					<div class="input-group mb-3">
					<span class="input-group-text" id="basic-addon4"><b>Usuario a buscar</b>  </span> <input
						type="text" class="form-control"
						
						placeholder="Inserte usuario aquí..."
						aria-describedby="basic-addon4" required id="usersearch" >
						<button type="button" class="btn btn-success" onclick="enviar_usuario()">
				<i class="fas fa-check"></i> Consultar
			</button>
				</div>

	<div class="input-group mb-3">
			<span class="input-group-text" id="basic-addon3">Cédula usuario</span>
			<input type="text" class="form-control"
			aria-describedby="basic-addon3" required id="cedula_usuario"  disabled="disabled">
			
	</div>
	
	
		
	<h5>
		<i class="fas fa-search"></i> Registro de productos
	</h5>
	<br>

	<div class="input-group mb-3">
		<span class="input-group-text" id="basic-addon4">Cod. Producto1</span> <input
			type="text" class="form-control"
			placeholder="Ingrese código"
			aria-describedby="basic-addon4" required id="code" >
			
			<span class="input-group-text" id="basic-addon4">Cantidad de productos</span> <input
			type="number" class="form-control"
			placeholder="Ingrese cantidad"
			aria-describedby="basic-addon4" required id="cantidad_1" >
			
			<button type="button" class="btn btn-success" onclick="enviar2()">
				<i class="fas fa-check"></i> Consultar
			</button>		
					
	</div>
	
	
		<div class="input-group mb-3">
		
<span class="input-group-text" id="basic-addon3">Nombre producto 1</span>
			<input type="text" class="form-control"
			aria-describedby="basic-addon3" required id="nombre_producto"  disabled="disabled">	
						
			<span class="input-group-text" id="basic-addon3">Valor total</span>
			<input type="text" class="form-control"
			aria-describedby="basic-addon3" required id="precio_venta"  disabled="disabled">	

	</div>	
	
	<div class="input-group mb-3">
		<span class="input-group-text" id="basic-addon4">Cod. Producto2</span> <input
			type="text" class="form-control"
			placeholder="Ingrese código"
			aria-describedby="basic-addon4" required id="code2" >
			<button type="button" class="btn btn-success" onclick="enviar3()">
				<i class="fas fa-check"></i> Consultar
			</button>		
					<span class="input-group-text" id="basic-addon3">Nombre producto2</span>
			<input type="text" class="form-control"
			aria-describedby="basic-addon3" required id="nombre_producto2"  disabled="disabled">
	</div>
		<div class="input-group mb-3">

		<span class="input-group-text" id="basic-addon4">Cantidad de productos</span> <input
			type="text" class="form-control"
			placeholder="Ingrese número"
			aria-describedby="basic-addon4" required id="cantidad" >
			<span class="input-group-text" id="basic-addon3">Valor total</span>
			<input type="text" class="form-control"
			aria-describedby="basic-addon3" required id="nombre_producto"  disabled="disabled">	

	</div>		
		<br>
	<div class="input-group mb-3">
		<span class="input-group-text" id="basic-addon4">Cod. Producto3</span> <input
			type="text" class="form-control"
			placeholder="Ingrese código"
			aria-describedby="basic-addon4" required id="code3" >
			<button type="button" class="btn btn-success" onclick="enviar4()">
				<i class="fas fa-check"></i> Consultar
			</button>		
					<span class="input-group-text" id="basic-addon3">Nombre producto3</span>
			<input type="text" class="form-control"
			aria-describedby="basic-addon3" required id="nombre_producto3"  disabled="disabled">
	</div>
		<div class="input-group mb-3">

		<span class="input-group-text" id="basic-addon4">Cantidad de productos</span> <input
			type="text" class="form-control"
			placeholder="Ingrese número"
			aria-describedby="basic-addon4" required id="cantidad" >
			<span class="input-group-text" id="basic-addon3">Valor total</span>
			<input type="text" class="form-control"
			aria-describedby="basic-addon3" required id="nombre_producto"  disabled="disabled">	

	</div>				

<h5>
		<i class="fas fa-search"></i> Datos venta
	</h5>
	<br>
		
	<div class="input-group mb-3">
	<span class="input-group-text" id="basic-addon3">Consecutivo</span>
	<input type="text" class="form-control"
	aria-describedby="basic-addon3" required id="consecutivo"  disabled="disabled">
	</div>
	
	<div class="input-group mb-3">
	<span class="input-group-text" id="basic-addon3">Total venta</span>
	<input type="text" class="form-control"
	aria-describedby="basic-addon3" required id="total_venta"  disabled="disabled">
	</div>
	
	
	<div class="input-group mb-3">
	<span class="input-group-text" id="basic-addon3">Total IVA</span>
	<input type="text" class="form-control"
	aria-describedby="basic-addon3" required id="total_iva"  disabled="disabled">
	</div>
	
	<div class="input-group mb-3">
	<span class="input-group-text" id="basic-addon3">Total con IVA</span>
	<input type="text" class="form-control"
	aria-describedby="basic-addon3" required id="totalconiva"  disabled="disabled">
	</div>
	
	<br>
	<button type="button" class="btn btn-success" onclick="registrar_todo()">
				<i class="fas fa-receipt"></i> Registrar venta
			</button>
			<button type="button" class="btn btn-success" onclick="registrar_detalle()">
				<i class="fas fa-receipt"></i> Registrar detalle
			</button>		
</div>
	
	<center>
<div class="ajusteventana">
<div id="error" class="alert alert-danger visually-hidden"
					role="alert">Error al buscar el cliente,  el cliente no existe</div>
					
<div id="correcto" class="alert alert-success visually-hidden"
				role="alert">Cliente encontrado con éxito</div>
				
<div id="errorproducto" class="alert alert-danger visually-hidden"
					role="alert">Error al buscar el producto,  el producto no existe</div>
					
<div id="correctoproducto" class="alert alert-success visually-hidden"
				role="alert">Producto encontrado con éxito</div>				
				
<div id="errorusuario" class="alert alert-danger visually-hidden"
			role="alert">Error al buscar el usuario,  el usuario no existe</div>
					
<div id="correctousuario" class="alert alert-success visually-hidden"
			role="alert">Usuario encontrado con éxito</div>
				
				
</center>	
	<nav class="navbar fixed-bottom navbar-dark bg-dark">
		<div class="row justify-content-between">
				<a class="navbar-brand links" href="#">&copy; 2021 Tienda Virtual Grupo 53 Equipo 3 </a>
			</div>
		</div>
	</nav>
	
	<script>
	function enviar() {

		
		var req = new XMLHttpRequest();
		var coincidencia = false;
		var cedula=   document.getElementById("cedula").value;
		req.open('GET', 'http://localhost:8080/consultarcliente?cedula_cliente='+cedula, false);
		req.send(null);
		var usuario = null;
		if (req.status == 200)
			usuario = JSON.parse(req.responseText);
		console.log(JSON.parse(req.responseText));
		
	

		var element = document.getElementById("error");
		element.classList.add("visually-hidden");
		var element2 = document.getElementById("correcto");
		element2.classList.remove("visually-hidden");
		
		console.log(usuario.toString());
		
	if (usuario.toString()!=""){

		document.getElementById("nombre_cliente").value = usuario[0].nombre_cliente;

		document.getElementById("usersearch").value = "";
	

	} else {
		var element = document.getElementById("error");
		element.classList.remove("visually-hidden");
		var element2 = document.getElementById("correcto");
		element2.classList.add("visually-hidden");
		document.getElementById("nombre_cliente").value = "";

	}
}
	
	function enviar2() {

		
		var req = new XMLHttpRequest();
		var coincidencia = false;
		var code=   document.getElementById("code").value;
		req.open('GET', 'http://localhost:8080/consultarproducto?code='+code, false);
		req.send(null);
		var usuario = null;
		if (req.status == 200)
			usuario = JSON.parse(req.responseText);
		console.log(JSON.parse(req.responseText));
		
		var cantidad= (document.getElementById("cantidad").value);

		var element = document.getElementById("errorproducto");
		element.classList.add("visually-hidden");
		var element2 = document.getElementById("correctoproducto");
		element2.classList.remove("visually-hidden");
		
		console.log(usuario.toString());
		
	if (usuario.toString()!=""){
		document.getElementById("nombre_producto").value = usuario[0].nombre_producto;
		document.getElementById("precio_venta").value = usuario[0].precio_venta;
		document.getElementById("usersearch").value = "";
	

	} else {
		var element = document.getElementById("errorproducto");
		element.classList.remove("visually-hidden");
		var element2 = document.getElementById("correctoproducto");
		element2.classList.add("visually-hidden");
		document.getElementById("nombre_producto").value = "";
		document.getElementById("precio_venta").value = "";
	}
}
	
	function enviar3() {

		
		var req = new XMLHttpRequest();
		var coincidencia = false;
		var code2=   document.getElementById("code2").value;
		req.open('GET', 'http://localhost:8080/consultarproducto?code='+code2, false);
		req.send(null);
		var usuario = null;
		if (req.status == 200)
			usuario = JSON.parse(req.responseText);
		console.log(JSON.parse(req.responseText));
		
	

		var element = document.getElementById("errorproducto");
		element.classList.add("visually-hidden");
		var element2 = document.getElementById("correctoproducto");
		element2.classList.remove("visually-hidden");
		
		console.log(usuario.toString());
		
	if (usuario.toString()!=""){

		document.getElementById("nombre_producto2").value = usuario[0].nombre_producto;

		document.getElementById("usersearch").value = "";
	

	} else {
		var element = document.getElementById("errorproducto");
		element.classList.remove("visually-hidden");
		var element2 = document.getElementById("correctoproducto");
		element2.classList.add("visually-hidden");
		document.getElementById("nombre_producto2").value = "";

	}
}
	
	function enviar4() {

		
		var req = new XMLHttpRequest();
		var coincidencia = false;
		var code3=   document.getElementById("code3").value;
		req.open('GET', 'http://localhost:8080/consultarproducto?code='+code3, false);
		req.send(null);
		var usuario = null;
		if (req.status == 200)
			usuario = JSON.parse(req.responseText);
		console.log(JSON.parse(req.responseText));
		
	

		var element = document.getElementById("errorproducto");
		element.classList.add("visually-hidden");
		var element2 = document.getElementById("correctoproducto");
		element2.classList.remove("visually-hidden");
		
		console.log(usuario.toString());
		
	if (usuario.toString()!=""){

		document.getElementById("nombre_producto3").value = usuario[0].nombre_producto;

		document.getElementById("usersearch").value = "";
	

	} else {
		var element = document.getElementById("errorproducto");
		element.classList.remove("visually-hidden");
		var element2 = document.getElementById("correctoproducto");
		element2.classList.add("visually-hidden");
		document.getElementById("nombre_producto3").value = "";

	}
}


	function contador() {
		
		var req = new XMLHttpRequest();
		var coincidencia = false;
		req.open('GET', 'http://localhost:8080/contadorventa', false);
		req.send(null);
		var contador = 0;
		if (req.status == 200)
		contador = JSON.parse(req.responseText);
		console.log(JSON.parse(req.responseText));
		document.getElementById("consecutivo").value=contador;
	}


	function enviar_usuario() {
		
		var req = new XMLHttpRequest();
		var coincidencia = false;
		var user=   document.getElementById("usersearch").value;
		req.open('GET', 'http://localhost:8080/consultarusuario?usuario='+user, false);
		req.send(null);
		var usuario = null;
		if (req.status == 200)
			usuario = JSON.parse(req.responseText);
		console.log(JSON.parse(req.responseText));
		
	

		var element = document.getElementById("errorusuario");
		element.classList.add("visually-hidden");
		var element2 = document.getElementById("correctousuario");
		element2.classList.remove("visually-hidden");
		
		console.log(usuario.toString());
		
	if (usuario.toString()!=""){

		document.getElementById("cedula_usuario").value = usuario[0].cedula_usuario;
		document.getElementById("usersearch").value = "";
	

	} else {
		var element = document.getElementById("errorusuario");
		element.classList.remove("visually-hidden");
		var element2 = document.getElementById("correctousuario");
		element2.classList.add("visually-hidden");
		document.getElementById("cedula_usuario").value = "";

	}
}

	
	function calcular(){
		var prod1= parseInt(document.getElementById("precio_venta").value);
        var total_venta=prod1;
        var iva=0.19;
        var total_iva=total_venta*iva;
        var totalconiva=total_venta+total_iva;
        document.getElementById("total_venta").value=total_venta;
        document.getElementById("total_iva").value=total_iva;
        document.getElementById("totalconiva").value=totalconiva;
	}
	
	
	
	function registrar_venta(){
		
			var formData = new FormData();
 			formData.append("cedula_cliente", document.getElementById("cedula").value);
 			formData.append("cedula_usuario", document.getElementById("cedula_usuario").value);
 			formData.append("ivaventa", document.getElementById("total_iva").value);
 			formData.append("total_venta",document.getElementById("total_venta").value);
 			formData.append("valor_venta",document.getElementById("totalconiva").value);
 			var xhr = new XMLHttpRequest();
 			xhr.open("POST", "http://localhost:8080/registrarventa");
 			xhr.send(formData);
		
	}
	
	function registrar_detalle() {

		var formData = new FormData();
		formData.append("cantidad_producto", document
				.getElementById("cantidad_1").value);
		formData.append("codigo_producto", document
				.getElementById("code").value);
		formData.append("codigo_venta", document
				.getElementById("consecutivo").value);
		formData.append("valoriva", document
				.getElementById("total_iva").value);
		formData.append("valor_total", document
				.getElementById("total_venta").value);
		formData.append("valor_venta", document
				.getElementById("totalconiva").value);
		var xhr = new XMLHttpRequest();
		xhr.open("POST", "http://localhost:8080/registrardetalleventa");
		xhr.send(formData);

	}	
	
	
	function registrar_todo(){
		contador();
		calcular();
		registrar_venta();
		registrar_detalle();
		
	}

</script>

</body>
</html>