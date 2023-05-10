<%-- 
    Document   : index
    Created on : 10 avr. 2023, 20:18:54
    Author     : Ahmed
--%>

<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%@include file="navbar.jsp" %>
<%@include file="footer.jsp" %>
<%@page import="gestion.*" %>
<% 
     GestionEleve ge = new GestionEleve();
     String code = request.getParameter("code");
     Eleve eleve = ge.find(code);
     List<Eleve> liste = new ArrayList<Eleve>();
     if(eleve==null){
        liste  = ge.all();
        System.out.println("Liste de recherche null");
    }
    else{
        liste.add(eleve);
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gestion eleve</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.6.1/font/bootstrap-icons.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <style>
        </style>
    </head>
    <body>
    <center>
        <div class="container col-md-10 mt-5">
            <div class="card ">
                <div class="card-header ">
                    <h5>Gestion des élèves</h5>
                </div>
                <div class="card-body">
                    <div class="card-title">Liste des élèves</div>
                    <form action="index.jsp" method="post" class="form-inline mb-3">
                        <div class="form-group">
                            <input type="text" name="code" value="<%=code==null? "":code %>" class="form-control" placeholder="Rechercher avec le code...">
                        </div>
                        <button type="submit" class="btn btn-lg  btn-primary "><i class="bi bi-search"></i></button>
                    </form>
                    <table class="table table-striped table-hover">
                        <thead class="thead-dark">
                            <tr>
                                <th scope="col" class="text-center">Code eleve</th>
                                <th scope="col" class="text-center">Nom</th>
                                <th scope="col" class="text-center">Prenom</th>
                                <th scope="col" class="text-center">Niveau</th>
                                <th scope="col" class="text-center">Filiere</th>
                                <th scope="col" class="text-center" colspan="2">Actions</th>
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
                                <td class="text-center">
                                    <a href="form_update.jsp?code=<%=e.getCode() %>" class="btn btn-sm btn-primary"><i class="bi bi-pencil"></i> </a>
                                </td>
                                <td class="text-center">
                                    <a onclick="return confirm('Êtes-vous sûr de vouloir supprimer cet eleve ?')" href="delete.jsp?code_supp=<%=e.getCode() %>" class="btn btn-sm btn-danger"><i class="bi bi-trash"></i></a>                                <% } %>
                        </tbody>
                    </table>
                </div>

            </div>
        </div>
    </center>
</body>
</html>
