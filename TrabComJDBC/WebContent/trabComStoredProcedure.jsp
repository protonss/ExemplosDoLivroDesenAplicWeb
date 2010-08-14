<%@ page language="java" 
		contentType="text/html"
		pageEncoding="ISO-8859-1"
		import="java.sql.*"
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Trabalhando com Stored Procedure</title>
</head>
<body>
<form action="trabComStoredProcedure.jsp">
ISBN: <input type="text" name="isbn" /> 
<input type="submit" name="btEnviar" value="Pesquisar" />
</form>
<%
	String isbn = request.getParameter("isbn");
	
	Connection conn = null;
	ResultSet rs = null;
	CallableStatement cStatement = null;

	if(isbn!=null){
		try {
		    Class.forName("com.mysql.jdbc.Driver").newInstance( );
		    conn =
		      DriverManager.getConnection("jdbc:mysql://localhost/livraria",
		    		  						"edson","integrator");
		
		    	cStatement = 
						conn.prepareCall("{CALL sp_m_liv_isbn(?)}");

		    	cStatement.setString(1,isbn);
		    		
				rs = cStatement.executeQuery( ); 


			if(rs.next( )){
%>
				<table border="1">
					<tr>
						<th>ISBN</th><th>Título</th>
					</tr>
			<%
				    do {
			%>
			
					<tr>
						<td><%= rs.getString(1) %></td>
						<td><%= rs.getString(2) %></td>
					</tr>
			<%	
				    }while(rs.next( ));
			%>
				</table>		
<%		
			}
			else{
				out.print("Livro não encontrado");
			}
		}  catch (Exception ex) {
			ex.printStackTrace( );
		}  finally {
			if (conn != null) conn.close( );
			if (rs != null) rs.close( );
			if (cStatement != null) cStatement.close( );
		}
	}//end if
%>    
</body>
</html>
