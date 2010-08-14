package meupacote;

import java.util.Locale;

import javax.faces.component.UIViewRoot;
import javax.faces.context.FacesContext;
import javax.faces.event.ActionEvent;

public class SessaoBean {
	 private String locale;
		
	 public String getLocale() {
	  return locale;
	 }

	 public void setLocale(String locale) {
	  this.locale = locale;
	 }
		
	 public void setLanguage(ActionEvent event){
		 String localeId = event.getComponent().getId();

		 FacesContext context = FacesContext.getCurrentInstance(); 
		 UIViewRoot viewRoot = context.getViewRoot(); 
		 viewRoot.setLocale(new Locale(localeId));
		 locale = localeId;
	 }
	  
}
