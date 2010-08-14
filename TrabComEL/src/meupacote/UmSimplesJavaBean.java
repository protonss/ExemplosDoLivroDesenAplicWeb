package meupacote;

public class UmSimplesJavaBean {
	private String nome;
	private String email;
	
	public UmSimplesJavaBean(){
		setNome("Edson");
		setEmail("edson@integrator.com.br");
	}	
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
}
