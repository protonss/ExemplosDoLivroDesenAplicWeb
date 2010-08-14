<%@ page language="java" 
	contentType="text/html"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:choose>
	<c:when test="${param.locale eq 'en_US'}">
		<fmt:setLocale value="en_US" />
	</c:when>
	<c:otherwise>
		<fmt:setLocale value="pt_BR" /> 
	</c:otherwise>
</c:choose>

<fmt:setBundle basename="meupacote.rotulos"/>

<?xml version="1.0" encoding="ISO-8859-1" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title><fmt:message key="titulo" /></title>
</head>
<body>
<a href="?locale=en_US"><fmt:message key="ingles" /></a>
<a href="?locale=pt_BR"><fmt:message key="portugues" /></a>
<br />
<form action="">
	<fmt:message key="nome" />: <input type="text" name="nome" />
	<br />
	<fmt:message key="email" />: <input type="text" name="email" /><br />
	<input type="submit" value="<fmt:message key="enviar" />" />
</form>
</body>
</html>
