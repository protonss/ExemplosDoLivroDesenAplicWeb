package meupacote.web;

import javax.faces.application.FacesMessage;
import javax.faces.context.FacesContext;
import javax.faces.model.DataModel;
import javax.faces.model.ListDataModel;

import meupacote.Autores;
import meupacote.controller.AutoresController;

public class AutoresAjax4jsf {
    
    private Autores autor = new Autores();
    
    
    private boolean atualizando=false;

    public void novoAutor() {
        this.autor = new Autores();
    }

	public void setAutor(Autores autor) {
		this.autor = autor;
	}

	public Autores getAutor() {
		return autor;
	}
    
	public String salvar(){
		AutoresController ac = new AutoresController();
		if(atualizando){		
			ac.atualizar(autor);
			addMessage("Autor atualizado com sucesso!");
			atualizando=false;
		}
		else{
			ac.salvar(autor);
			addMessage("Cadastro efetuado com sucesso!");
			
		}
		novoAutor();
		return "OK";
	}
	
    public static void addMessage(String msg) {
		  FacesContext.getCurrentInstance().
		  			addMessage(null, new FacesMessage(msg));
	}
    
    private DataModel model;
    
    public DataModel getTodosAutores(){
    	AutoresController ac = new AutoresController();
        model = 
        	new ListDataModel(
        			ac.todosAutores()
        			);
        return model;
        
    }
    
    public String excluir(){   
    	AutoresController ac = new AutoresController();
        Autores autor = (Autores) model.getRowData();
    	ac.excluir(autor);    
    	addMessage("Autor excluido com sucesso!");
        return "sucesso";
        
    } 
    
    public String prepararPAlterar(){
    	autor = (Autores) model.getRowData();
    	atualizando=true;
    	return "sucesso";
    }
	
	
	
}
