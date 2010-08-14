<%@ page language="java" 
    		contentType="text/html"
   	 	pageEncoding="ISO-8859-1"
    		import="java.sql.*"
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Dados atualizados</title>
</head>
<body>
	<%
	String isbn = request.getParameter("isbn");
	String titulo = request.getParameter("titulo");
	String edicao = request.getParameter("edicao");
	String publicacao = request.getParameter("publicacao");
	String descricao = request.getParameter("descricao");
	
	if(isbn!=null){
		Connection conn = null;
		PreparedStatement pst = null;
		
		try {
		    Class.forName("com.mysql.jdbc.Driver").newInstance( );
		    conn =
		      DriverManager.getConnection("jdbc:mysql://localhost/livraria",
		    		  						"edson","integrator");
		
	 	String SQL = "UPDATE livros SET titulo=?, " +
						" edicao_num=?, " +
						"ano_publicacao=?, descricao=? " +
	        		"where isbn=?";
		
		    pst = conn.prepareStatement(SQL);
		    pst.setString(1, titulo);
		    pst.setInt(2, Integer.parseInt(edicao));
		    pst.setString(3, publicacao);
		    pst.setString(4, descricao);
		    pst.setString(5, isbn);
		    pst.executeUpdate( );
		    pst.clearParameters( );
		    out.println("Os dados do ISBN: "+isbn+" foram atualizados");
		
		}  catch (Exception ex) {
				ex.printStackTrace( );
				out.println("Erro ao atualizar");
		}  finally {
				if (pst != null) pst.close( );
				if (conn != null) conn.close( );
		}
	}//end if
	else{
			out.println("ISBN não existente");
	}
		
	%> 
</body>
</html>
