package model;

public class Cliente {

	private int idcliente;
	private String nome;
	private String email;
	private String telefone;

	public Cliente() {
		
		super();
		// TODO Auto-generated constructor stub
	}

	public Cliente(int idcliente, String nome, String email, String telefone) {
		super();
		this.idcliente = idcliente;
		this.nome = nome;
		this.email = email;
		this.telefone = telefone;
	}

	public int getIdcliente() {
		return idcliente;
	}

	public void setIdcliente(int idcliente) {
		this.idcliente = idcliente;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getTelefone() {
		return telefone;
	}

	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}
	
}

	
		