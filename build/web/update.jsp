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
    Eleve e = ge.find(code);
    if(!code.equals("")){
        if(e!=null){
            String nom = request.getParameter("nom");
            String prenom = request.getParameter("prenom");
            String niveau = request.getParameter("niveau");
            String filiere = request.getParameter("filiere");     
            ge.Update(new Eleve(code,nom,prenom,Integer.parseInt(niveau),filiere));
            response.sendRedirect("index.jsp");
    } 
    }else{
        response.sendRedirect("index.jsp");
    }
   
    

%>
