<%-- 
    Document   : delete
    Created on : 12 avr. 2023, 04:31:46
    Author     : ahmed
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%@page import="gestion.*" %>
<% 
     GestionEleve ge = new GestionEleve();
     ge.delete(request.getParameter("code_supp"));
     response.sendRedirect("index.jsp");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
