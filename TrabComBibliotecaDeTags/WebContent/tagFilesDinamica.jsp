<%@ page language="java" 
	contentType="text/html"
    pageEncoding="ISO-8859-1"
 %>
 <%@ taglib tagdir="/WEB-INF/tags" prefix="t" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Trabalhando com Custom Tags</title>
</head>
<body>
<form>
<t:tagdinamica nome="estados" 
		opcoes="SP, RJ, MG, PR, RS" 
		delimitadores=" ," 
		tamanho="3" 
		/>
</form>
</body>
</html>