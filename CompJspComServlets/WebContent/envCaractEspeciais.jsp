<%@ page language="java" 
	   contentType="text/html"
      pageEncoding="ISO-8859-1"
      import="java.net.URLEncoder"  
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
	<title>Enviando Caracteres Especiais Usando JSP</title>
</head>
<body>
	<%
		String queryString = 
			URLEncoder.encode("Cidadão&João","ISO-8859-1"); 
	%>
	<a href="recCaractEspeciais.jsp?dados=<%=queryString %>">
		Envia Caracteres Especiais
	</a>
</body>
</html>
