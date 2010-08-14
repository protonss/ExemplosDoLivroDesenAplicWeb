<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Interagindo com o Usuário</title>
</head>
<body>
<jsp:useBean id="interagindo" scope="page" class="meupacote.InteragindoBean" />
<jsp:setProperty name="interagindo" property="*" />
Seu nome é: <strong>
<jsp:getProperty name="interagindo" property="nome" />
</strong>
<form method="post" action="interagindo.jsp">
     Nome: <input type="text" size="20" name="nome" /><br />
     <input type="submit" name="submit" value="Enviar" />
</form>
</body>
</html>