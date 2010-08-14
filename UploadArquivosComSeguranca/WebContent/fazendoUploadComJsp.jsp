<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Fazendo Upload de arquivos</title>
</head>
<body>
	<jsp:useBean id="upl" scope="page" class="meupacote.UploadBean" />
	<jsp:setProperty name="upl" property="diretorio" value="arquivos"/>
	<jsp:setProperty name="upl" property="size" value="1"/> 
	<jsp:setProperty name="upl" property="extensoesPermitidas" value="jpg, gif, pdf, doc, odt, zip"/>
<%
	if(upl.doFilePost(request,application)){
		out.println(upl.getFilename());
	}
	else{
		if(upl.getErro()!=null)
			out.println(upl.getErro());
	}
%>

	<form method="post" action="fazendoUploadComJsp.jsp" enctype="multipart/form-data">
	     Arquivo: <input type="file" name="file" /><br />
	     <input type="submit" name="submit" value="Enviar" />
	</form>
</body>
</html>