package meupacote;

import javax.servlet.jsp.tagext.*;

public class IfTag extends TagSupport {
 private boolean condicao;
 private boolean temCondicao = false;

 public void setCondicao(boolean condicao) { 
  this.condicao = condicao;
  temCondicao = true;
 }

 public boolean getCondicao( ) { 
  return(condicao);
 }

 public void setTemCondicao(boolean flag) { 
  this.temCondicao = flag;
 }

 public boolean temCondicao( ) {
  return(temCondicao);
 }
 
 public int doStartTag( ) {
  return(EVAL_BODY_INCLUDE);
 }
}
