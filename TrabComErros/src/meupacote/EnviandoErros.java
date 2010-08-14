package meupacote;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

 public class EnviandoErros extends javax.servlet.http.HttpServlet {

	public void destroy() {
		super.destroy();
	}   	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.sendError(response.SC_FORBIDDEN,"Você não tem permissão");
		
	}  	  	  	  

	public void init() throws ServletException {
		super.init();
	}   
}