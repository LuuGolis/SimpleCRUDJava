//L�gica
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="db.ConexionDB"%>
<%
String user = request.getParameter("user");
String pass = request.getParameter("password");

/*out.println(user);
out.println(pass);
*/

ConexionDB conexion = new ConexionDB();
Statement st = conexion.conectar();
ResultSet rs = st.executeQuery("SELECT * FROM usuarios WHERE usuario='"+user+"' AND clave='"+pass+"'");

if(rs.next()){
	response.sendRedirect("../view/inicio.jsp");
}else{
	response.sendRedirect("../view/error.jsp?mensaje=Usuario%20o%20password%20incorrectos");
}


%>