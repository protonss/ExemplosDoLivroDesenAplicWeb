package meupacote;

import java.util.Collection;
import java.util.Date;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * @author  Edson
 */
@Entity
@Table(name = "autores")
@SuppressWarnings("serial")
public class Autores implements java.io.Serializable {
	/**
	 * @uml.property  name="autorId"
	 */
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="autor_id")
	private Integer autorId;
	
	/**
	 * @uml.property  name="nome"
	 */
	@Column(name="nome")
	private String nome;
	
	/**
	 * @uml.property  name="email"
	 */
	@Column(name="email")
	private String email;
	
	/**
	 * @uml.property  name="nascimento"
	 */
	@Temporal(TemporalType.DATE)
	@Column(name="dt_nasc")
	private Date nascimento;

	@OneToMany(cascade=CascadeType.ALL, mappedBy="autores")
	private Collection<Publicacao> publicacao;
	

	public Autores() {
	}

	public Autores(Integer autorId, String nome, String email, Date nascimento, Collection<Publicacao> publicacao) {
		this.autorId = autorId;
		this.nome = nome;
		this.email = email;
		this.nascimento = nascimento;
		this.publicacao = publicacao;
	}	
	
	
	
	/**
	 * @param autorId  the autorId to set
	 * @uml.property  name="autorId"
	 */
	public void setAutorId(Integer autorId) {
		this.autorId = autorId;
	}
	/**
	 * @return  the autorId
	 * @uml.property  name="autorId"
	 */
	public Integer getAutorId() {
		return autorId;
	}
	/**
	 * @param nome  the nome to set
	 * @uml.property  name="nome"
	 */
	public void setNome(String nome) {
		this.nome = nome;
	}
	/**
	 * @return  the nome
	 * @uml.property  name="nome"
	 */
	public String getNome() {
		return nome;
	}
	/**
	 * @param email  the email to set
	 * @uml.property  name="email"
	 */
	public void setEmail(String email) {
		this.email = email;
	}
	/**
	 * @return  the email
	 * @uml.property  name="email"
	 */
	public String getEmail() {
		return email;
	}
	/**
	 * @param nascimento  the nascimento to set
	 * @uml.property  name="nascimento"
	 */
	public void setNascimento(Date nascimento) {
		this.nascimento = nascimento;
	}
	/**
	 * @return  the nascimento
	 * @uml.property  name="nascimento"
	 */
	public Date getNascimento() {
		return nascimento;
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
