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
	<!-- nav  -->
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




	<div class="container tabla">
	<div class="row">
		<div class="col-6">
		<h2>Ingreso de Usuarios</h2>
		</div>
	</div>
		<div class="table-responsive ">
			<table class="table ">
				<form:form action="agregar" method="POST" modelAttribute="usuario">
					<tr>
						<td><span> Rut: </span></td>

						<td><form:input path="rut" placeholder="12345678" /> <form:errors
								path="rut" cssClass="error"></form:errors> <span> - </span> <form:input path="dv"
								placeholder="k" size="2" /> <form:errors path="dv" cssClass="error"></form:errors></td>
					</tr>

					<tr>
						<td><span> Nombre: </span></td>
						<td><form:input path="nombre" placeholder="Juan" /> <form:errors
								path="nombre" cssClass="error"></form:errors></td>
					</tr>

					<tr>
						<td><span> Apellido: </span></td>
						<td><form:input path="apellido" placeholder="Perez" /> <form:errors
								path="apellido" cssClass="error"></form:errors></td>
					</tr>

					<tr>
						<td><span> Dirección: </span></td>
						<td><form:input path="direccion" placeholder="" /> <form:errors
								path="direccion" cssClass="error"></form:errors></td>
					</tr>

					<tr>
						<td><span> Cuidad: </span></td>
						<td><form:input path="ciudad" placeholder="" /> <form:errors
								path="ciudad" cssClass="error"></form:errors></td>
					</tr>
					<tr>
						<td><form:button class="btn btn-danger btn-block">Agregar</form:button>
						</td>
					</tr>
					</tbody>

				</form:form>
			</table>
			<div class="border p-3 form">
				<a href="generarLista">
					<button class="btn btn-success">Listar Usuarios</button>
				</a>
			</div>
		</div>


	</div>










</body>
</html>