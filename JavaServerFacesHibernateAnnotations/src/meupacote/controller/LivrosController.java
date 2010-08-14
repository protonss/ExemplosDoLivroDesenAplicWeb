package meupacote.controller;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.faces.application.FacesMessage;
import javax.faces.component.UIComponent;
import javax.faces.component.UIInput;
import javax.faces.context.FacesContext;
import javax.faces.model.DataModel;
import javax.faces.model.ListDataModel;
import javax.faces.validator.ValidatorException;

import meupacote.Livros;
import meupacote.dao.InterfaceLivrosDAO;
import meupacote.dao.LivrosDAO;

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
    
    public DataModel getTodos(){
        InterfaceLivrosDAO ldao = new LivrosDAO();
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
    public String update(){        
    	InterfaceLivrosDAO ldao = new LivrosDAO();
    	ldao.atualizar(livro);     
        return "sucesso_atu";      
    }
    public String excluir(){        
    	InterfaceLivrosDAO ldao = new LivrosDAO();
        Livros livro = getLivroFromEditOrDelete();
    	ldao.excluir(livro);     
        return "sucesso_exc";
        
    } 
    
    public String create() {
    	InterfaceLivrosDAO ldao = new LivrosDAO();
    	ldao.salvar(livro);
        return "sucesso_ins";
    }
    //validador
    public void validaISBN(FacesContext context, 
    					   UIComponent componente, 
    					   Object objeto) 
    throws ValidatorException 
    {
		 //Get the component's contents and cast it to a String
	    String isbnDigitado = (String)objeto;

       //Set the isbn pattern string
       Pattern p = Pattern.compile("\\d{1,2}-\\d{3,5}-\\d{3,4}-[0-9xX]{1}");

       //Match the given string with the pattern
       Matcher m = p.matcher(isbnDigitado);

       //Check whether match is found
       boolean matchFound = m.matches();

       if (!matchFound) {
    	   ((UIInput)componente).setValid(false);
    	   
           FacesMessage message = 
        	   new FacesMessage("ISBN Inválido.");
           context.addMessage(
        		   componente.
        		   getClientId(context), message);
       }
	}

    
    
    
    //adicionar os itens abaixo como extras
    private String keysearch;
    
    public String getKeysearch() {
        return keysearch;
    }

    public void setKeysearch(String keysearch) {
        this.keysearch = keysearch;
    }
    
    public DataModel getBuscarLivro(){
    	InterfaceLivrosDAO idao = new LivrosDAO();
        model = new ListDataModel(idao. consultarTitulos(keysearch));
        return model;
        
    }   
    
    public DataModel getTodosComAutorEditora(){
        InterfaceLivrosDAO idao = new LivrosDAO();
        model = new ListDataModel(idao.todosLivrosComAutoresEditora());
        return model;
        
    } 
    
}
