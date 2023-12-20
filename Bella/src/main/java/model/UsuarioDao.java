package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import util.Conexao;

public class UsuarioDao {
Connection con;
ResultSet rs;
	public UsuarioDao() {
	
		con = new Conexao().conectar();
		
		
	}
	
	public void Salva(Usuario usu) {
		try {
			
			String sql = "insert into usuario (nome,usuario,email,celular,senha,confirmarsenha) values(?,?,?,?,?,?)";
			
			PreparedStatement stmt =con.prepareStatement(sql);
			stmt.setString(1,usu.getNome());
			stmt.setString(2,usu.getUsuario() );
			stmt.setString(3,usu.getEmail());
			stmt.setString(4,usu.getCelular());
			stmt.setString(5,usu.getSenha());
			stmt.setString(6,usu.getConfirmarsenha());
			
			stmt.executeUpdate();
			con.close();
		
			
		}
		
		catch (Exception erro) {
			
		}
		
		
		
	}
	
	
	public ArrayList<Usuario>listar() {
		
		try {
			con = new Conexao().conectar(); 
			ArrayList<Usuario> usuarios = new ArrayList<>();
			String sql = "select * from usuario";
			PreparedStatement stmt =con.prepareStatement(sql);
			rs = stmt.executeQuery();
			while(rs.next()) {
				int idusuario = rs.getInt("idusuario");
				String nome = rs.getString("nome");
				String usuario = rs.getString("usuario");
				String email = rs.getString("email");
				String celular = rs.getString("celular");
				String senha = rs.getString("cpf");
				String confirmarsenha = rs.getString("confirmarsenha");
				
				usuarios.add(new Usuario(idusuario,nome,usuario,email,celular,senha,confirmarsenha));
				
				
				
			}
			return usuarios;
			
		}
		catch(Exception erro) {
			System.out.print(erro);
			return null;
		}
		
		
	}
	public void Consulta(Usuario usu) {
			try {
				con = new Conexao().conectar();
				String sql = "select * from usuario where idusuario = ?";
				PreparedStatement stmt = con.prepareStatement(sql);
				stmt.setInt(1, usu.getIdusuario());
				System.out.println(usu.getIdusuario());
				rs = stmt.executeQuery();
		while (rs.next()) {
			usu.setIdusuario(rs.getInt("idusuario"));
			usu.setNome(rs.getString("nome"));
			usu.setUsuario(rs.getString("telefone"));
			usu.setEmail(rs.getString("email"));
			usu.setCelular(rs.getString("datanasc"));
			usu.setSenha(rs.getString("cpf"));
			
		}
		
	}
	catch (Exception erro) {
		System.out.println(erro);
	}
}

public void editar(Usuario usu) {
	try {
		con = new Conexao().conectar();
		String sql = "update usuario set nome=?,usuario=?,email=?,celular=?,cpf=?,senha=?,confirmarsenha=?";
		PreparedStatement stmt =con.prepareStatement(sql);
		stmt.setString(1,usu.getNome());
		stmt.setString(2,usu.getUsuario() );
		stmt.setString(3,usu.getEmail());
		stmt.setString(4,usu.getCelular());
		stmt.setString(5,usu.getSenha());
		stmt.setString(6,usu.getConfirmarsenha());
		
		stmt.executeUpdate();
		
		
		
	}
	catch (Exception erro) {
		System.out.println(erro);
	}
}

public void excluir(Usuario usu) {
	try {
		con = new Conexao().conectar();
		String sql = "delete from usuario where idusuario=?";
		PreparedStatement stmt =con.prepareStatement(sql);
		stmt.setInt(1, usu.getIdusuario());
		stmt.executeUpdate();
		
		
		
	}
	catch (Exception erro) {
		System.out.println(erro);
	}
}

}
