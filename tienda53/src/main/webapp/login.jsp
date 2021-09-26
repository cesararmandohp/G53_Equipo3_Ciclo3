<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width" , initial-scale=1.0 >
    <title>Login Tienda Virtual</title>
      <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm" crossorigin="anonymous"> 
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link href="style.css" rel="stylesheet" type="text/css" />
  </head>
  <body>
        <nav class="navbar navbar-dark bg-dark">
        <div class="container-fluid">
            <span class="navbar-brand mb-0 h1"><i class="fas fa-store"></i></i> Bienvenid@ a la Tienda Virtual</span>   

                   
  </div>
</nav>
<center>
<h3 class="mititulo">¡Compra los productos con la mejor calidad de una forma fácil y ágil aquí!</h3>  
<br>
<br>
<br>
<section class="form-login">
  <h5>Iniciar sesión</h5>
  
<div class="form-group">
                <label class="control-label" for="DocumentID"><i class="fas fa-user"></i>  Usuario</label>
              
                <input title="Digite su número de documento" class="form-control" id="inputuser" type="text" value="" maxlength="50" placeholder="*Digita tu usuario"> 
            </div>
<br></br>
<div class="form-group">

                        <label class="control-label" for="Password"><i class="fas fa-unlock-alt"></i>  Contraseña</label> 
                    </div>
                    

                </div>
                        <div class="inner-addon right-addon">
                            <div class="icon-addon">
                                <input class="form-control valid"  data-val-maxlength-max="25"  id="inputpass" name="Password" type="password" maxlength="25" placeholder="*Digita tu contraseña" aria-describedby="Password-error" aria-invalid="false"><span></span>
                                <label for="Password" rel="tooltip" title="Clave" /label>
                            </div>
                        </div>
                    </div>
                </div>
                <span class="text-danger field-validation-valid" data-valmsg-for="Password" data-valmsg-replace="true"></span>
            </div>


<div style="margin: auto; text-align: center;">
				<button type="button" class="btn btn-success" onclick="comparar()">
					<i class="fas fa-sign-in-alt"></i> Iniciar Sesión
				</button>
				<button type="button" class="btn btn-link">
					<i class="fas fa-clipboard-list"></i> Registrarse
				</button>
				<div id="error" class="alert alert-danger visually-hidden"
					role="alert">Usuario o contraseña incorrecta!</div>

			</div>

 
</section>

</div>
<footer class="footer">
  <div class="post-footer">
<div class="d-flex bd-highlight">
  <div class="p-2 flex-fill bd-highlight">&copy; 2021 Tienda Virtual</div>

</div>
 </div>
</footer>
    
<!-- Script que trae la informacion de la api y la compara con las entradas -->
	<script>
		function comparar() {
			//trayendo texto de input de username
			var x = document.getElementById("inputuser").value;
			//trayendo texto de input de password
			var y = document.getElementById("inputpass").value;
			//url de la api 
			var baseurl = "http://localhost:8080/listarusuarios";
			//creando un objeto de manipulacion de solicitudes
			var xmlhttp = new XMLHttpRequest();
			//abriendo la api
			xmlhttp.open("GET", baseurl, true);
			//funcion interna que compara la información
			xmlhttp.onreadystatechange = function() {
				//si se obtiene un 200 (Conexion correcta)
				if (xmlhttp.readyState === 4 && xmlhttp.status === 200) {
					//convirtiendo JSON en variable javascrip
					var usuarios = JSON.parse(xmlhttp.responseText);
					
					//verificando uno por uno si existe ese usuario
					for (i = 0; i < usuarios.length; i++) {
						
						//imprimiendo en la consola del navegador pata verificar
						console.log(usuarios);
						console.log(x);
						console.log(usuarios[i].usuario);
						console.log(y);
						console.log(usuarios[i].password);
						
						//si el nombre coincide
						if (usuarios[i].usuario === x) {
							//si la clave coincide
							if (usuarios[i].password === y) {
								console.log("si");
								var element = document.getElementById("error");
								element.classList.add("visually-hidden");
								document.getElementById("inputuser").value = "";
								document.getElementById("inputpass").value = "";
								window.location.href = "listausuarios.jsp";
								return;
							} else {
								//si la clave NO coincide
								console.log("error clave");
								var element = document.getElementById("error");
								element.classList.remove("visually-hidden");
								document.getElementById("inputuser").value = "";
								document.getElementById("inputpass").value = "";
								return;
							}
						}
					}
					//Si no existe el usuario
					console.log("no encontrado");
					
					//quitando la capacidad de ocultacion del error para mostrarlo
					var element = document.getElementById("error");
					element.classList.remove("visually-hidden");
					document.getElementById("inputuser").value = "";
					document.getElementById("inputpass").value = "";
					return;
				}
			};
			//ejecutando
			xmlhttp.send();
		}
	</script>


  </body>
</html>