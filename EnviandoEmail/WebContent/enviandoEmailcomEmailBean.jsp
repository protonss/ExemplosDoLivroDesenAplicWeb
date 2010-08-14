<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" 
	contentType="text/html"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Digite seu e-mail</title>
</head>
<body>
<jsp:useBean id="email"  class="meupacote.EmailBean" />
<jsp:setProperty name="email" property="*"/>
<% 
if(request.getParameter("submit")!=null)
	email.sendMail();

%>
<form action="sendMail4.jsp" method="post">
<table border="0">
<tr>
<td>De: </td>
<td><input type="text" name="from" /></td>
</tr>
<tr>
<td>Para:</td>
<td> <input type="text" name="to" /></td>
</tr>
<tr>
<td>Assunto: </td>
<td><input type="text" name="subject" /></td>
</tr>
<tr>
<td>Mensagem:</td>
<td><textarea rows="5" cols="25" name="message"></textarea></td>
</tr>
<tr>
<td colspan="2">
<input type="submit" name="submit" value="Enviar" />
</td>
</tr>
</table>
</form>

</body>
</html>