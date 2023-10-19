package utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexao {
   public static void conectar() {
	 try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/aulas","root","root");
		System.out.println("Connected");
	} catch (ClassNotFoundException | SQLException e) {		
		e.printStackTrace();
	}  
   }
   
   public static Connection getConexao() {
	   Connection con = null;
		 try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/aulas","root","root");			
		} catch (ClassNotFoundException | SQLException e) {		
			e.printStackTrace();
		}  
		return con; 
	   }
}
