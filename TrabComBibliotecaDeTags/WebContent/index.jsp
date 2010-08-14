<%@ page language="java" contentType="text/html"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/WEB-INF/tld/TrabComTaglib.tld" prefix="t" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Trabalhando com Taglibs</title>
</head>
<body>
	<form action="index.jsp" method="post" >
		Usuário: <t:inputTag name="usuario" type="text" /><br />  
		Senha: <t:inputTag name="senha" type="password" /><br />
		<t:inputTag name="btEnviar" type="submit" value="Enviar" />

	</form>
</body>
</html>
