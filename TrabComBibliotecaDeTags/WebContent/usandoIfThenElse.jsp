<%@ page language="java" 
	contentType="text/html"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="www.integrator.com.br/condicionais" prefix="cond" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>Trabalhando com Taglibs</title>
</head>
<body>
	<cond:if> 
		<cond:condicao>true</cond:condicao>
		<cond:then>O resultado é verdadeiro</cond:then>
		<cond:else>O resultado é falso</cond:else>
	</cond:if>
</body>
</html>
