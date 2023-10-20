package controllers;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import modelos.Contato;
import utils.Conexao;

public class ContatoController {
    private static Connection con = Conexao.getConexao();
    
    public static boolean salvar(Contato ct) {
       try {
    	   PreparedStatement stm = con.prepareStatement("insert into tb_contatos(nome, email)values(?,?)");
    	   stm.setString(1, ct.getNome());
    	   stm.setString(2, ct.getEmail());
    	   stm.execute();
       }
       catch(Exception e) {
    	   System.err.println(e.getMessage());
    	   return false;
       }    	
       return true;	
    }
    
    public static boolean excluir(int id) {
        try {
     	   PreparedStatement stm = con.prepareStatement("delete from tb_contatos where id = ?");
     	   stm.setInt(1, id);
     	   stm.execute();
        }
        catch(Exception e) {
     	   System.err.println(e.getMessage());
     	   return false;
        }    	
        return true;	
     }
    
    public static ResultSet consultar() {
    	ResultSet rs = null;
        try {
     	   PreparedStatement stm = con.prepareStatement("select * from tb_contatos");
     	   rs = stm.executeQuery();
        }
        catch(Exception e) {
     	   System.err.println(e.getMessage());     	   
        }    	
        return rs;	
     }
	
    
}
