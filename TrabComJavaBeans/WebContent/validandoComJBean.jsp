<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Validando com JavaBeans</title>
</head>
<body>
<jsp:useBean id="valc" class="meupacote.ValidandoCadastroJBean" scope="request"/>
<jsp:setProperty name="valc" property="*" />

<%
	if(valc.isSubmit()){
		if(!valc.isValid()){
			out.println(valc.errors("nome"));
			out.println(valc.errors("email"));

		}
	}
		

%>


<strong>Atenção:</strong> Campos com <strong>*</strong> são obrigatórios
<form action="validandoComJBean.jsp" method="post">
	* Nome:<input type="text" name="nome" value="<jsp:getProperty name="valc" property="nome"/>" /><br />
	* E-mail:<input type="text" name="email" value="<jsp:getProperty name="valc" property="email"/>" /><br />
	URL: <input type="text" name="url" value="<jsp:getProperty name="valc" property="url"/>" /><br />
	<input type="submit" name="enviar" value="Enviar" />

</form>
</body>
</html>