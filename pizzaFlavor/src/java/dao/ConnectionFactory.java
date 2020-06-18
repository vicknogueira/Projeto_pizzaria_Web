package dao;


import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionFactory {
    
        public Connection getConexao(){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            return DriverManager.getConnection("jdbc:mysql://localhost:3306/pizzaFlavor","root","RootusuarioRoot");
        }catch(Exception erro){
            throw new RuntimeException("Erro 1:" + erro);
        }
    }
    
}
