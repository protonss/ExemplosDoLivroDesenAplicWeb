package meupacote;

import java.util.Collection;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * @author  Edson
 */
@Entity
@Table(name = "livros")
@SuppressWarnings("serial")
public class Livros implements java.io.Serializable{
	
	/**
	 * @uml.property  name="isbn"
	 */
	@Id
	@Column(name="isbn")
	private String isbn;
	
	/**
	 * @uml.property  name="titulo"
	 */
	@Column(name="titulo")
	private String titulo;
	
	/**
	 * @uml.property  name="edicao"
	 */
	@Column(name="edicao_num")
	private int edicao;
	
	/**
	 * @uml.property  name="anoPublicacao"
	 */
	@Column(name="ano_publicacao")
	private String anoPublicacao;
	
	/**
	 * @uml.property  name="descricao"
	 */
	@Column(name="descricao")
	private String descricao;
	

	@OneToMany(cascade=CascadeType.ALL, mappedBy="livros")
	private Collection<Publicacao> publicacao;
	

	public Livros() {
	}
	public Livros(String isbn, String titulo, 
			int edicao, String anoPublicacao, 
			String descricao,
			Collection<Publicacao> publicacao) {
		
		this.isbn=isbn;
		this.titulo=titulo;
		this.edicao=edicao;
		this.anoPublicacao=anoPublicacao;
		this.descricao=descricao;	
		this.publicacao = publicacao;
	}

	/**
	 * @param isbn  the isbn to set
	 * @uml.property  name="isbn"
	 */
	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}

	/**
	 * @return  the isbn
	 * @uml.property  name="isbn"
	 */
	public String getIsbn() {
		return isbn;
	}

	/**
	 * @param titulo  the titulo to set
	 * @uml.property  name="titulo"
	 */
	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}
	
	/**
	 * @return  the titulo
	 * @uml.property  name="titulo"
	 */
	public String getTitulo() {
		return titulo;
	}

	/**
	 * @param edicao  the edicao to set
	 * @uml.property  name="edicao"
	 */
	public void setEdicao(int edicao) {
		this.edicao = edicao;
	}
	
	/**
	 * @return  the edicao
	 * @uml.property  name="edicao"
	 */
	public int getEdicao() {
		return edicao;
	}

	/**
	 * @param anoPublicacao  the anoPublicacao to set
	 * @uml.property  name="anoPublicacao"
	 */
	public void setAnoPublicacao(String anoPublicacao) {
		this.anoPublicacao = anoPublicacao;
	}
	
	/**
	 * @return  the anoPublicacao
	 * @uml.property  name="anoPublicacao"
	 */
	public String getAnoPublicacao() {
		return anoPublicacao;
	}

	/**
	 * @param descricao  the descricao to set
	 * @uml.property  name="descricao"
	 */
	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	/**
	 * @return  the descricao
	 * @uml.property  name="descricao"
	 */
	public String getDescricao() {
		return descricao;
	}
	
	/** 
	 * @param publicacao  the publicacao to set
	 * @uml.property  name="publicacao"
	 */
	public void setPublicacao(Collection<Publicacao> publicacao) {
		this.publicacao = publicacao;
	}

	/** 
	 * @return  the publicacao
	 * @uml.property  name="publicacao"
	 */
	public Collection<Publicacao> getPublicacao() {
		return publicacao;
	}

	
	
}
