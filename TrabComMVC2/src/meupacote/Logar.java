package meupacote;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


 public class Logar extends javax.servlet.http.HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setHeader("Cache-Control", "no-cache, must-revalidate");
		response.setHeader("Pragma", "no-cache");
		response.setHeader("Expires", "Fri, 25 Dec 1980 00:00:00 GMT");
		
		String usuario = request.getParameter("usuario");
		String senha = request.getParameter("senha");		

		Usuario user = new Usuario();
		user.setUsuario(usuario);
		user.setSenha(senha);
		if(user.verificaUsuario()){
			HttpSession sessao = request.getSession();
			sessao.setAttribute("USER", usuario);
			request.getRequestDispatcher("/logado.jsp").forward(request, response);
		}
		else{
			request.setAttribute("msg", "Usuário ou Senha inválidos");
			
			request.getRequestDispatcher("/logar.jsp").forward(request, response);
		}
	}  	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}   	  	  
   
}