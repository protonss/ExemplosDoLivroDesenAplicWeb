package meupacote.util;

import java.util.Date;
import java.util.List;

import javax.persistence.*;

import org.apache.commons.lang.builder.*;

public class TestandoQuerys {
		private String query=
			"<h3>Query: ";
		
	    private EntityManagerFactory emf;	
	    
	    private String erro=null;
	    
	    private String resultados=
	    			"<h4>Resultado encontrados:</h4>";
	    
	    
		public String getQuery() {
			return query;
		}
		
	    public void setErro(String erro) {
			this.erro = erro;
		}
		public String getErro() {
			return erro;
		}

		private EntityManager getEntityManager() {
	        return  emf.createEntityManager();
	    }

	    public TestandoQuerys() {
	        emf = Persistence.createEntityManagerFactory("livraria");       
	    }

		public void setQuery(String query){
			this.query += query+"</h3>";
			String resultado="";
			EntityManager em = getEntityManager();
	            try {
	                List result = em.createQuery(query).getResultList();
	                if (result.size() > 0) {
	                    for (Object o : result) {
	                    	resultado = mostrarResultado(o);
	                    }
	                } else {
	                	setErro("Dados não encontrados");
	                }
	            } catch (Exception e) {
	            	setErro("Existe um erro na sua consulta");
	                e.printStackTrace();
	            }
	            this.query += resultado;
	        }
		
	    
	    private String mostrarResultado(Object objeto) throws Exception {
	    	
	    	if (objeto == null) {
	    		setErro("NULL");
	        } else if (objeto instanceof Object[]) {
	            Object[] row = (Object[]) objeto;
	            for (int i = 0; i < row.length; i++) {
	                mostrarResultado(row[i]);
	            }
	        } else if (objeto instanceof Long ||
	                   objeto instanceof Double ||
	                   objeto instanceof String ||
	                   objeto instanceof Date) {
	        	resultados+="<br />"+objeto.getClass().
	        								getName() + 
	        								": " + objeto;
	        } else {
	        	resultados+=ReflectionToStringBuilder.
	        						toString(objeto, 
	        								ToStringStyle.SHORT_PREFIX_STYLE)+
	        								"<br />";
	        }
	    	return resultados+"<br />";
	    }
}
