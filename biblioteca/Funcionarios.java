package biblioteca;

public class Funcionarios extends Pessoas {
	private String email;
	private String senha;
	private String cargo;
	private Float salario;
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
	public String getCargo() {
		return cargo;
	}
	public void setCargo(String cargo) {
		this.cargo = cargo;
	}
	public Float getSalario() {
		return salario;
	}
	public void setSalario(Float salario) {
		this.salario = salario;
	}

}
