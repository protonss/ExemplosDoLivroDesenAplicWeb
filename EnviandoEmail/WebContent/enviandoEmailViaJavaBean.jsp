<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Enviando um e-mail por JavaBean</title>
</head>
<body>
<jsp:useBean id="email"  class="meupacote.EmailBean" />
<jsp:setProperty name="email" property="from" value="edson@integrator.com.br"/>
<jsp:setProperty name="email" property="to" value="edson@teste.com"/>
<jsp:setProperty name="email" property="subject" value="Testando o EmailBean"/>
<jsp:setProperty name="email" property="message" value="<strong>Estou testando JavaMail</strong>"/>
<% email.sendMail(); %>
</body>
</html>