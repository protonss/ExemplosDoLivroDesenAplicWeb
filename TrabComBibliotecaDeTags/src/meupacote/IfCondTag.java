package meupacote;

import javax.servlet.jsp.*;
import javax.servlet.jsp.tagext.*;


public class IfCondTag extends BodyTagSupport {
 public int doStartTag( ) throws JspTagException {
  IfTag ifTag =
   (IfTag)findAncestorWithClass(this, IfTag.class); 
  if (ifTag == null) {
   throw new JspTagException("não contém uma condição em if");
  } 
  return(EVAL_BODY_AGAIN);
 }

 public int doAfterBody( ) {
  IfTag ifTag =
   				(IfTag)findAncestorWithClass(this, IfTag.class);
  		String bodyString = getBodyContent( ).getString( );
  if (bodyString.trim( ).equals("true")) {
  		 ifTag.setCondicao(true);
  } else {
   ifTag.setCondicao(false);
  }
  return(SKIP_BODY);
 }
}

