package meupacote;

import javax.faces.application.FacesMessage;
import javax.faces.context.FacesContext;

public class MeuBean {
	private String nome = null;
	
	private String email = null;
	
	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getNome() {
		return nome;
	}

 	public void setEmail(String email) {
		this.email = email;
	}

	public String getEmail() {
		return email;
	}

	public String acao() {
		boolean sucesso = true;
		FacesContext context = FacesContext.getCurrentInstance();
		if (nome != null) {
			for (int i = 0; i < nome.length(); i++) {
				char c = nome.charAt(i);
				if (!Character.isLetter(c) && 
						!Character.isSpaceChar(c)) 
				{
					String msg=
						"Digite somente caracteres alfabéticos.";
					FacesMessage message = 
						new FacesMessage(msg);
					context.addMessage("formulario", message);
					sucesso = false;
					break;
				}
			}
		} else {
			sucesso = false;
		}
		return (sucesso ? "sucesso" : "falha");
	}

}

