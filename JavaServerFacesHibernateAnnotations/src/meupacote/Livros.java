package meupacote;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "livros")
@SuppressWarnings("serial")
public class Livros implements java.io.Serializable{
	@Id
	@Column(name="isbn")
	private String isbn;
	
	@Column(name="titulo")
	private String titulo;
	
	@Column(name="edicao_num")
	private int edicao;
	
	@Column(name="ano_publicacao")
	private String publicacao;
	
	@Column(name="descricao")
	private String descricao;
	
	

	public Livros() {
	}
	public Livros(String isbn, String titulo, 
			int edicao, String publicacao, 
			String descricao) {
		
		this.isbn=isbn;
		this.titulo=titulo;
		this.edicao=edicao;
		this.publicacao=publicacao;
		this.descricao=descricao;	

	}

	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}

	public String getIsbn() {
		return isbn;
	}

	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}
	
	public String getTitulo() {
		return titulo;
	}

	public void setEdicao(int edicao) {
		this.edicao = edicao;
	}
	
	public int getEdicao() {
		return edicao;
	}

	public void setPublicacao(String publicacao) {
		this.publicacao = publicacao;
	}
	
	public String getPublicacao() {
		return publicacao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public String getDescricao() {
		return descricao;
	}
	
	
}
