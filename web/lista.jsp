<%@page import="servlets.ListaCompras"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Produtos</title>
    </head>
    <body>
        <h1>Novo produto</h1>
        <form method="POST" action="lista_compras">
            Produto: <input type="text" name="descricao" size="40"/><br/>
            Quantidade: <input type="number" name="quantidade" size="4"/><br/>
            Preço: <input type="number" name="preco" size="10"/><br/>
            <input type="submit" value="Adicionar"/>
        </form>

        <% java.util.ArrayList<dados.Produto> lista = (java.util.ArrayList<dados.Produto>) session.getAttribute("lista");
            if (lista == null || lista.isEmpty()) {%>
        <p>nao há produtos cadastrados</p>
        <% } else { %>
        <table>
            <tr><td>Descrição</td><td>Quantidade</td><td>Preço</td></tr>

            <% for (dados.Produto prod : lista) {%>

            <tr>
                <td><%=prod.getDescricao()%></td>
                <td><%=prod.getQuantidade()%></td>
                <td><%=prod.getPreco()%></td>
            </tr>
            <% } %>

        </table>
        <% } %>

    </body>
</html>
