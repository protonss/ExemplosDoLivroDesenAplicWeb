<%@ page language="java" 
	contentType="text/html"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%> 

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>JPQL</title>
</head>
<body>

<form action="" method="post">
<table border="0">
<tr>
<td valign="top">Query:</td>
<td>
<textarea rows="5" cols="40" name="query">
<c:out value="${param.query}" />
</textarea>
</td>
<td colspan="2" valign="bottom">
<input type="submit" value="Consultar" />
</td>
</table>
</form>

<c:if test="${pageContext.request.method=='POST'}">
	<jsp:useBean id="rs" scope="page" class="meupacote.util.TestandoQuerys" />	
	<jsp:setProperty name="rs" property="query" value="${param.query}"/>
	<jsp:getProperty name="rs" property="query"/> 
	<c:out value="${rs.erro}" />
</c:if>

</body>
</html>