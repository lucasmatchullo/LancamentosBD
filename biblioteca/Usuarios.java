package biblioteca;

public class Usuarios extends Pessoas {
	private String email;
	private String senha;
	public String getEmail() {
		return email;
	}
	
	// Getters and Setters
	
	public void setEmail(String email) {
		this.email = email;
	}
	public String getSenha() {
		return senha;
	}
	public void setSenha(String senha) {
		this.senha = senha;
	}

}
