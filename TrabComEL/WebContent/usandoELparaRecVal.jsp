<%@ page language="java" 
	contentType="text/html"
	pageEncoding="ISO-8859-1"
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Trabalhando com EL</title>
</head>
<body>
	<strong>${param['nome']}</strong>
	<form action="usandoELparaRecVal.jsp">
		Nome: <input type="text" name="nome" />
		<br />
		<input type="submit" value="Enviar"/>
	</form>
</body>
</html>
