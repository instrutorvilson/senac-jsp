package controllers;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import modelos.Contato;
import utils.Conexao;

public class ContatoController {
	static Connection con = Conexao.getConexao();
   
	public static ResultSet consultar() {
    	ResultSet contatos = null;
    	try {
			PreparedStatement stm = con.prepareStatement("select * from tb_contatos");
			contatos = stm.executeQuery();
		} catch (SQLException e) {
			e.printStackTrace();
		}
    	return contatos;
    }
	
	public static boolean salvar(Contato ct) {
		try {
			PreparedStatement stm = con.prepareStatement("insert into tb_contatos(nome, email)values(?, ?)");
			stm.setString(1, ct.getNome());
			stm.setString(2, ct.getEmail());
			stm.execute();
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
}
