package meupacote;

public class Livros implements java.io.Serializable{
	private String isbn;
	private String titulo;
	private int edicao;
	private String publicacao;
	private String descricao;

	public Livros( ) {}
	
	public Livros(String isbn, String titulo, int edicao, 
		String publicacao, String descricao) 
	{
		this.isbn=isbn;
		this.titulo=titulo;
		this.edicao=edicao;
		this.publicacao=publicacao;
		this.descricao=descricao;	
	}

	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}

	public String getIsbn( ) {
		return isbn;
	}

	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}


	public String getTitulo( ) {
		return titulo;
	}

	public void setEdicao(int edicao) {
		this.edicao = edicao;
	}

	public int getEdicao( ) {
		return edicao;
	}

	public void setPublicacao(String publicacao) {
		this.publicacao = publicacao;
	}

	public String getPublicacao( ) {
		return publicacao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public String getDescricao( ) {
		return descricao;
	}

}
