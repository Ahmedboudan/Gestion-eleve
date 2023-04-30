<%-- 
    Document   : index
    Created on : 10 avr. 2023, 20:18:54
    Author     : Ahmed
--%>

<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%@page import="gestion.*" %>
<% 
     GestionEleve ge = new GestionEleve();
     List<Eleve> liste  = ge.all();
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gestion eleve</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <style>
            
        </style>
    </head>
    <body>
    <center>
        <div class="card ">
            <div class="card-header font-weight-bold">
                   Liste des eleves
            </div>
              <div class="row justify-content-between">
                    <div class="col-md-2">
                      <a href="form_add.jsp" class="btn btn-outline-primary mt-3">Ajouter eleve</a>
                    </div>
                    <div class="col-md-4">
                      <form action="form_update.jsp" method="GET" class="form-inline">
                        <div class="form-group  mt-3">
                            <input type="text" name="code_upd"  class="form-control" placeholder="Code eleve">
                        </div>
                        <button type="submit" class="btn btn-outline-success mt-3">Modifier eleve</button>
                      </form>
                    </div>
                    <div class="col-md-4">
                      <form action="delete.jsp" method="GET" class="form-inline">
                        <div class="form-group mt-3">
                          
                            <input type="text" name="code_supp" class="form-control" placeholder="Code eleve">
                        </div>
                        <button type="submit" class="btn btn-outline-danger mt-3">Supprimer eleve</button>
                      </form>
                    </div>
                    
              </div>
            <div class="card-body">
        <table class="table table-striped table-hover">
            <thead class="thead-dark">
              <tr>
                <th scope="col" class="text-center">Code eleve</th>
                <th scope="col" class="text-center">Nom</th>
                <th scope="col" class="text-center">Prenom</th>
                <th scope="col" class="text-center">Niveau</th>
                <th scope="col" class="text-center">Filiere</th>
              </tr>
            </thead>
            <tbody>
              <% for(Eleve e : liste){ %>
              <tr>
                <td class="text-center"><%=e.getCode() %></td>
                <td><%=e.getNom() %></td>
                <td><%=e.getPrenom() %></td>
                <td class="text-center"><%=e.getNiveau() %></td>
                <td class="text-center"><%=e.getCode_fil() %></td>
              </tr>
              <% } %>
            </tbody>
        </table>
        </div>
        <div class="card-footer  font-weight-bold">
                Ecole Nationnale des Sciences Appliquées de Tanger
        </div>
       </div>
    </center>
    </body>
</html>
