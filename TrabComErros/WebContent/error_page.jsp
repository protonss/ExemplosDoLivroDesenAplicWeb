<%@ page language="java" 
	contentType="text/html;"
	pageEncoding="ISO-8859-1"
	isErrorPage="true"
	%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Erro na execu��o da sua p�gina JSP</title>
</head>
<body>
<h1>Erro na execu��o da sua p�gina JSP</h1>
Um erro ocorreu no seu sistema. Verifique a seguir a possibilidade de 
executar novamente a p�gina corrigindo suas falhas:
<strong>
<%= exception.toString() %>
</strong>
</body>
</html>