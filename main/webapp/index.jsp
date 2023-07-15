<%
response.sendRedirect("view/login.jsp");
%>

<!doctype html>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="db.ConexionDB"%>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"		rel="stylesheet"		integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM"		crossorigin="anonymous">
	
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
  </head>
  <body>
  <div class="container">
    <h4 class="text-center fs-3 my-4">Listado de Usuarios</h4>
    
    <button class="btn btn-primary my-3">Agregar</button>
    
    <table class="table">
    <thead>
    <th >#ID</th>
    <th>User</th>
    <th>Password</th>
    <th>Operaciones</th>
    </thead>
    <tbody>
    
    <%
    //traigo archivo conexionDB para usar
    ConexionDB conexion=new ConexionDB();
   //conecto a la db
   Statement st=conexion.conectar();
   //st = conexion a db
  //rs=resultado del select
  ResultSet rs=st.executeQuery("SELECT * FROM usuarios");
   
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
		out.println("<i class='bi bi-pencil-fill m-1'></i>");
		out.println("<i class='bi bi-trash3-fill m-1'></i>");
		out.println("</td>");
		
		
		out.println("</tr>");
   }
    
    %>
    </tbody>
    </table>
    </div>
    <script	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"		integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"		crossorigin="anonymous"></script>
</body>
  </body>
</html>