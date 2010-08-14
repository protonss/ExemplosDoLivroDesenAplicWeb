<%@ page language="java" contentType="text/htm"
    pageEncoding="ISO-8859-1"
    import="java.util.*, javax.mail.*, javax.mail.internet.*,
    meupacote.Autenticar, javax.activation.*"
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Enviando meu primeiro E-mail</title>
</head>
<body>
<%

  Properties props = new Properties();
  props.put("mail.smtp.host", "localhost");
  props.put("mail.smtp.auth","true");


  Session s = Session.getDefaultInstance(props,
		  new Autenticar("edson@integratorjava.com.br","integrator")
  );	
  
  MimeMessage message = new MimeMessage(s);

  InternetAddress from = new InternetAddress("edson@integrator.com.br");
  message.setFrom(from);
  InternetAddress to = new InternetAddress("edson@teste.com");
  message.addRecipient(Message.RecipientType.TO, to);
  
  message.setSubject("Teste usando JavaMail.");
  message.setSentDate(new Date());
  
  // cria a Multipart
  Multipart mp = new MimeMultipart();
   
  // adiciona o conteúdo
  MimeBodyPart conteudo= new MimeBodyPart();
  conteudo.setContent("E-mail com conteúdo anexo", "text/html");

  mp.addBodyPart(conteudo);
  
  // anexa o arquivo na mensagem
  MimeBodyPart anexo= new MimeBodyPart();
  
  FileDataSource fds = new FileDataSource("C:/temp/logotipo.jpg");
  anexo.setDataHandler(new DataHandler(fds));
  anexo.setFileName(fds.getName());

  mp.addBodyPart(anexo);

  // adiciona a Multipart na mensagem
  message.setContent(mp);

  
  Transport.send(message);
%>
<h1>A mensagem foi enviada com sucesso</h1>
</body>
</html>