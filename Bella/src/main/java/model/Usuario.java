package model;

public class Usuario {

	private int idusuario;
	private String nome;
	private String usuario;
	private String email;
	private String celular;
	private String senha;
	private String confirmarsenha;
	

public Usuario() {
	super();
	// TODO Auto-generated constructor stub
}


public Usuario(int idusuario, String nome, String usuario, String email, String celular, String senha,
		String confirmarsenha) {
	super();
	this.idusuario = idusuario;
	this.nome = nome;
	this.usuario = usuario;
	this.email = email;
	this.celular = celular;
	this.senha = senha;
	this.confirmarsenha = confirmarsenha;
}


public int getIdusuario() {
	return idusuario;
}


public void setIdusuario(int idusuario) {
	this.idusuario = idusuario;
}


public String getNome() {
	return nome;
}


public void setNome(String nome) {
	this.nome = nome;
}


public String getUsuario() {
	return usuario;
}


public void setUsuario(String usuario) {
	this.usuario = usuario;
}


public String getEmail() {
	return email;
}


public void setEmail(String email) {
	this.email = email;
}


public String getCelular() {
	return celular;
}


public void setCelular(String celular) {
	this.celular = celular;
}


public String getSenha() {
	return senha;
}


public void setSenha(String senha) {
	this.senha = senha;
}


public String getConfirmarsenha() {
	return confirmarsenha;
}


public void setConfirmarsenha(String confirmarsenha) {
	this.confirmarsenha = confirmarsenha;
}


}


