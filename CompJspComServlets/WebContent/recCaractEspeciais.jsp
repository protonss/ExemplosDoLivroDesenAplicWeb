<%@ page language="java" 
	   contentType="text/html"
     pageEncoding="ISO-8859-1"
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Recebendo Caracteres Especiais</title>
</head>
<body>
	<% 
		String dados = request.getParameter("dados");
	%>
	Você enviou os seguintes dados: <strong><%=dados%></strong>
	<br />


	A query string passada foi:<br />
	<strong><%=request.getQueryString( )%></strong> 
</body>
</html>
