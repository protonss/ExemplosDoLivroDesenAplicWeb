<jsp:useBean id="conversor" class="trabcomjavabeans.MeuPrimeiroBean" scope="request" />
<jsp:setProperty name="conversor" property="*"/>
<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Trabalhando com JavaBeans</title>
</head>
<body>
<% 
	if ( request.getParameter("calcular") != null ) {
		%> 
		<br />Valor: <jsp:getProperty name="conversor" property="value"/>
		<br />Taxa: <jsp:getProperty name="conversor" property="tax"/>
		<br />Valor Convertido: <%= conversor.convert() %> 
		<%
	}
%>
<form name="CALCULADORA" action="index.jsp" method="post">
Valor: <input type="text" name="value" /><br />
Taxa: <input type="text" name="tax" /><br />
<input type="submit" name="calcular" value="Calcular" />
</form>
</body>
</html>