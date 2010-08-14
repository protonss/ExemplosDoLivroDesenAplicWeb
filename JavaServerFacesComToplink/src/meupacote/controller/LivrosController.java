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
    
    private int maxPorPagina=3;
    
    private int paginaAtual=0;

    
    public DataModel getTodos(){
        InterfaceLivrosDAO ldao =  new LivrosDAO();
        model = 
        	new ListDataModel(
        			ldao.todosLivros(maxPorPagina, 
        							 paginaAtual)
        			);
        return model;
        
    }      
       
    //  paginação pelo JSF
    public DataModel getTodosLivros(){
        InterfaceLivrosDAO ldao =  new LivrosDAO();
        model = 
        	new ListDataModel(
        			ldao.todosLivros()
        			);
        return model;
        
    } 
    
    public void setMaxPorPagina(int maxPorPagina) {
        this.maxPorPagina=maxPorPagina;
    }   
    
    public String pPrimeiraPagina( ) {

    	paginaAtual = 0;

        return "paginar";

    }



    public String pPaginaAnterior( ) {

    	paginaAtual -= maxPorPagina;

        if (paginaAtual < 0) {

        	paginaAtual = 0;

        }

        return "paginar";

    }



    public String pProximaPagina( ) {

    	paginaAtual += maxPorPagina;

        if (paginaAtual >= getTotal()) {

        	paginaAtual = getTotal() - maxPorPagina;

            if (paginaAtual < 0) {

            	paginaAtual = 0;

            }

        }

        return "paginar";

    }



    public String pUltimaPagina( ) {

    	paginaAtual = getTotal() - maxPorPagina;

        if (paginaAtual < 0) {

        	paginaAtual = 0;

        }

        return "paginar";

    }
    
    
    
    
    // Fim  paginação pelo JSF   
    
    public String primeiraPagina(){
    	paginaAtual = 0;
    	return "mostrar";
    }

    public String ultimaPagina(){
    	int rest = getTotal() % maxPorPagina;

    	if(rest!=0)
    		paginaAtual = getTotal() - rest;
    	else
    		paginaAtual = getTotal() - maxPorPagina;
 
    		
    	
    	return "mostrar";
    }   
    

	public int getPaginaAtual() {
		return paginaAtual;
	}

	public int getTotal(){
		
		InterfaceLivrosDAO idao = new LivrosDAO();
		return idao.totalDeLivros();
		
	}

    public int getProximaPagina() {
    	int total = getTotal();
        int soma =  paginaAtual + maxPorPagina;
        int proxima = ( soma > total )? total : soma;
        return proxima;
    }

    public int getMaxPorPagina() {
        return maxPorPagina;
    }
       
    public String proxima() {
    	int soma = paginaAtual + maxPorPagina;
        if ( soma < getTotal()) paginaAtual += maxPorPagina;

        return "mostrar";
    }

    public String anterior() {
    	paginaAtual -= maxPorPagina;
    	
        if (paginaAtual < 0)paginaAtual = 0;

        return "mostrar";
    }
    
    
    
    
}
