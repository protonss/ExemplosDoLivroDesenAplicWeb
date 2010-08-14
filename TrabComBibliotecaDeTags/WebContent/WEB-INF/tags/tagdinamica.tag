<%@tag pageEncoding="ISO-8859-1" body-content="empty"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@attribute name="opcoes" required="true" %>
<%@attribute name="delimitadores" required="true" %>
<%@attribute name="nome" required="true" %>
<%@attribute name="tamanho" %>
<%@attribute name="multiplo" %>
<c:if test="${tamanho != null}">
<c:set var="size" value="size='${tamanho}'" />
</c:if>
<c:if test="${multiplo == true}">
<c:set var="multiple" value="multiple='multiple'" />
</c:if>
<select name="${nome}" ${size} ${multiple}>
<c:forTokens items="${opcoes}" var="item" delims="${delimitadores}">
	<option value="${item}">${item}</option>
</c:forTokens>
</select>