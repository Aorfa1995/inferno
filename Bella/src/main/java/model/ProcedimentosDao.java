package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import util.Conexao;

public class ProcedimentosDao {
Connection con;
ResultSet rs;
	public ProcedimentosDao() {
	
		con = new Conexao().conectar();
		
		
	}
	
	public void Salva(Procedimentos pro) {
		try {
			
			String sql = "insert into procedimentos (limpeza,enzimascap,preenchimento,toxina,drenagem,depilacao,microvasos,criolipolise,enzimascorpo) values(?,?,?,?,?,?)";
			
			PreparedStatement stmt =con.prepareStatement(sql);
			stmt.setString(1,pro.getLimpeza());
			stmt.setString(2,pro.getEnzimascap() );
			stmt.setString(3,pro.getPreenchimento());
			stmt.setString(4,pro.getToxina());
			stmt.setString(5,pro.getDepilacao());
			stmt.setString(6,pro.getMicrovasos());
			stmt.setString(7,pro.getCriolipolise());
			stmt.setString(8,pro.getEnzimascorpo());
			stmt.setString(9,pro.getMicrovasos());
		
			
			stmt.executeUpdate();
			con.close();
		
			
		}
		
		catch (Exception erro) {
			
		}
		
		
		
	}
	
	
	public ArrayList<Procedimentos>listar() {
		
		try {
			con = new Conexao().conectar(); 
			ArrayList<Procedimentos> procedimentos = new ArrayList<>();
			String sql = "select * from procedimenos";
			PreparedStatement stmt =con.prepareStatement(sql);
			rs = stmt.executeQuery();
			while(rs.next()) {
				
				String limpeza = rs.getString("limpeza");
				String enzimascap = rs.getString("enzimascap");
				String preenchimento = rs.getString("preenchimento");
				String toxina = rs.getString("toxina");
				String drenagem = rs.getString("drenagem");
				String depilacao = rs.getString("depilacao");
				String microvasos = rs.getString("microvasos");
				String criolipolise = rs.getString("criolipolise");
				String enzimascorpo = rs.getString("enzimascorpo");
				procedimentos.add(new Procedimentos(limpeza,enzimascap,preenchimento,toxina,drenagem,depilacao,microvasos,criolipolise,enzimascorpo));
				
				
				

				
			}
			return procedimentos;
			
		}
		catch(Exception erro) {
			System.out.print(erro);
			return null;
		}
		
		
	}

public void excluir(Procedimentos pro) {
	try {
		con = new Conexao().conectar();
		String sql = "delete from procedimentos where =?";
		PreparedStatement stmt =con.prepareStatement(sql);
		
		stmt.executeUpdate();
		
		
		
	}
	catch (Exception erro) {
		System.out.println(erro);
	}
}

}
