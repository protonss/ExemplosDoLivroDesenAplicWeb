<%@ page language="java" 
	contentType="text/html"
	pageEncoding="ISO-8859-1" 
	import="org.apache.commons.mail.*, 
			java.net.URL,
			meupacote.Autenticar"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Enviando e-mail com Common Email e Anexo</title>
</head>
<body>
<%
	HtmlEmail email = new HtmlEmail();

	email.setHostName("localhost"); // o servidor SMTP para envio do e-mail
	
	email.setAuthenticator(new Autenticar("edson@integratorjava.com.br","integrator"));//autenticação

	email.addTo("edgonn@gmail.com", "Edson Gonçalves"); //destinatário

	email.setFrom("edson@integrator.com.br", "Edson"); // remetente

	email.setSubject("Mensagem de Teste"); // assunto do e-mail

	URL url = new URL("http://www.apache.org/images/asf_logo_wide.gif");

	String cid = email.embed(url, "Logo do Projeto Apache");

	email.setHtmlMsg("Logo do Apache - <img src=\"cid:"+cid+"\" />");

	email.setTextMsg("Mensagem em texto simples, caso não suporte HTML");

	email.send(); 
%>
</body>
</html>
