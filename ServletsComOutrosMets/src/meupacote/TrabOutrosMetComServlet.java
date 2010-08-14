package meupacote;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class for Servlet: TrabOutrosMetComServlet
 * 
 */
public class TrabOutrosMetComServlet extends javax.servlet.http.HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 7790092311853693637L;

	/*
	 * (non-Java-doc)
	 * 
	 * @see javax.servlet.http.HttpServlet#HttpServlet()
	 */
	public TrabOutrosMetComServlet() {
		super();
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see javax.servlet.Servlet#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
		super.destroy();
	}

	/*
	 * (non-Java-doc)
	 * 
	 * @see javax.servlet.http.HttpServlet#doPost(HttpServletRequest request,
	 * HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String[] e = request.getParameterValues("musica");
		String html = "<html><head>"
				+ "<title>Trabalhando com Outros métodos em Servlet</title>"
				+ "</head>" + "<body>" + "<h2>Músicas escolhidas:</h2>";
		for (int i = 0; i < e.length; i++) {
			html += "<strong>" + e[i] + "</strong><br />";
		}
		html += "</body></html>";

		response.setContentType("text/html");
		PrintWriter writer = response.getWriter();
		writer.print(html);
		writer.close();

	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see javax.servlet.GenericServlet#init()
	 */
	public void init() throws ServletException {
		// TODO Auto-generated method stub
		super.init();
	}
}