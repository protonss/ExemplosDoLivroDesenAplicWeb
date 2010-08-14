package meupacote.dao;

import java.util.List;

import meupacote.Livros;

public interface InterfaceLivrosDAO {

	public abstract void salvar(Livros livro);

	public abstract void excluir(Livros livro);

	public abstract void atualizar(Livros livro);

	public abstract List todosLivros();
	
	public abstract List todosLivros(int m, int p);
	
	public abstract List consultarTitulos(String titulo);
	
	public abstract List todosLivrosComAutoresEditora();
	
	public abstract Livros consultarISBN(String isbn);
	
	public abstract int totalDeLivros();

}