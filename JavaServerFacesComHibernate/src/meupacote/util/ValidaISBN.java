package meupacote.util;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.faces.application.FacesMessage;
import javax.faces.component.UIComponent;
import javax.faces.context.FacesContext;
import javax.faces.validator.Validator;
import javax.faces.validator.ValidatorException;

public class ValidaISBN implements Validator{

	public void validate(FacesContext context, UIComponent componente, Object objeto) throws ValidatorException {
		 //Get the component's contents and cast it to a String
	    String isbnDigitado = (String)objeto;

        //Set the isbn pattern string
        Pattern p = Pattern.compile("\\d{1,2}-\\d{3,5}-\\d{3,4}-[0-9xX]{1}");

        //Match the given string with the pattern
        Matcher m = p.matcher(isbnDigitado);

        //Check whether match is found
        boolean matchFound = m.matches();

        if (!matchFound) {
            FacesMessage message = new FacesMessage();
            message.setDetail("ISBN inválido.");
            message.setSummary("ISBN inválido.");
            message.setSeverity(FacesMessage.SEVERITY_ERROR);
            throw new ValidatorException(message);
        }
	}

	
	
}
