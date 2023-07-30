<!doctype html>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="db.ConexionDB"%>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
    <title>Error</title>
  </head>
  <body>
  <jsp:include page="menu.jsp" />
  <div class="container">
  <h1 class="text-center mt-1">Alta de usuario</h1>
   
      <div class="container">
<div class="text-center fs-3 my-4">Login</div>
<div class="d-flex justify-content-center">
<form action="../controller/addUser.jsp" method="post">
<input type="email" name="user" id="user" onkeyup="validarUsu()" class="form-control mb-3" placeholder="usuario" required >
<input type="password" name="password" id="pass" onkeyup="showFort()" class="form-control mb-3" placeholder="password" required >
<input type="password" name="repPass" id="repPass" onkeyup="compararPass()" class="form-control mb-3" placeholder="reingrese contraseña" required>
<input type="submit" value="enviar" onkeyup="compararPass()" class="btn btn-dark">
</form>
<div id="mensaje"></div>
</div>
</div>



 
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
  <script src="js/registro.js"></script>
  </body>
</html>