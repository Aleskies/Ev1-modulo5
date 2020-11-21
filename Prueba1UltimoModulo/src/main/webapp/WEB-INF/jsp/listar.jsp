<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="resources/js/script.js"></script>
<meta charset="UTF-8">
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/estilos.css " />
<title>Lista de Usuarios</title>

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
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

	<div class="container">
		<div class="abs-center">
			<form class="border p-3 form" action="buscarUsuario" method="post">
				<input type="text" name="rut" placeholder="Digite el rut"> <input
					type="submit" class="btn btn-danger" value="Buscar por Rut">
			</form>

		</div>
		<hr>
		<h2>Registro de Usuarios</h2>
		<hr>
		<table class="table">
			<thead class="titulotabla">
				<tr>
					<th>Rut</th>
					<th>Nombre</th>
					<th>Apellido</th>
					<th>Direccion</th>
					<th>Cuidad</th>
					<th>Eliminar</th>
					<th>Modificar</th>
				</tr>
			</thead>
			<tbody class="titulotabla">

				<c:forEach var="u" items="${usuarios}">
					<tr>
						<td>${u.rut}-${u.dv}</td>
						<td>${u.nombre}</td>
						<td>${u.apellido}</td>
						<td>${u.direccion}</td>
						<td>${u.ciudad}</td>

						<td>
							<form action="eliminar" method="post" id="del">
								<input type="hidden" name="rut" value="${u.rut}"> <input
									type="button" class="btn btn-warning"
									onclick="eliminarPost(${u.rut})" value="Eliminar">
							</form>
						</td>


						<td>
							<form action="encontrarUsuario" method="post">
								<input type="hidden" name="rut" value="${u.rut}"> <input
									type="submit" class="btn btn-warning" value="Modificar">
							</form>
						</td>
					</tr>
				</c:forEach>

			</tbody>
		</table>
		<div class="border p-3 form">
			<a href="/">
				<button class="btn btn-success">Volver a Formulario</button>
			</a>
		</div>
	</div>



</body>
</html>