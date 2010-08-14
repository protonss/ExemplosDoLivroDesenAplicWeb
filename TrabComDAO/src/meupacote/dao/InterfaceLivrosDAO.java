package meupacote.dao;
import java.util.List;
import meupacote.Livros;

public interface InterfaceLivrosDAO {
    void atualizar(Livros livro) throws LivrariaDAOException;

    void excluir(Livros livro) throws LivrariaDAOException;

    void salvar(Livros livro) throws LivrariaDAOException;

    List todosLivros( ) throws LivrariaDAOException;
    
    Livros procurarLivro(String isbn) throws  LivrariaDAOException;
    
}
