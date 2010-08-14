package meupacote.dwr;

import java.util.Date;
import java.util.List;

import meupacote.controller.AutoresController;
import meupacote.Autores;

public class AjaxFacade {

	private Autores autor;
	
	public void setAutor(Autores autor) {
		this.autor = autor;
	}

	public Autores getAutor() {
		return autor;
	}

	public String salvar(int id, String nome, String email, Date nascimento) throws Exception{
		AutoresController ac = new AutoresController();
		setAutor(new Autores());

		getAutor().setNome( nome );
		getAutor().setEmail( email );
		getAutor().setNascimento( nascimento );
		
		if(id!=0){
			getAutor().setAutorId(id);
			ac.atualizar(getAutor());
		}else ac.salvar(getAutor());
		
		return "sucesso";
	}
	
	public Autores selecionarAutor(int id) throws Exception{
		AutoresController ac = new AutoresController();
		
		setAutor(ac.getAutorPorId(id));
		

		
		return getAutor();
	}
	

	public String deleteAutor(int id) throws Exception{
		AutoresController ac = new AutoresController();
		setAutor(new Autores());
		getAutor().setAutorId(id);
		ac.excluir(getAutor());
		
		return "sucesso";
	}
	

	public List listarAutores() throws Exception{
		AutoresController ac = new AutoresController();
		
		return ac.todosAutores();
	}
	
}
