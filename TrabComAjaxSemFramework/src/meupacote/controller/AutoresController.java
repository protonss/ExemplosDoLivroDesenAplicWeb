package meupacote.controller;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

import meupacote.Autores;

public class AutoresController {
	   private EntityManagerFactory emf;

	    private EntityManager getEntityManager() {
	        return emf.createEntityManager();
	    }

	    public AutoresController() {
	        emf = Persistence.createEntityManagerFactory("livraria");       
	    }

		public void salvar(Autores autor) {
	        EntityManager em = getEntityManager();
	        try {
	            em.getTransaction().begin();
	            em.persist(autor);
	            em.getTransaction().commit();
	        } catch (Exception ex) {
	                em.getTransaction().rollback();
	        } finally {
	            em.close();
	        }
		}

	 	public void excluir(Autores autor) {
	        EntityManager em = getEntityManager();
	        try {
	            em.getTransaction().begin();
	             autor = em.merge(autor);
	            em.remove(autor);
	            em.getTransaction().commit();
	        } catch (Exception ex) {
	            em.getTransaction().rollback();

	        } finally {
	            em.close();
	        }

		}       
	        
		public void atualizar(Autores autor) {
	        EntityManager em = getEntityManager();
	        try {
	            em.getTransaction().begin();
	            em.merge(autor);
	            em.getTransaction().commit();
	        } catch (Exception ex) {
	                em.getTransaction().rollback();
	        } finally {
	            em.close();
	        }

		}

	        
	    public List todosAutores() {
	       	EntityManager em = getEntityManager();
	        try{
	            Query q = 
	            	em.createQuery("select a from Autores a");

	             return q.getResultList();
	            
	        } finally {
	            em.close();
	        }	
	     }
	    
	    public Autores getAutorPorId(Integer id) {
	       	EntityManager em = getEntityManager();
	        try{
	        	String query="SELECT a FROM Autores a "+
	        				 "WHERE a.autorId=?1";
	            Query q = 
	            	em.createQuery(query).
	            											setParameter(1, id);

	             return (Autores) q.getSingleResult();
	            
	        } finally {
	            em.close();
	        }	
	     }
	    
	    
}
