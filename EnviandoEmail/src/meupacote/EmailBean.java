package meupacote;

import java.util.Date;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class EmailBean {

	private String to = null;
	private String from = null;
	private String subject = null;
	private String message = null;
	public static Properties props = null;
	public static Session session = null;

	static{

		props = System.getProperties();
		props.put("mail.smtp.host", "localhost");
		props.put("mail.smtp.auth","true");
		session = Session.getInstance(props,
				  new Autenticar("edson@integratorjava.com.br","integrator")
		  );
	}


	public void setTo(String to) {
		this.to = to;
	}

	public void setFrom(String from) {
		this.from = from;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public void sendMail() throws Exception {
		
		
		if(!this.verificarCampos())
			throw new Exception("Não foi enviado o e-mail.");
		try {
			MimeMessage message = new MimeMessage(session);
			message.setRecipient(Message.RecipientType.TO,
					new InternetAddress(this.to));
			message.setFrom(new InternetAddress(this.from));
			message.setSubject(this.subject);
			message.setSentDate(new Date());
			message.setContent(this.message, "text/html");
			Transport.send(message);
		} catch (MessagingException e) {
			throw new Exception(e.getMessage());
		}
		catch(Exception e){
			e.printStackTrace();
		}
	}


	private boolean verificarCampos() {
		if((this.to == null) || (this.from == null) ||
				(this.subject == null) || (this.message == null))
			return false;

		if((this.to.indexOf("@") == -1) ||
				(this.to.indexOf(".") == -1))
			return false;

		if((this.from.indexOf("@") == -1) ||
				(this.from.indexOf(".") == -1))
			return false;

		return true;
	}	
}
