<%@ page language="java" 
	contentType="text/html"
    pageEncoding="ISO-8859-1"
    errorPage="error_page.jsp"   
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Tratando Erros</title>
</head>
<body>
<%
	String val1 = request.getParameter("val1");
	String val2 = request.getParameter("val2");
	int valor1 = Integer.getInteger(val1);
	int valor2 = Integer.getInteger(val2);
%>
</body>
</html>