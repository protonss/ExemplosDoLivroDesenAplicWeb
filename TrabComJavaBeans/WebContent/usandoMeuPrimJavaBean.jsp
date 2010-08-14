<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Usando meu primeiro JavaBean</title>
</head>
<body>
	<jsp:useBean id="primeirojb" class="meupacote.MeuPrimeiroJavaBean"/>
	A mensagem atual é <strong><%= primeirojb.getMensagem() %> </strong>
	<br />
	A mensagem, após adicionada é:<br />
	<strong>
		<%
			primeirojb.setMensagem("Meu primeiro JavaBean");
			out.println(primeirojb.getMensagem());
		%>
	</strong>
</body>
</html>