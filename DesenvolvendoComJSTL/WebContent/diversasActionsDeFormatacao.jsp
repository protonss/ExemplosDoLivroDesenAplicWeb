<%@ page language="java" 
	contentType="text/html"
	pageEncoding="ISO-8859-1"
%> 
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>       
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Formatações de data, hora, número e moeda</title>
</head>
<body>
	<h2>Padrão atual</h2>
	<jsp:useBean id="data" class="java.util.Date" />
	Data padrão : <fmt:formatDate value="${data}"/><br />
	Somente a data no formato dd/MM/yyyy :
	<fmt:formatDate value="${data}" type="DATE" 
									pattern="dd/MM/yyyy"/>
<br />
	A hora: <fmt:formatDate value="${data}" type="TIME" dateStyle="default"/>
	<h2>Los Angeles Time Zone</h2>
	<fmt:timeZone value="America/Los_Angeles">
	Default format : <fmt:formatDate value="${data}"/><br />
	Data no formato MM/dd/yyyy :
	<fmt:formatDate value="${data}" type="DATE" 
										pattern="MM-dd-yyyy"/>
<br />
	Hora estilo SHORT:
	<fmt:formatDate value="${data}" type="TIME"
 									timeStyle="SHORT"/>
<br />
	</fmt:timeZone>
	<hr />
	<h2>Formatação de Moeda</h2>
	<c:set var="salario" value="5000" />
	<fmt:setLocale value="en_US"/>
	<fmt:formatNumber type="CURRENCY" value="${salario}" />
	<br />
	<fmt:setLocale value="pt_BR"/>
	<fmt:formatNumber type="CURRENCY" value="${salario}" />
	<br />
	<hr />
	<h2>Formatação de Números</h2>
	<c:set var="numero" value="1000" />
	<fmt:formatNumber type="NUMBER" groupingUsed="true" 
								minFractionDigits="2"  value="${numero}" />
	<hr />
	<h2>Formatação de Porcentagem</h2>
	<c:set var="porcentagem" value="0.05" />
	<fmt:formatNumber type="PERCENT" value="${porcentagem}" />

</body>
</html>
