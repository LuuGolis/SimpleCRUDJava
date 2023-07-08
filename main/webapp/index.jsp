<!doctype html>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="db.ConexionDB"%>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
  </head>
  <body>
  <div class="container">
    <h4 class="text-center fs-3 my-4">Listado de Usuarios</h4>
    
    <table class="table">
    <thead>
    <th scope="col">#ID</th>
    <th scope="col">User</th>
    <th scope="col">Password</th>
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
  </body>
</html>