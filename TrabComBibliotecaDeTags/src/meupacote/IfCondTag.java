package meupacote;

import javax.servlet.jsp.*;
import javax.servlet.jsp.tagext.*;


public class IfCondTag extends BodyTagSupport {
 public int doStartTag( ) throws JspTagException {
  IfTag ifTag =
   (IfTag)findAncestorWithClass(this, IfTag.class); 
  if (ifTag == null) {
   throw new JspTagException("n�o cont�m uma condi��o em if");
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

