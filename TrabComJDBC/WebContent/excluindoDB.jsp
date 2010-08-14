<%@ page language="java" 
	   contentType="text/html"
         pageEncoding="ISO-8859-1"
         import="java.sql.*"%>
    
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
		
		try {
		    Class.forName("com.mysql.jdbc.Driver").newInstance( );
		    conn =
		      DriverManager.getConnection("jdbc:mysql://localhost/livraria",
		    		  					     	"edson","integrator");
		
			pst = conn.prepareStatement("delete from livros where isbn=?");
			pst.setString(1, isbn);  
			pst.executeUpdate( );
			out.println("O Livro de ISBN <strong>"+isbn+"</strong> foi excluido com sucesso!");	
			
		}  catch (Exception ex) {
			ex.printStackTrace( );
		}  finally {
			if (pst != null) pst.close( );
			if (conn != null) conn.close( );
		}
	}// end if
%>
</body>
</html>
