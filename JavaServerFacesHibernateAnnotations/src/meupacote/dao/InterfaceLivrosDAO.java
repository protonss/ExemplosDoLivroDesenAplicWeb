package meupacote.dao;

import java.util.List;

import meupacote.Livros;

public interface InterfaceLivrosDAO {

	public abstract void salvar(Livros livro);

	public abstract void excluir(Livros livro);

	public abstract void atualizar(Livros livro);

	public abstract List todosLivros();
	
	public abstract List consultarTitulos(String titulo);
	
	public abstract List todosLivrosComAutoresEditora();

}