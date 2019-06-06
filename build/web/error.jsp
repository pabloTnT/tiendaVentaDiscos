<%-- 
    Document   : error
    Created on : 02-06-2019, 11:32:53
    Author     : Nacho
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h2>Ha ocurrido un error :(</h2>
        <%
            String mensaje = "";
            if (request.getParameter("error") != null) {
                mensaje = request.getParameter("error");
        %>
        <br><br>
        <%=mensaje%>   
        <%
            }
        %>
    </body>
</html>
