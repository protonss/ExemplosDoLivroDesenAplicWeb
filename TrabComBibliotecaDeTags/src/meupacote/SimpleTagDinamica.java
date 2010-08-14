package meupacote;

import java.io.*;
import javax.servlet.jsp.*;
import javax.servlet.jsp.tagext.*;

public class SimpleTagDinamica extends SimpleTagSupport {
	String nome = "";
	  public void setNome(String nome) 
	  {
	    this.nome = nome;
	  }
	  
	  public void doTag() throws JspException, IOException 
	  {
	    getJspContext().getOut().write(nome);   
	  }
}
