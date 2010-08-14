package meupacote;

import javax.servlet.jsp.*;
import javax.servlet.jsp.tagext.*;
import java.io.*;

public class IfElseTag extends BodyTagSupport {
 public int doStartTag( ) throws JspTagException {
  IfTag ifTag =
   (IfTag)findAncestorWithClass(this, IfTag.class);
  if (ifTag == null) {
   throw new JspTagException("não contém uma condição em if");
  } else if (!ifTag.temCondicao()) {
   throw new JspTagException("a condição deve vir antes dessa tag");
  }
  return(EVAL_BODY_AGAIN);
 }

 public int doAfterBody( ) {
  IfTag ifTag =
   (IfTag)findAncestorWithClass(this, IfTag.class);
  if (!ifTag.getCondicao( )) {
   try {
    BodyContent body = getBodyContent( );
    JspWriter out = body.getEnclosingWriter( );
    out.print(body.getString( ));
   } catch(IOException ioe) {
    System.out.println("Erro: " + ioe.getMessage( ));
   }
  }
  return(SKIP_BODY);
 }
}

