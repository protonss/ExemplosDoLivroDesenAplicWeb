package meupacote.dao;

import java.util.List;

import meupacote.Livros;
import meupacote.util.ConnectLivrariaFactory;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

public class LivrosDAO implements InterfaceLivrosDAO {
	private Session session;

	public void salvar(Livros livro) {

		session = ConnectLivrariaFactory.getInstance();
		Transaction tx = null;

		try {
			tx = session.beginTransaction();
			session.save(livro);
			tx.commit();
		} catch (HibernateException e) {
			e.printStackTrace();
                        tx.rollback();
		} finally {
			session.close();
		}
	}

 	public void excluir(Livros livro) {

		session = ConnectLivrariaFactory.getInstance();
		Transaction tx = null;

		try {
			tx = session.beginTransaction();
			session.delete(livro);
			tx.commit();
		} catch (HibernateException e) {
			e.printStackTrace();
                        tx.rollback();
		} finally {
			session.close();
		}
	}       

	public void atualizar(Livros livro) {

		session = ConnectLivrariaFactory.getInstance();
		Transaction tx = null;

		try {
			tx = session.beginTransaction();
			session.update(livro);
			tx.commit();
		} catch (HibernateException e) {
			e.printStackTrace();
                        tx.rollback();
		} finally {
			session.close();
		}
	}
        

    public List todosLivros() {
		session = ConnectLivrariaFactory.getInstance();
		List list = session.createQuery("from Livros").list();
		return list;
	}

	public List consultarTitulos(String titulo) {
		session = ConnectLivrariaFactory.getInstance();
		Query query =  session.createQuery(
				"from Livros l where l.titulo like :titulo" );
		List list = query.setString("titulo", "%"+titulo+"%").list();
		
		
		return list;
	}
	
    public List todosLivrosComAutoresEditora() {
		session = ConnectLivrariaFactory.getInstance();
		String query ="select p.livros.isbn, p.livros.titulo, " +
				"p.autores.nome, p.editora.editora"+
					" from Publicacao p";
			
		
		
		List list = session.createQuery(query).list();
		return list;
	}	
	
	
}
