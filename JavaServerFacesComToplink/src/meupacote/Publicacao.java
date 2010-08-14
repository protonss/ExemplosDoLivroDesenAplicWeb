package meupacote;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;


/**
 * @author   Edson
 */
@Entity
@Table(name = "publicacao")
@SuppressWarnings("serial")
@NamedQueries({
	@NamedQuery(name="Publicacao.listarPorPublicacao",
			query="SELECT p FROM Publicacao p"),
	@NamedQuery(name="Publicacao.listarPorLivrosEditora",
			query="SELECT l.isbn ,l.titulo , e.editora, a.nome " +
					"FROM Publicacao p JOIN p.editora e " +
					"JOIN p.livros l " +
					"JOIN p.autores a ")
})
public class Publicacao implements java.io.Serializable {

	// Fields    

	/**
	 * @uml.property  name="publicacaoId"
	 */
	@Id
	@Column(name = "publicacao_id", unique = true, nullable = false, insertable = true, updatable = true)
	private int publicacaoId;

	@ManyToOne
	@JoinColumn(name="isbn", unique=false, nullable=true, insertable=true, updatable=true)	
	private Livros livros;

	@ManyToOne
	@JoinColumn(name = "editora_id", unique = false, nullable = true, insertable = true, updatable = true)	
	private Editora editora;

	@ManyToOne
	@JoinColumn(name = "autor_id", unique = false, nullable = true, insertable = true, updatable = true)
	private Autores autores;

	// Constructors

	/** default constructor */
	public Publicacao() {
	}

	/** minimal constructor */
	public Publicacao(int publicacaoId) {
		this.publicacaoId = publicacaoId;
	}

	/** full constructor */
	public Publicacao(int publicacaoId, Livros livros, Editora editora,
			Autores autores) {
		this.publicacaoId = publicacaoId;
		this.livros = livros;
		this.editora = editora;
		this.autores = autores;
	}

	// Property accessors
	/**
	 * @return  the publicacaoId
	 * @uml.property  name="publicacaoId"
	 */

	public int getPublicacaoId() {
		return this.publicacaoId;
	}

	/**
	 * @param publicacaoId  the publicacaoId to set
	 * @uml.property  name="publicacaoId"
	 */
	public void setPublicacaoId(int publicacaoId) {
		this.publicacaoId = publicacaoId;
	}

	/** 
	 * @return  the livros
	 * @uml.property  name="livros"
	 */

	public Livros getLivros() {
		return livros;
	}

	/** 
	 * @param livros  the livros to set
	 * @uml.property  name="livros"
	 */
	public void setLivros(Livros livros) {
		this.livros = livros;
	}

	/**
	 * @return  the editora
	 * @uml.property  name="editora"
	 */

	public Editora getEditora() {
		return this.editora;
	}

	/**
	 * @param editora  the editora to set
	 * @uml.property  name="editora"
	 */
	public void setEditora(Editora editora) {
		this.editora = editora;
	}
	
	/**
	 * @return  the autores
	 * @uml.property  name="autores"
	 */

	public Autores getAutores() {
		return this.autores;
	}

	/**
	 * @param autores  the autores to set
	 * @uml.property  name="autores"
	 */
	public void setAutores(Autores autores) {
		this.autores = autores;
	}


}
