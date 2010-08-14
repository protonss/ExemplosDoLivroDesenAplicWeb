package meupacote;

import javax.servlet.jsp.*;
import javax.servlet.jsp.tagext.*;
import java.io.*;


public class LoopTag extends BodyTagSupport { 
 private int contar;

 public void setContar(String cont) { 
  try {
   contar = Integer.parseInt(cont);
  } catch(NumberFormatException nfe) {
   contar = 1;
  }
 }
  
 public int doAfterBody() {
  if (contar-- >= 1) {
   BodyContent bodyC = getBodyContent(); 
   try {
    JspWriter out = bodyC.getEnclosingWriter();
    out.println(bodyC.getString()); 

    bodyC.clearBody(); 

   } catch(IOException ioe) {
    System.out.println("Erro: " + ioe.getMessage());
   }
   return(EVAL_BODY_AGAIN);
  } else {
   return(SKIP_BODY);
  }
 }
}
