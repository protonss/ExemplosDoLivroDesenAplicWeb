package meupacote;

import java.util.Hashtable;

public class ValidandoCadastroJBean {
	private String nome="";
	private String email="";
	private String url="";
	private String enviar;
	private Hashtable<String, String> erros = new Hashtable<String, String>();
	
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
	public void setUrl(String url) {
		this.url = url;
	}
	public String getUrl() {
		return url;
	}
	
	public void setEnviar(String enviar) {
		this.enviar = enviar;
	}
	
	
	public boolean isSubmit(){
		boolean r=true;
		if( enviar == null)
			r=false;
			
		return r;
	}
	
	public boolean isValid(){
		boolean r=true;
		if( (nome == null) || nome.equals("") )
		{
			erros.put("nome","Por favor, digite um nome.<br />");
			r=false;
		}	
		if( (email == null) || email.equals("") || (email.indexOf("@")==-1) )
		{
			erros.put("email","Por favor, digite um e-mail válido.<br />");
			r=false;
		}
		return r;
	}
	public String errors(String s)
	{
		String msg=(String) erros.get(s);
		return (msg==null)? "": msg;
	}
		
}
