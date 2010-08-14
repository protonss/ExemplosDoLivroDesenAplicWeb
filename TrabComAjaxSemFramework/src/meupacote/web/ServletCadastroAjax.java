package meupacote.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import meupacote.Autores;
import meupacote.controller.AutoresController;



 @SuppressWarnings("serial")
public class ServletCadastroAjax extends javax.servlet.http.HttpServlet {

	 private static Date strToDate(String data) throws Exception { 
	 		if (data == null)
	 			return null;
	 		
	 		Date dataF = null;
	         try {

	             DateFormat dateFormat = new SimpleDateFormat("MM/dd/yyyy");
	             long timestamp = dateFormat.parse(data).getTime();
	             dataF = new Date(timestamp);

	         } catch (ParseException pe) {            
	             throw pe;
	         }
	         return dataF;
	 	}
	 
	 
	 
	 protected void doPost(HttpServletRequest request, HttpServletResponse response) 
		throws IOException
		{

			String nome = request.getParameter("nome");
			String email = request.getParameter("email");
			String nascimento = request.getParameter("nascimento");

			int id=0;
			Date data=null;
			
			try{

				
				if(!nascimento.equals("")){
					data = strToDate(nascimento);	
				}   
				Autores a = new Autores();
				AutoresController ac = new AutoresController();
				a.setAutorId(id);
				a.setNome(nome);
				a.setEmail(email);
				a.setNascimento(data);
				ac.salvar( a );
				
				response.setContentType("text/plain;charset=ISO-8859-1");
				response.setHeader("Cache-Control", "no-cache");
				response.setHeader("Pragma", "no-cache");
				response.setDateHeader("Expires", -1);
			    PrintWriter writer = response.getWriter();
			    writer.print("Cadastrado com sucesso");  
			    writer.close();
			}catch(Exception e){e.printStackTrace();}
		}
}