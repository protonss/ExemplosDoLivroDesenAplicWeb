package meupacote.util;

import java.text.*;
import java.util.Date;

public class ConverteDate {
	public static String formatarData(String data) throws Exception {
 		if (data == null || data.equals(""))
 			return null;
 		
 		String dataF = null;
         try {
             DateFormat df = new SimpleDateFormat("yyyy");
             Date date = (java.util.Date)df.parse(data);
             dataF = df.format(date);
         } catch (ParseException pe) {            
             throw pe;
         }
         return dataF;
 	}
	
	public static java.sql.Date formatarData(Date data) throws Exception { 
  		if (data == null)
  			return null;
  		 
          java.sql.Date date = null;
		  		date = new java.sql.Date( data.getTime( ) );
		  
          return date;
  	}
	public static Date strToDate(String data) throws Exception { 
 		if (data == null)
 			return null;
 		
 		Date dataF = null;
         try {
             DateFormat df = new SimpleDateFormat("yyyy");
             dataF = (java.util.Date)df.parse(data);

         } catch (ParseException pe) {            
             throw pe;
         }
         return dataF;
 	}
}
