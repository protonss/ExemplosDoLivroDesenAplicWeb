package meupacote;

import java.util.Date;
import java.text.*;

public class FormatandoDatas {
	private DateFormat dateFormat;
	private Date data;
	
	public FormatandoDatas() {
		dateFormat = DateFormat.getInstance();
		data = new Date();
	}
	
	public String getData() {
		return dateFormat.format(data);
	}
	
	public void setData(Date data) {
		this.data = data;
	}
	
	public void setFormato(String formato) {
		this.dateFormat = new SimpleDateFormat(formato);
	}	
	
}
