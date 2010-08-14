<%@tag pageEncoding="ISO-8859-1" body-content="empty"%>
<%@attribute name="rotulo" required="true" %>
<%@attribute name="nome" required="true" %>
<%@attribute name="tipo" required="true" %>

<label for="${nome}">${rotulo}</label> 
<input type="${tipo}" name="${nome}" id="${nome}" />