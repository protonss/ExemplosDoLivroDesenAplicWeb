<%@ page language="java" 
	   	contentType="text/html"
		pageEncoding="ISO-8859-1"
		info="Escrito por Edson Gon�alves"
		import="java.util.*"
		import="java.text.SimpleDateFormat"
%>
  
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Usando a Diretiva page</title>
</head>
<body>
	Esse � um exemplo da utiliza��o da diretiva <strong>page</strong>
	<br />
	<%
  	 Date hoje = new Date( );
   	SimpleDateFormat formato = 
							new SimpleDateFormat("dd/MM/yy"); 
	%>
	A data de hoje �: <strong><%= formato.format(hoje) %></strong> 
</body>
</html>
