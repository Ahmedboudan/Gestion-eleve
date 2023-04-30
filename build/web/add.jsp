<%-- 
    Document   : add
    Created on : 12 avr. 2023, 01:54:02
    Author     : ahmed
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%@page import="gestion.*" %>
<%  
    GestionEleve ge = new GestionEleve();
    String code = request.getParameter("code");
    String nom = request.getParameter("nom");
    String prenom = request.getParameter("prenom");
    String niveau = request.getParameter("niveau");
    String filiere = request.getParameter("filiere");
    Eleve e = new Eleve(code,nom,prenom,Integer.parseInt(niveau),filiere);
    ge.Add(e);
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
