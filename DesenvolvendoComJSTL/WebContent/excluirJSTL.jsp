<%@ page language="java" 
	contentType="text/html"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Excluindo com JSTL</title>
</head>
<body>
<sql:setDataSource var="dataSource" 
	driver="com.mysql.jdbc.Driver"
	url="jdbc:mysql://localhost/livraria" 
	user="edson" password="integrator" />
	
	<sql:transaction dataSource="${dataSource}" 
									isolation="read_committed"> 
				<sql:update var="resultado">
						DELETE FROM livros WHERE isbn = ?
						<sql:param value="${param.isbn}"/>
				</sql:update>
			</sql:transaction>

<c:if test="${resultado>0}">
<h3>O ISBN ${param.isbn} foi excluido com sucesso!</h3>
<a href="usandoSQLComJSTL.jsp">Voltar a página principal</a>
</c:if>
</body>
</html>
