<%@ page language="java" 
				contentType="text/html"
    			pageEncoding="ISO-8859-1"
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Dados atualizados</title>
</head>
<body>
<sql:setDataSource var="dataSource" 
			driver="com.mysql.jdbc.Driver"
			url="jdbc:mysql://localhost/livraria" 
			user="edson" password="integrator" />
	
<sql:update var="resultado" dataSource="${dataSource}"> 
	UPDATE livros SET
	titulo=?, edicao_num=?,
	ano_publicacao=?, descricao=?
	WHERE isbn=?
	<sql:param value="${param.titulo}" />
	<sql:param value="${param.edicao}" />
	<sql:param value="${param.publicacao}" />
	<sql:param value="${param.descricao}" />
	<sql:param value="${param.isbn}" />	
</sql:update>

<c:if test="${resultado>0}">  

<h3>Os dados foram atualizados com sucesso!</h3>
<a href="usandoSQLComJSTL.jsp">Voltar a página principal</a>

</c:if>
</body>
</html>
