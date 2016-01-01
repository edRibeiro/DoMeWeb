<%-- 
    Document   : exibir
    Created on : 01/01/2016, 11:31:35
    Author     : ederson
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="Livro.Livro"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%

        String action = "";
        HttpSession sessao = request.getSession();
        ArrayList<Livro> livros = (ArrayList<Livro>) sessao.getAttribute("livros");//nullpointer excepition
        if (!livros.isEmpty()) {
            for (Livro l : livros) {
                action += l.toString();
            }
        }

    %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>

    <h1>Hello World!</h1>
    <%=action%>

</html>
