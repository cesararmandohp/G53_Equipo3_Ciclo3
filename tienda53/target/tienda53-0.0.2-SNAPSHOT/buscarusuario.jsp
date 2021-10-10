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
<title>Buscando usuario</title>
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
		<center><h1 class= "titulomoduloBuscar"> </i> Módulo buscar usuario</h1></center>
<br>
	<br>
	<center>
	<div class="badge bg-primary text-wrap" style="width: 60rem;" ><i class="fas fa-cogs"></i> Funciones
</div>
<section>
<div class="nuevo">
<div class="btn-group">
  <a href="listausuarios.jsp" class="btn btn-primary active" style="width: 15rem; background-color: #453b3b" aria-current="page"><i class="fas fa-table"></i> Lista de usuarios</a>
  <a href="insertarusuario.jsp" class="btn btn-primary active" style="width: 15rem; background-color: #453b3b" aria-current="page"><i class="fas fa-plus-circle"></i> Agregar usuarios</a>
  <a href="actualizarusuario.jsp" class="btn btn-primary active" style="width: 15rem; background-color: #453b3b" aria-current="page"><i class="fas fa-pen-alt"></i> Actualizar usuarios</a>
  <a href="eliminarusuario.jsp" class="btn btn-primary active" style="width: 15rem; background-color: #453b3b" aria-current="page"><i class="fas fa-trash"></i> Eliminar usuario</a>
</div>

</div>
</center>
</section>	
<br>
	<br>
</div>
</center>
</section>
<center>
	<div style="padding-left: 5px">

		<div class="containerBuscarUsuario">
		<h4>
			<i class="fas fa-search"></i> Búsqueda de usuarios
		</h4>
		<br>


			<form id="form1">
					<div class="input-group mb-3">
					<span class="input-group-text" id="basic-addon4"><b>Usuario a buscar</b>  </span> <input
						type="text" class="form-control"
						
						placeholder="Inserte username aquí..."
						aria-describedby="basic-addon4" required id="usersearch" >
				</div>
<br>
				<div class="input-group mb-3">
					<span class="input-group-text" id="basic-addon1">Cédula</span> <input
						type="text" class="form-control"
						aria-describedby="basic-addon1" required id="cedula_usuario" disabled="disabled">
				</div>

				<div class="input-group mb-3">
					<span class="input-group-text" id="basic-addon2">Email</span> <input
						type="text" class="form-control"
						aria-describedby="basic-addon2" required id="email_usuario" disabled="disabled">
				</div>

				<div class="input-group mb-3">
					<span class="input-group-text" id="basic-addon3">Nombre completo</span>
					<input type="text" class="form-control"
						aria-describedby="basic-addon3" required id="nombre_usuario"  disabled="disabled">
				</div>

				<div class="input-group mb-3">
					<span class="input-group-text" id="basic-addon4">Usuario</span> <input
						type="text" class="form-control"
						aria-describedby="basic-addon4" required id="user"  disabled="disabled">
				</div>

				<div class="input-group mb-3">
					<span class="input-group-text" id="basic-addon5">Contraseña</span> <input
						type="text" class="form-control"
						aria-describedby="basic-addon5" required id="password"  disabled="disabled">
				</div>





			</form>

			<button type="button" class="btn btn-success" onclick="enviar()">
				<i class="fas fa-check"></i> Buscar usuario
			</button>

		</div>

	</div>
	<br>
	
				<div id="error" class="alert alert-danger visually-hidden"
					role="alert">Error al buscar el usuario,  el usuario no existe</div>
					
			<div id="correcto" class="alert alert-success visually-hidden"
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
		var getUrl = window.location;
		var baseUrl = getUrl.protocol + "//" + getUrl.host + "/" + getUrl.pathname.split('/')[1];
		
		var req = new XMLHttpRequest();
		var coincidencia = false;
		var user=   document.getElementById("usersearch").value;
		req.open('GET', baseUrl+'/consultarusuario?usuario='+user, false);
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

		document.getElementById("cedula_usuario").value = usuario[0].cedula_usuario;
		document.getElementById("email_usuario").value = usuario[0].email_usuario;
		document.getElementById("nombre_usuario").value = usuario[0].nombre_usuario;
		document.getElementById("password").value = usuario[0].password;
		document.getElementById("user").value = usuario[0].usuario;
		
		document.getElementById("usersearch").value = "";
	

	} else {
		var element = document.getElementById("error");
		element.classList.remove("visually-hidden");
		var element2 = document.getElementById("correcto");
		element2.classList.add("visually-hidden");
		document.getElementById("cedula_usuario").value = "";
		document.getElementById("email_usuario").value = "";
		document.getElementById("nombre_usuario").value = "";
		document.getElementById("password").value = "";
		document.getElementById("user").value = "";
	}
}
</script>

</body>
</html>