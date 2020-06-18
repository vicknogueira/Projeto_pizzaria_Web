package dao;

import model.Produto;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class ProdutoDAO {
    
    private Connection conn;
    private PreparedStatement stmt;
    private Statement st;
    private ResultSet rs;
    private ArrayList<Produto> lista = new ArrayList<>();
    
    public ProdutoDAO(){
        conn = new ConnectionFactory().getConexao();
       
    }
    
    public void inserir(Produto produto){
        String sql = "INSERT INTO produto (descricaoProduto, vlpreco, nmProduto) VALUES (?,?)";
        try{
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, produto.getDescricaoProduto());
            stmt.setString(2, produto.getVlpreco());
            stmt.setString(2, produto.getNmProduto());
            stmt.execute();
            stmt.close();
            
            
        }catch(Exception erro){
            throw new RuntimeException("Erro 2:" + erro);
        }
    }
    public void alterar(Produto produto){
        String sql = "UPDATE produto SET descricaoProduto=?, vlpreco=?, nmProduto=?, WHERE idProduto=?";
        try{
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, produto.getDescricaoProduto());
            stmt.setString(2, produto.getVlpreco());
            stmt.setString(2, produto.getNmProduto());
            stmt.setInt(3, produto.getIdProduto());
            stmt.execute();
            stmt.close();   
            
        }catch(Exception erro){
            throw new RuntimeException("Erro 3:" + erro);
        }
    }
     public void excluir(int valor){
        String sql = "DELETE FROM produto WHERE idProduto = " + valor;
        try{
            st = conn.createStatement();
            st.execute(sql);
            st.close();
            
        }catch(Exception erro){
            throw new RuntimeException("Erro 4:" + erro);
        }
    }
     
     public ArrayList<Produto> listarTodos(){
         String sql = "SELECT * FROM produto ";
         try{
             st = conn.createStatement();
             rs = st.executeQuery(sql);
             while(rs.next()){
                 Produto produto = new Produto();
                 produto.setIdProduto(rs.getInt("idProduto"));
                 produto.setDescricaoProduto(rs.getString("descricaoProduto"));
                 produto.setVlpreco(rs.getString("vlpreco"));
                 produto.setNmProduto(rs.getString("nmProduto"));
                 lista.add(produto);
                 
             }
             
         }catch(Exception erro){
              throw new RuntimeException("Erro 5:" + erro);
             
         }
         
         return lista;
     }
    
     public ArrayList<Produto> listarDescricao(String valor){
         String sql = "SELECT * FROM produto WHERE descricaoProduto LIKE '%" + valor + "%'";
         try{
             st = conn.createStatement();
             rs = st.executeQuery(sql);
             while(rs.next()){
                 Produto produto = new Produto();
                 produto.setIdProduto(rs.getInt("idProduto"));
                 produto.setDescricaoProduto(rs.getString("descricaoProduto"));
                 produto.setVlpreco(rs.getString("vlpreco"));
                 produto.setNmProduto(rs.getString("nmProduto"));
                 lista.add(produto);
                 
             }
             
         }catch(Exception erro){
              throw new RuntimeException("Erro 6:" + erro);
             
         }
         
         return lista;
     }
}
