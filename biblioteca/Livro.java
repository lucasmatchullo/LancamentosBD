package biblioteca;

import java.util.Date;
import java.util.List;

public class Livro {
	private Long id;
	private String titulo;
	private Date ano_publicacao;
	private Genero genero;
	private List<Autor> autor;
	private List<Edicao> edicoes;
	private Editora editora;
	public Long getId() {
		return id;
	}
	
	// Getters and Setters
	
	public void setId(Long id) {
		this.id = id;
	}
	public String getTitulo() {
		return titulo;
	}
	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}
	public Date getAno_publicacao() {
		return ano_publicacao;
	}
	public void setAno_publicacao(Date ano_publicacao) {
		this.ano_publicacao = ano_publicacao;
	}
	public Genero getGenero() {
		return genero;
	}
	public void setGenero(Genero genero) {
		this.genero = genero;
	}
	public List<Autor> getAutor() {
		return autor;
	}
	public void setAutor(List<Autor> autor) {
		this.autor = autor;
	}
	public List<Edicao> getEdicoes() {
		return edicoes;
	}
	public void setEdicoes(List<Edicao> edicoes) {
		this.edicoes = edicoes;
	}
	public Editora getEditora() {
		return editora;
	}
	public void setEditora(Editora editora) {
		this.editora = editora;
	}
	
	

}
