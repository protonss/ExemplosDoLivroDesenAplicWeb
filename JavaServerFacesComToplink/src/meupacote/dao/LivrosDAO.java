package meupacote.dao;


import meupacote.Livros;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

import meupacote.dao.InterfaceLivrosDAO;

public class LivrosDAO implements InterfaceLivrosDAO{

    private EntityManagerFactory emf;

    private EntityManager getEntityManager() {
        return emf.createEntityManager();
    }

    public LivrosDAO() {
        emf = Persistence.createEntityManagerFactory("livraria");       
    }

	public void salvar(Livros livro) {
        EntityManager em = getEntityManager();
        try {
            em.getTransaction().begin();
            em.persist(livro);
            em.getTransaction().commit();
        } catch (Exception ex) {
                em.getTransaction().rollback();
        } finally {
            em.close();
        }
	}

 	public void excluir(Livros livro) {
        EntityManager em = getEntityManager();
        try {
            em.getTransaction().begin();
             livro = em.merge(livro);
            em.remove(livro);
            em.getTransaction().commit();
        } catch (Exception ex) {
            em.getTransaction().rollback();

        } finally {
            em.close();
        }

	}       
        
	public void atualizar(Livros livro) {
        EntityManager em = getEntityManager();
        try {
            em.getTransaction().begin();
            em.merge(livro);
            em.getTransaction().commit();
        } catch (Exception ex) {
                em.getTransaction().rollback();
        } finally {
            em.close();
        }

	}

        
    public List todosLivros() {
       	EntityManager em = getEntityManager();
        try{
            Query q = 
            	em.createQuery("select object(l) from Livros as l");

             return q.getResultList();
            
        } finally {
            em.close();
        }	
     }

 
	
	   public List todosLivros(int maximo, int inicio) {
	       	EntityManager em = getEntityManager();
	        try{
	            Query q = 
	            	em.createQuery("select l from Livros l").
	            	setMaxResults(maximo).
	            	setFirstResult(inicio);

	             return q.getResultList();
	            
	        } finally {
	            em.close();
	        }	
	     }	
	   
	    public int totalDeLivros() {
	        EntityManager em = getEntityManager();
	        try{
	            int total = ((Long) 
	            				em.createQuery("select count(l) from Livros l").
	            									getSingleResult()).
	            									intValue();
	            return total;
	        } finally {
	            em.close();
	        }
	    }
	   
	
	
	
	public List consultarTitulos(String titulo) {
	    EntityManager em = getEntityManager();
	    try{
	        Query q = em.createQuery("select object(lv) "+
	                                "from Livros as lv "+
	                                 "where lv.titulo like ?1" ).
	                                 setParameter(1,"%"+titulo+"%");
	
	         return q.getResultList();
	        
	    } finally {
	        em.close();
	    }
	}

	public List todosLivrosComAutoresEditora() {
		EntityManager em = getEntityManager();
		Query query = em.createNamedQuery("Publicacao.listarPorLivrosEditora");
	
		return query.getResultList();
		 
	}

	public Livros consultarISBN(String isbn) {
		EntityManager em = getEntityManager();
	    try{
	        Query q = em.createQuery("select l "+
	                                "from Livros l "+
	                                 "where l.isbn= ?1" ).
	                                 setParameter(1,isbn);
	
	         return (Livros) q.getSingleResult();
	        
	    } finally {
	        em.close();
	    }
	}


	
	
	
}