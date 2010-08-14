package meupacote.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import meupacote.Autores;
import meupacote.controller.AutoresController;

 @SuppressWarnings("serial")
public class ServletAjax extends javax.servlet.http.HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
	throws IOException 
	{
		
		String dados="";
		try{
		List autoresList = ( List )listarAutores();

		for( Iterator i=autoresList.iterator( ); i.hasNext( ); ){
			Autores a = ( Autores )i.next( );
			dados+="\n Código: "+ a.getAutorId()+
				"\n Nome: "+ a.getNome()+
				"\n E-mail: "+ a.getEmail()+
				"\n Nascimento: "+ a.getNascimento()+
				"\n";
		}
		}catch(Exception e){}
		response.setContentType("text/plain;charset=ISO-8859-1");
		response.setHeader("Cache-Control", "no-cache");
		response.setHeader("Pragma", "no-cache");
		response.setDateHeader("Expires", -1);
	    PrintWriter writer = response.getWriter();
	    writer.print(dados);  
	    writer.close();
		
	}  	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	} 
	
	protected List listarAutores() throws Exception{
		AutoresController ac = new AutoresController();
		
		return ac.todosAutores();
	}
	
}