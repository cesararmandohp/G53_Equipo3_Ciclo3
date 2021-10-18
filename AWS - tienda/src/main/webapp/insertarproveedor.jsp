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
<title>Insertando proveedor</title>
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
			</a> <a class="navbar-brand links" href="insertarventas.jsp"> <i
				class="fas fa-money-check-alt"></i> Ventas
			</a> <a class="navbar-brand links" href="reportes.jsp"> <i
				class="fas fa-clipboard-list"></i> Reportes
			</a>
		</div>
	</nav>
		<center><h1 class= "titulomoduloinsertar"> </i> Módulo agregar proveedor</h1></center>
		<br>
		<br>

	<center>

	<div class="badge bg-primary text-wrap" style="width: 60rem;" ><i class="fas fa-cogs"></i> Funciones
</div>
<section>
<div class="nuevo">
<div class="btn-group">
  <a href="listaproveedores.jsp" class="btn btn-primary active" style="width: 15rem; background-color: #453b3b" aria-current="page"><i class="fas fa-table"></i> Ver proveedores</a>
  <a href="actualizarproveedor.jsp" class="btn btn-primary active" style="width: 15rem; background-color: #453b3b" aria-current="page"><i class="fas fa-pen-alt"></i> Actualizar proveedor</a>
  <a href="buscarproveedor.jsp" class="btn btn-primary active" style="width: 15rem; background-color: #453b3b" aria-current="page"><i class="fas fa-search"></i> Buscar proveedor</a>
  <a href="eliminarproveedor.jsp" class="btn btn-primary active" style="width: 15rem; background-color: #453b3b" aria-current="page"><i class="fas fa-trash"></i> Eliminar proveedor</a>
</div>

</div>

</section>

<center>
<br>
<br>	
<br>
	<div style="padding-left: 5px">
		<div class="containerInsertarUsuario">
		
		

<h3>
			<i class="fas fa-plus-circle"></i> Datos del nuevo proveedor
		</h3>
		<br>
			<form id="form1">
				<div class="input-group mb-3">
					<span class="input-group-text" id="basic-addon1">NIT proveedor</span> <input
						type="text" class="form-control"
						placeholder="Ingresar número de NIT"
						aria-describedby="basic-addon1" required id="nit_proveedor">
				</div>

				<div class="input-group mb-3">
					<span class="input-group-text" id="basic-addon2">Ciudad</span> <input
						type="text" class="form-control"
						placeholder="Ingrese ciudad del proveedor"
						aria-describedby="basic-addon2" required id="ciudad_proveedor">
				</div>

				<div class="input-group mb-3">
					<span class="input-group-text" id="basic-addon3">Dirección</span>
					<input type="text" class="form-control"
						placeholder="Ingrese dirección"
						aria-describedby="basic-addon3" required id="direccion_proveedor">
				</div>

				<div class="input-group mb-3">
					<span class="input-group-text" id="basic-addon4">Nombre proveedor</span> <input
						type="text" class="form-control"
						placeholder="Ingrese nombre del proveedor"
						aria-describedby="basic-addon4" required id="nombre_proveedor">
				</div>

				<div class="input-group mb-3">
					<span class="input-group-text" id="basic-addon5">Teléfono proveedor</span> <input
						type="text" class="form-control"
						placeholder="Ingrese teléfono del proveedor"
						aria-describedby="basic-addon5" required id="telefono_proveedor">
				</div>





			</form>

			<button type="button" class="btn btn-success" onclick="enviar()">
				<i class="fas fa-check"></i> Insertar nuevo proveedor
			</button>

		</div>
<br>
	</div>
	<center>
				<div id="error" class="alert alert-danger visually-hidden"
					role="alert">Error al crear el proveedor, verifique que no exista un proveedor con el NIT ingresado</div>
					
			<div id="correcto" class="alert alert-success visually-hidden"
				role="alert">Proveedor creado con éxito</div>
				
				</center>
	<nav class="navbar fixed-bottom navbar-dark bg-dark">
		<div class="row justify-content-between">
				<a class="navbar-brand links" href="#">&copy; 2021 Tienda Virtual Grupo 53 Equipo 3 </a>
			</div>
		</div>
	</nav>
	<script>

	var getUrl = window.location;
	var baseUrl = getUrl.protocol + "//" + getUrl.host + "/"+ getUrl.pathname.split('/')[1];	
		
	function enviar() {
				
			var y = document.getElementById("nit_proveedor").value;
			var req = new XMLHttpRequest();
			var coincidencia = false;
			<!--req.open('GET', 'http://localhost:8080/listarproveedores', false);-->
			req.open('GET', baseUrl + '/listarproveedores', false);
			req.send(null);
			var proveedores=null;
			if (req.status == 200)
				proveedores=JSON.parse(req.responseText);
			  	console.log(JSON.parse(req.responseText));
			  	
			for (i = 0; i < proveedores.length; i++) {
				console.log(proveedores[i].nit_proveedor);
								
				if (proveedores[i].nit_proveedor ==y ) {
					console.log(proveedores[i].nit_proveedor +" "+y);	
					coincidencia =true
					break;
				}
			}
			console.log(coincidencia);	
			
			if (coincidencia==false){
				var formData = new FormData();
	 			formData.append("nit_proveedor", document.getElementById("nit_proveedor").value);
	 			formData.append("ciudad_proveedor", document.getElementById("ciudad_proveedor").value);
	 			formData.append("direccion_proveedor", document.getElementById("direccion_proveedor").value);
	 			formData.append("nombre_proveedor",document.getElementById("nombre_proveedor").value);
	 			formData.append("telefono_proveedor",document.getElementById("telefono_proveedor").value);
	 			var xhr = new XMLHttpRequest();
	 			<!--xhr.open("POST", "http://localhost:8080/registrarproveedor");-->
	 			xhr.open("POST", baseUrl + "/registrarproveedor");
	 			
				var element = document.getElementById("error");
				element.classList.add("visually-hidden");
				var element2 = document.getElementById("correcto");
				element2.classList.remove("visually-hidden");
				
				document.getElementById("nit_proveedor").value = "";
				document.getElementById("ciudad_proveedor").value = "";
				document.getElementById("direccion_proveedor").value = "";
				document.getElementById("nombre_proveedor").value = "";
				document.getElementById("telefono_proveedor").value = "";
	 			xhr.send(formData);

			}else{
				var element = document.getElementById("error");
				element.classList.remove("visually-hidden");
				var element2 = document.getElementById("correcto");
				element2.classList.add("visually-hidden");
				document.getElementById("nit_proveedor").value = "";
				document.getElementById("ciudad_proveedor").value = "";
				document.getElementById("direccion_proveedor").value = "";
				document.getElementById("nombre_proveedor").value = "";
				document.getElementById("telefono_proveedor").value = "";
			}	
		}
	</script>

</body>
</html>