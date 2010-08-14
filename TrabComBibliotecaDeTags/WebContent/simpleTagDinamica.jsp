<%@ page language="java" 
	contentType="text/html"
    pageEncoding="ISO-8859-1"
%>
<%@ taglib 
	uri="www.integrator.com.br/simpletags/dinamica" 
	prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SimpleTag Dinâmica</title>
</head>
<body>
<s:nome nome="${param['nome']}"/>
<form action="">
Nome: <input type="text" name="nome" />
<input type="submit" value="Enviar">
</form>
</body>
</html>