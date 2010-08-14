<%@ page language="java" 
				contentType="text/html; "
				pageEncoding="ISO-8859-1"
				import="java.sql.*"
%>
<%
	String isbn = request.getParameter("isbn");
	String titulo = request.getParameter("titulo");
	String edicao = request.getParameter("edicao");
	String publicacao = request.getParameter("publicacao");
	String descricao = request.getParameter("descricao");
	
	Connection conn = null;
	PreparedStatement pst = null;
	
	try {
	    Class.forName("com.mysql.jdbc.Driver").newInstance( );
	    conn =
	      DriverManager.getConnection("jdbc:mysql://localhost/livraria",
	    		  							"edson","integrator");
	
String SQL = "INSERT INTO livros (isbn, titulo, edicao_num, " + 
								"ano_publicacao, descricao) " +
        					"values (?, ?, ?, ?, ?)";


	    pst = conn.prepareStatement(SQL);
	  
pst.setString(1, isbn);  		 
	    pst.setString(2, titulo);
	    pst.setInt(3, Integer.parseInt(edicao));
	    pst.setString(4, publicacao);
	    pst.setString(5, descricao);

	    pst.executeUpdate( );
	    
	    pst.clearParameters( );
	
	}  catch (Exception ex) {
				ex.printStackTrace( );
	}  finally {
				if (pst != null) pst.close( );
				if (conn != null) conn.close( );
	}
%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Dados recebidos</title>
</head>
<body>
O ISBN <strong><%=isbn %></strong> foi inserido com sucesso!
</body>
</html>
