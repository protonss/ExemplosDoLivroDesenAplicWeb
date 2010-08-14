<%@ page language="java" 
	contentType="text/html"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Usando Expression Languagem com JavaBeans</title>
</head>
<body>
	<jsp:useBean id="spjb" class="meupacote.UmSimplesJavaBean" scope="request">
		<jsp:setProperty name="spjb" property="*"/>
	</jsp:useBean>
	Seu nome é: <strong>${spjb.nome}</strong><br />  
	Seu e-mail é: <strong>${spjb.email}</strong>

	<form action="${pageContext.request.requestURI}" method="post">
		Nome: <input type="text" name="nome"/><br />
		E-mail: <input type="text" name="email" /><br />
		<input type="submit" value="Enviar" />
	</form>
</body>
</html>
