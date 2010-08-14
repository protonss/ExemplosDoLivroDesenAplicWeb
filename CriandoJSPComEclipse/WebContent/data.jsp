<%@ page language="java" 
	   	contentType="text/html"
		pageEncoding="ISO-8859-1"
		info="Escrito por Edson Gonçalves"
		import="java.util.*"
		import="java.text.SimpleDateFormat"
%>
  
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Usando a Diretiva page</title>
</head>
<body>
	Esse é um exemplo da utilização da diretiva <strong>page</strong>
	<br />
	<%
  	 Date hoje = new Date( );
   	SimpleDateFormat formato = 
							new SimpleDateFormat("dd/MM/yy"); 
	%>
	A data de hoje é: <strong><%= formato.format(hoje) %></strong> 
</body>
</html>
