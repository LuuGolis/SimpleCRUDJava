<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"		rel="stylesheet"		integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM"		crossorigin="anonymous">
	
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
 
</head>
<body>

<div class="container">
<div class="text-center fs-3 my-4">Login</div>
<div class="d-flex justify-content-center">
<form action="../controller/checkLogin.jsp" method="post">
<input type="email" name="user" class="form-control mb-3" placeholder="usuario" required >
<input type="password" name="password" class="form-control mb-3" placeholder="password" required >
<input type="submit" value="enviar" class="btn btn-dark">
</form>
</div>

<div class="bg-danger text-center my-1 p-2">
<div>
<% 
String mensaje = request.getParameter("mensaje");
out.println(mensaje);
%>
</div>
</div>

</div>



<script	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"		integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"		crossorigin="anonymous"></script>
</body>
</html>