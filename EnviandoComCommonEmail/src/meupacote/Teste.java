package meupacote;

import java.net.MalformedURLException;
import java.net.URL;

import meupacote.*;

import org.apache.commons.mail.EmailException;
import org.apache.commons.mail.HtmlEmail;

public class Teste {

	public Teste() throws EmailException, MalformedURLException{
		
		HtmlEmail email = new HtmlEmail();

		email.setHostName("localhost"); // o servidor SMTP para envio do e-mail
		
		email.setAuthenticator(new Autenticar("edson@integratorjava.com.br","integrator"));

		email.addTo("edgonn@gmail.com", "Edson Gonçalves"); //destinatário

		email.setFrom("edson@integrator.com.br", "Edson"); // remetente

		email.setSubject("Mensagem de Teste"); // assunto do e-mail

		URL url = new URL("http://www.apache.org/images/asf_logo_wide.gif");

		String cid = email.embed(url, "Logo do Projeto Apache");

		email.setHtmlMsg("Logo do Apache - <img src=\"cid:"+cid+"\" />");

		email.setTextMsg("Mensagem em texto simples, caso não suporte HTML");

		email.send(); 
		
	}
	
	
}
