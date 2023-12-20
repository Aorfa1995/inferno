package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import util.Conexao;

public class ClienteDao {
	Connection con;
	ResultSet rs;
	public ClienteDao() {
	
		con = new Conexao().conectar();
		
		
	}
	
	public void Salvar(Cliente cli) {
		try {
			
			String sql = "insert into cliente (nome,email,telefone) values(?,?,?)";
			
			PreparedStatement stmt =con.prepareStatement(sql);
			stmt.setString(1,cli.getNome());
			stmt.setString(2,cli.getEmail() );
			stmt.setString(3,cli.getTelefone());
			
			
			stmt.executeUpdate();
			con.close();
		
			
		}
		
		catch (Exception erro) {
			
		}
		
		
		
	}
	
	
	public ArrayList<Cliente>listar() {
		
		try {
			con = new Conexao().conectar(); 
			ArrayList<Cliente> clientes = new ArrayList<>();
			String sql = "select * from cliente";
			PreparedStatement stmt =con.prepareStatement(sql);
			rs = stmt.executeQuery();
			while(rs.next()) {
				int idcliente = rs.getInt("idcliente");
				String nome = rs.getString("nome");
				String email = rs.getString("email");
				String telefone = rs.getString("telefone");
				
				
				clientes.add(new Cliente(idcliente,nome,email,telefone));
				
				
				
			}
			return clientes;
			
		}
		catch(Exception erro) {
			System.out.print(erro);
			return null;
		}
		
		
	}
	public void Consulta(Cliente cli) {
			try {
				con = new Conexao().conectar();
				String sql = "select * from cliente where idcliente = ?";
				PreparedStatement stmt = con.prepareStatement(sql);
				stmt.setInt(1, cli.getIdcliente());
				System.out.println(cli.getIdcliente());
				rs = stmt.executeQuery();
		while (rs.next()) {
			cli.setIdcliente(rs.getInt("idcliente"));
			cli.setNome(rs.getString("nome"));
			cli.setEmail(rs.getString("email"));
			cli.setTelefone(rs.getString("telefone"));
			
			
		}
		
	}
	catch (Exception erro) {
		System.out.println(erro);
	}
}

public void Editar(Cliente cli) {
	try {
		con = new Conexao().conectar();
		String sql = "update cliente set nome=?,email=?,telefone=? where  idcliente=?";
		PreparedStatement stmt =con.prepareStatement(sql);
		stmt.setString(1,cli.getNome());
		stmt.setString(2,cli.getEmail());
		stmt.setString(3,cli.getTelefone());
		
	
		
		stmt.executeUpdate();
		
		
		
	}
	catch (Exception erro) {
		System.out.println(erro);
	}
}

public void Excluir(Cliente cli) {
	try {
		con = new Conexao().conectar();
		String sql = "delete from cliente where idcliente=?";
		PreparedStatement stmt =con.prepareStatement(sql);
		stmt.setInt(1, cli.getIdcliente());
		stmt.executeUpdate();
		
		
		
	}
	catch (Exception erro) {
		System.out.println(erro);
	}
}

}
