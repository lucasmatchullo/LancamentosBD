package biblioteca;

public class Autor {
	private Long id;
	private String nome;
	private String nacioalidade;
	public Long getId() {
		return id;
	}
	
	// Getters and Setters
	
	public void setId(Long id) {
		this.id = id;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getNacioalidade() {
		return nacioalidade;
	}
	public void setNacioalidade(String nacioalidade) {
		this.nacioalidade = nacioalidade;
	}

}
