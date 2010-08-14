package meupacote;


import java.util.Collection;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * @author  Edson
 */
@Entity
@Table(name = "editora")
@SuppressWarnings("serial")
public class Editora  implements java.io.Serializable{

	/**
	 * @uml.property  name="editoraId"
	 */
	@Id
	@Column(name="editora_id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer editoraId;
	
	/**
	 * @uml.property  name="editora"
	 */
	@Column(name="editora_nome")
	private String editora;
	
	@OneToMany(cascade=CascadeType.ALL, mappedBy="editora")
	private Collection<Publicacao> publicacao;
	
	
	public Editora() {
	}

	public Editora(int editoraId, String editora,
			Collection<Publicacao> publicacao) {
		this.editoraId = editoraId;
		this.editora= editora;
		this.publicacao=publicacao;
	}
	
	
	/**
	 * @param editoraId  the editoraId to set
	 * @uml.property  name="editoraId"
	 */
	public void setEditoraId(Integer editoraId) {
		this.editoraId = editoraId;
	}
	/**
	 * @return  the editoraId
	 * @uml.property  name="editoraId"
	 */
	public Integer getEditoraId() {
		return editoraId;
	}
	/**
	 * @param editora  the editora to set
	 * @uml.property  name="editora"
	 */
	public void setEditora(String editora) {
		this.editora = editora;
	}
	/**
	 * @return  the editora
	 * @uml.property  name="editora"
	 */
	public String getEditora() {
		return editora;
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
