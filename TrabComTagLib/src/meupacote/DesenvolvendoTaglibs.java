package meupacote;

import java.io.IOException;
import javax.servlet.jsp.*;
import javax.servlet.jsp.tagext.TagSupport;

public class DesenvolvendoTaglibs extends TagSupport {
	public int doStartTag() throws JspException {
        try {
            pageContext.getOut().print("Desenvolvendo com taglib");
        } catch (IOException ioe) {
            throw new JspTagException("Erro: IOException");
        }
        return SKIP_BODY;
    }
}
