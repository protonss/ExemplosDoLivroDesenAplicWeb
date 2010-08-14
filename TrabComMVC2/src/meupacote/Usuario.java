package meupacote;

public class Usuario {
	private String usuario=null;
	private String senha=null;
	public void setUsuario(String usuario) {
		this.usuario = usuario;
	}
	public String getUsuario() {
		return usuario;
	}
	public void setSenha(String senha) {
		this.senha = senha;
	}
	public String getSenha() {
		return senha;
	}
	public boolean verificaUsuario(){
		if(this.usuario != null && this.senha != null){
			if(this.usuario.equals("edson") && this.senha.equals("123"))
				return true;
		}
		return false;
	}

}
