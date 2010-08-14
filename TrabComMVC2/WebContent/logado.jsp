<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" 
	contentType="text/html"
    pageEncoding="ISO-8859-1"
    session="true"
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Usuário autenticado</title>
</head>
<body>
	Seja bem vindo <%= session.getAttribute("USER") %>
</body>
</html>