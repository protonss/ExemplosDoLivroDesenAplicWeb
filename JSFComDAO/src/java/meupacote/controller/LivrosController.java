package meupacote.controller;

import javax.faces.model.DataModel;
import javax.faces.model.ListDataModel;
import meupacote.Livros;
import meupacote.dao.InterfaceLivrosDAO;
import meupacote.dao.LivrariaDAO;
import meupacote.dao.LivrariaDAOException;

public class LivrosController {
    
    private Livros livro;

    private DataModel model;

    public String novoLivro() {
        this.livro= new Livros();
        return "novo";
    }

    public Livros getLivro() {
        return livro;
    }

    public void setLivro(Livros livro) {
        this.livro = livro;
    }
    
    public DataModel getTodos() throws LivrariaDAOException{
    	InterfaceLivrosDAO ldao = new LivrariaDAO();
        model = new ListDataModel(ldao.todosLivros());
        return model;
        
    } 
    public Livros getLivroFromEditOrDelete() {
            Livros livro = (Livros) model.getRowData();
            return livro;

    }   
      
    public String editar(){        
        Livros livro = getLivroFromEditOrDelete();
        setLivro(livro);      
        return "editar";
        
    }
    public String update() throws LivrariaDAOException{        
    	InterfaceLivrosDAO ldao = new LivrariaDAO();
    	ldao.atualizar(livro);     
        return "sucesso_atu";      
    }
    public String excluir() throws LivrariaDAOException{        
    	InterfaceLivrosDAO ldao = new LivrariaDAO();
        Livros livro = getLivroFromEditOrDelete();
    	ldao.excluir(livro);     
        return "sucesso_exc";
        
    } 
    
    public String create() throws LivrariaDAOException {
    	InterfaceLivrosDAO ldao = new LivrariaDAO();
    	ldao.salvar(livro);
        return "sucesso_ins";
    }
}
