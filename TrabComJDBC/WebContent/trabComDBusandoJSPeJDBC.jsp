<%@ page language="java" 
				contentType="text/html"
				pageEncoding="ISO-8859-1"
				import="java.sql.*" 
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Trabalhando com Banco de dados usando JDBC e JSP</title>
</head>
<body>
	<table border="1">
	<thead>
		<tr>
			<th>ISBN</th><th>Título</th>
			<th>Excluir</th><th>Atualizar</th>  
		</tr>
	</thead>
	<tbody>
	<%
	Connection conn = null;
	Statement st = null;
	ResultSet rs = null;
	
	try {
	    Class.forName("com.mysql.jdbc.Driver").newInstance( );
	    conn =
	      DriverManager.getConnection("jdbc:mysql://localhost/livraria",
	    		  						"edson","integrator");
	
	    st = conn.createStatement( );
	    rs = st.executeQuery("select isbn, titulo from livros");
	    while(rs.next( )) {
	%>

		<tr>
			<td><%= rs.getString("isbn") %></td>
			<td><%= rs.getString("titulo") %></td>
			<td>
	<a href="excluindoDB.jsp?isbn=<%= rs.getString("isbn") %>"> 
				Clique aqui
			</a>
			</td>
			<td>
			<a href="atDB.jsp?isbn=<%= rs.getString("isbn") %>">
				Clique aqui
			</a>			
			</td>
		</tr>

	<%
	     } //end while
	
	}  catch (Exception ex) {
		ex.printStackTrace( );
	}  finally {
	if (rs != null) rs.close( );     
			if (st != null) st.close( );
			if (conn != null) conn.close( );
	}
	%>
	</tbody>
	</table>
</body>
</html>
