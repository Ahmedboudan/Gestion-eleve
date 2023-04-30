<%-- 
    Document   : form_add
    Created on : 12 avr. 2023, 01:55:08
    Author     : ahmed
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="java.util.*" %>
<%@page import="gestion.*" %>
<% 
     GestionEleve ge = new GestionEleve();
     Eleve e = new Eleve();
     if(!request.getParameter("code_upd").equals("")){
        e = ge.find(request.getParameter("code_upd"));
        if(e!=null){
        
    }
    else{
        response.sendRedirect("index.jsp");
    }
        
    }else{
        // ne rien faire
        // ou afficher une alert 
    }
     
%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
                <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    </head>
    <body>
        <div class="container">
            <div class="row">
              <div class="col-md-6 mx-auto">
            <div class="card mt-5">
                <div class="card-body">
                  <h5 class="card-title">Modification d'un etudiant</h5>
                  <form method="post" action="update.jsp">
                    <div class="form-group">
                      <label for="code">Code</label>
                      <input type="text" class="form-control" name="code" value="<%= e!=null ? e.getCode() : "" %>">
                    </div>
                    <div class="form-group">
                      <label for="nom">Nom</label>
                      <input type="text" class="form-control" name="nom" value="<%= e!=null ? e.getNom(): "" %>">
                    </div>
                      <div class="form-group">
                      <label for="prenom">Prenom</label>
                      <input type="text" class="form-control" name="prenom" value="<%= e!=null ? e.getPrenom() : " " %>">
                    </div>
                   <div class="form-group">
                      <label for="niveau">Niveau</label>
                      <input type="text" class="form-control" name="niveau" value="<%= e!=null ? e.getNiveau(): "" %>">
                    </div>
                      <div class="form-group">
                      <label for="filiere">Filiere</label>
                      <input type="text" class="form-control" name="filiere" value="<%= e!=null ? e.getCode_fil():"" %>">
                    </div>
                    <button type="submit" class="btn btn-primary">Envoyer</button>
                  </form>
                </div>
              </div>
              </div>
            </div>
        </div>
    </body>
</html>
