<%@ page language="java" 
	contentType="text/html"
	pageEncoding="ISO-8859-1"
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Trabalhando com Objetos Implícitos no EL</title>
</head>
<body>
<table border="1">
	<tr>
		<th>Objeto</th>
		<th>Código usado</th>
		<th>Saída</th>
	</tr>
	<tr>
		<td>PageContext</td>
		<td>${'${'}pageContext.request.requestURI}</td>
		<td>${pageContext.request.requestURI}</td>
	</tr>	
	<tr>
		<td>param</td>
		<td>${'${'}param["varios"]}</td>
		<td>${param["varios"]}</td>
	</tr>
	<tr>
		<td>paramValues</td>
		<td>${'${'}paramValues.varios[1]}</td>
		<td>${paramValues.varios[1]}</td>
	</tr>
</table>
</body>
</html>
