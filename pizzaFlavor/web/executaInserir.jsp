<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import='model.Produto'%>
<%@page import='dao.ProdutoDAO'%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <% 
            try{
                Produto pro = new Produto();
                ProdutoDAO prd = new ProdutoDAO();
                if(request.getParameter("descricao").equals("") || request.getParameter("preco").equals("")||request.getParameter("nome").equals("")){
                    response.sendRedirect("index.jsp");
                }else{
                    pro.setDescricaoProduto(request.getParameter("descricao"));
                    pro.setVlpreco(request.getParameter("preco"));
                    pro.setNmProduto(request.getParameter("nome"));
                    prd.inserir(pro);
                     response.sendRedirect("index.jsp");
                }
                
                
            }catch(Exception erro){
                throw new RuntimeException("Erro 7:" + erro);
            }
        
        
        
        %>
        
        
    </body>
</html>
