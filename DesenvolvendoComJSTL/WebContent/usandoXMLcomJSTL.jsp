<%@ page language="java" contentType="text/html"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/xml" prefix="x"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Manipulando o XML através de JSTL</title>
</head>
<body>
<c:import url="livros.xml" var="url" />
<x:parse xml="${url}" var="doc" scope="application" />
<table border="1">
	<tr>
		<th>ISBN</th>
		<th>Título</th>
		<th>Publicação</th>
	</tr>
	<x:forEach select="$doc/livros/livro" var="l">
		<x:choose>
			<x:when select="$l/titulo='Dominando AJAX'">
				<c:set var="cor" value="#EEEEEE" />
			</x:when>
			<x:when select="$l/titulo='Dominando Eclipse'">
				<c:set var="cor" value="#CCCCCC" />
			</x:when>
			<x:otherwise>
				<c:set var="cor" value="#FFFFFF" />
			</x:otherwise>
		</x:choose>
		<tr bgcolor="${cor}">
			<td><x:out select="$l/isbn" /></td>
			<td><x:out select="$l/titulo" /></td>
			<td><x:out select="$l/publicacao" /></td>
		</tr>


	</x:forEach>
</table>
</body>
</html>
