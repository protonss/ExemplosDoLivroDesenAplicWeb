<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Desenvolvendo com JSTL</title>
</head>
<body>
	<c:if test="${param.nome != null}">
		<c:set var="nome" value="${param.nome}" />
			Seu nome é: <c:out value="${nome}" />
		<br />
	</c:if>
		<c:remove var="nome" />
	<c:choose>
		<c:when test="${nome != null}">
			A variável ${'${'}nome} contém o valor ${nome}<br />
		</c:when>
		<c:otherwise>
			A variável ${'${'}nome} foi removida
		</c:otherwise>
	</c:choose>
	<form action="${pageContext.request.requestURI}" method="post">
		Nome: <input type="text" name="nome" /><br />
		<input type="submit" value="Enviar" />
	</form>
</body>
</html>
