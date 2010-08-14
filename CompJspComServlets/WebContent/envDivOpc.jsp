<%@ page language="java" 
	   contentType="text/html"
	   pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>Selecione os programas que você usa</title>
</head>
<body>
<%
	String[ ] e = request.getParameterValues("programas"); 

	if(e!=null){ 
		out.println("<h2>Você selecionou os seguintes programas</h2>");
				
		for(int i=0; i< e.length; i++){	
			out.println( "<strong>"+e[i]+"</strong><br />" );
		}
	
	}

%>
	<h2>Selecione um ou mais programas usando o Ctrl</h2>
	<form action="envDivOpc.jsp" method="post">
		<select name="programas" size="4" multiple="multiple">
			<option value="Eclipse">Eclipse</option>
			<option value="NetBeans">NetBeans</option>
			<option value="VisualStudio.NET">VisualStudio.NET</option>
			<option value="BrOffice.org">BrOffice.org</option>
			<option value="Dreamweaver">Dreamweaver</option>
		</select>
		<input type="submit" name="btEnviar" value="Enviar" />
	</form>
</body>
</html>
