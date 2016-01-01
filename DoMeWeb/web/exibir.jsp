<%-- 
    Document   : exibir
    Created on : 01/01/2016, 11:31:35
    Author     : ederson
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%
        String action = request.getParameter("btn");
        if (!action.isEmpty()) {
            if (action.equals("cancelar"))
                response.sendRedirect("home.jsp"); 
            else {
                action =(String) request.getParameter("serie");
            }
        } else {
            action = "falha!";
        }
    %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
        <h1>Hello World!</h1>
        <%=action %>
    
</html>
