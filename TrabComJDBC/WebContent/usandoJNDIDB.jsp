<%@ page language="java" contentType="text/html"
    pageEncoding="ISO-8859-1"
    import="java.sql.*, javax.sql.*, javax.naming.InitialContext"
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Usando Pool de Conexão</title>
</head>
<body>
	<table border="1">
		<tr>
			<th>ISBN</th><th>Título</th>
		</tr>
	<%
	Connection conn = null;
	Statement st = null;
	ResultSet rs = null;
	
	try {
			InitialContext ctx = new InitialContext( );
	    	DataSource ds =
	(DataSource) ctx.lookup("java:comp/env/jdbc/LivrariaDB");

	   	conn = ds.getConnection( );	
	    	st = conn.createStatement( );
	    	rs = st.executeQuery("select isbn, titulo from livros");
	    	while(rs.next( )) {
	%>
	
		<tr>
			<td><%= rs.getString("isbn") %></td>
			<td><%= rs.getString("titulo") %></td>
		</tr>
	<%
	     }
	
		}  catch (Exception ex) {
		    ex.printStackTrace( );
	    }  finally {
		    if (rs != null) rs.close( );
		    if (st != null) st.close( );
	    }
	%>
	</table>
</body>
</html>
