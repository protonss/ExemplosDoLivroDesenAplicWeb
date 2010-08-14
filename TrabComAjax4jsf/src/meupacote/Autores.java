package meupacote;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
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

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="autor_id")
	private Integer autorId;

	@Column(name="nome")
	private String nome;

	@Column(name="email")
	private String email;

	@Temporal(TemporalType.DATE)
	@Column(name="dt_nasc")
	private Date nascimento;

	

	public Autores() {
	}

	public Autores(Integer autorId, String nome, String email, Date nascimento) {
		this.autorId = autorId;
		this.nome = nome;
		this.email = email;
		this.nascimento = nascimento;
	}	

	public void setAutorId(Integer autorId) {
		this.autorId = autorId;
	}

	public Integer getAutorId() {
		return autorId;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getNome() {
		return nome;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getEmail() {
		return email;
	}

	public void setNascimento(Date nascimento) {
		this.nascimento = nascimento;
	}

	public Date getNascimento() {
		return nascimento;
	}	
}
