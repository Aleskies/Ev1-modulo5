<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Usuario</title>

<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/estilos.css " />


<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body class="fondo">
	<!--  nav -->
	<nav class="navbar navbar-expand-md bg-dark navbar-dark">
		<div class="container">
			<a class="navbar-brand" href="#">Bank of China</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#collapsibleNavbar">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="collapsibleNavbar">
				<ul class="navbar-nav">

					<li class="nav-item"><a class="nav-link" href="/">Página
							Formulario</a></li>
					<li class="nav-item"><a class="nav-link" href="generarLista">Listar
							Usuarios</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<!-- fin nav  -->

	<div class="container">
		<div class="abs-center">
			<h3>Modificar Datos de Usuario</h3>
		</div>

		<div class="container">
			<div class="abs-center">
				<form:form class="border p-3 form" action="modificar" method="POST"
					modelAttribute="usuario">
					<form:hidden path="rut" value="${usu.rut}" />
					<form:hidden path="dv" value="${usu.dv}" />
					<form:hidden path="nombre" value="${usu.nombre}" />
					<form:hidden path="apellido" value="${usu.apellido}" />

					<label>Dirección: </label>
					<form:input path="direccion" value="${usu.direccion}"
						placeholder="Nueva direción" />
					<form:errors path="direccion"></form:errors>
					<br>
					<label>Ciudad: &nbsp &nbsp </label>
					<form:input path="ciudad" value="${usu.ciudad}"
						placeholder="Nueva ciudad" />
					<form:errors path="ciudad"></form:errors>
					<br>
					<form:button class="btn btn-success">Modificar</form:button>
				</form:form>
			</div>
		</div>
		

		<div class="border p-3 form">
			<a href="generarLista">
				<button class="btn btn-success">Listar Usuarios</button>
			</a>
		</div>
	</div>
</body>
</html>