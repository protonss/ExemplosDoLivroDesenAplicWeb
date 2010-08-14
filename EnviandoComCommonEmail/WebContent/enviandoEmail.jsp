<%@ page language="java" contentType="text/html"
	pageEncoding="ISO-8859-1" import="org.apache.commons.mail.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Enviando e-mail com Common Email e Anexo</title>
</head>
<body>
<%
	EmailAttachment attachment = new EmailAttachment();

	attachment.setPath("C:/temp/logotipo.jpg"); //caminho da imagem

	attachment.setDisposition(EmailAttachment.ATTACHMENT);

	attachment.setDescription("Logotipo da empresa Integrator");

	attachment.setName("Integrator");

	MultiPartEmail email = new MultiPartEmail();

	email.setHostName("localhost"); // o servidor SMTP para envio do e-mail

	email.addTo("edson@integrator.com.br", "Edson Gonçalves"); //destinatário

	email.setFrom("edson@integrator.com.br", "Edson"); // remetente

	email.setSubject("Mensagem de Teste"); // assunto do e-mail

	email.setMsg("Teste de Email utilizando commons email"); //conteudo do e-mail

	email.attach(attachment);

	email.send(); //envia o e-mail
%>
</body>
</html>
