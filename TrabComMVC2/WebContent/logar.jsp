<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Logar no Sistema</title>
</head>
<body>
<form action="Logar" method="post">Usuário:<input type="text"
	name="usuario" /><br />
Senha: <input type="password" name="senha" /><br />
<input type="submit" name="btLogar" value="Logar" /></form>
<%
	String msg = (String) request.getAttribute("msg");

	if (msg != null)
		out.println(msg);
%>
</body>
</html>
