<%@ page language="java" 
	   contentType="text/html"
         pageEncoding="ISO-8859-1"
         import="java.sql.*, java.text.*"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Atualizando dados via JDBC com JSP</title>
</head>
<body>
<%
	String isbn = request.getParameter("isbn").trim( ); 
 
	if(isbn!=null){  
		Connection conn = null;
		PreparedStatement pst = null;
		ResultSet rs = null;
		SimpleDateFormat dateFormat = null;
		
		try {
		    Class.forName("com.mysql.jdbc.Driver").newInstance( );
		    conn =
		      DriverManager.getConnection("jdbc:mysql://localhost/livraria",
		    		  					     	"edson","integrator");
		
		pst = conn.prepareStatement("select * from livros where isbn=?");
				pst.setString(1, isbn);  
				rs = pst.executeQuery( );
		    	pst.clearParameters( );
		    	dateFormat = new SimpleDateFormat("yyyy");   
			
		    if(rs.next( )){  
		
%>
<form action="atualizaDB.jsp" method="post">
<table>
	<tr>
		<td>ISBN:</td>
		<td><input type="text" name="isbn" 
						value="<%= rs.getString("isbn") %>"  
						readonly="readonly" />
		</td>
	</tr>
	<tr>
		<td>Título:</td>
		<td><input type="text" name="titulo" 
						value="<%= rs.getString("titulo") %>" />
		</td>
	</tr>
	<tr>
		<td>Edição:</td>
		<td><input type="text" name="edicao" 
						value="<%= rs.getString("edicao_num") %>" />
		</td>
	</tr>
	<tr>
		<td>Publicação:</td>
		<td>
<input type="text" name="publicacao" 
	value="<%= dateFormat.format(rs.getDate("ano_publicacao")) %>"  
/>
		</td>
	</tr>
	<tr>
		<td>Descrição:</td>
		<td>
			<textarea name="descricao" rows="5" cols="25">
<%= rs.getString("descricao") %></textarea>
		</td>
	</tr>
	<tr>
		<td colspan="2">
			<input type="submit" name="btAtualizar" value="Atualizar" />
		</td>
	</tr>		
</table>
</form>
<%
			}//end if
			else{ out.println("Livro não encontrado"); } 
		}  catch (Exception ex) {
			ex.printStackTrace( );
		}  finally {
			if (pst != null) pst.close( );
			if (rs != null) rs.close( );
			if (conn != null) conn.close( );
		}
	}// end if
%>
</body>
</html>
