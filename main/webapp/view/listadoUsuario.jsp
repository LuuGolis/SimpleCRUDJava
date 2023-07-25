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
  <h1 class="text-center mt-1">Listado usuarios</h1>
    <table class="table table-striped text-center mt-4">
  <thead>
    <tr>
      <th scope="col">ID</th>
      <th scope="col">Usuario</th>
      <th scope="col">Contraseņa</th>
      <th scope="col">Operaciones</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <%
      ConexionDB conexion = new ConexionDB();
      Statement st = conexion.conectar();
      ResultSet rs = st.executeQuery("SELECT * FROM usuarios");
      
      while(rs.next()){
    	  out.println("<tr>");
    	  
    	  out.println("<td>");
    	  out.println(rs.getInt("id"));
    	  out.println("</td>");
    	  
    	  out.println("<td>");
    	  out.println(rs.getString("usuario"));
    	  out.println("</td>");
    	  
    	  out.println("<td>");
    	  out.println(rs.getString("clave"));
    	  out.println("</td>");
    	  
    	  out.println("<td>");
    	  out.println("<i class='bi bi-pencil-fill'></i>");
    	  out.println("<i class='bi bi-trash-fill'></i>");
    	  out.println("</td>");
    	  
    	  out.println("</tr>");
      }
      %>
  </tbody>
</table>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
  </body>
</html>