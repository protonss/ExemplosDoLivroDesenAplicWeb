<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" 
	contentType="text/html"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Capturando Exce��es em JSTL</title>
</head>
<body>

<c:catch var="e">
	<jsp:include page="naoExiste.jsp"  />
	<jsp:setProperty name="erro" property="sem" value="Inv�lido" />
</c:catch>

    <c:if test="${e!=null}">
    A exce��o �:
    	<c:out value="${e}" />
    </c:if>
    <c:if test="${e==null}">
		Caso n�o tenha exce��o
    </c:if>

</body>
</html>