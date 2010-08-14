package meupacote;

import java.io.*;
import javax.servlet.jsp.*;
import javax.servlet.jsp.tagext.*;

public class UtilizandoSimpleTags extends SimpleTagSupport {
	public void doTag() throws JspException, IOException 
	  {
	    getJspContext().getOut().write(
	         "Utilizando SimpleTags!"
	    );
	  }
}
