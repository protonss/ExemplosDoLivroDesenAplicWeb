<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" 
	contentType="text/html"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Formulário de Atualização</title>
</head>
<body>
<sql:setDataSource var="dataSource" 
	driver="com.mysql.jdbc.Driver"
	url="jdbc:mysql://localhost/livraria" 
	user="edson" password="integrator" />
	
<sql:query var="livros" dataSource="${dataSource}">
	SELECT * FROM livros WHERE isbn=?
	<sql:param value="${param.isbn}" />
</sql:query>

<c:set var="row" value="${livros.rows[0]}" />

<form action="atualizaJSTL.jsp" method="post">
<table>
	<tr>
		<td>ISBN:</td>
		<td><input type="text" name="isbn" value="<c:out value="${row.isbn}" />"  readonly="readonly" /></td>
	</tr>
	<tr>
		<td>Título:</td>
		<td><input type="text" name="titulo" value="<c:out value="${row.titulo}" />" /></td>
	</tr>
	<tr>
		<td>Edição:</td>
		<td><input type="text" name="edicao" value="<c:out value="${row.edicao_num}" />" /></td>
	</tr>
	<tr>
		<td>Publicação:</td>
		<c:set var="data" value="${row.ano_publicacao}"/>
		<td><input type="text" name="publicacao" value="<fmt:formatDate value="${data}" type="DATE" pattern="yyyy"/>" /></td>
	</tr>
	<tr>
		<td>Descrição:</td>
		<td>
			<textarea name="descricao" rows="5" cols="25"><c:out value="${row.descricao}" /></textarea>
		</td>
	</tr>
	<tr>
		<td colspan="2">
			<input type="submit" name="btAtualizar" value="Atualizar" />
		</td>
	</tr>		
</table>
</form>

</body>
</html>