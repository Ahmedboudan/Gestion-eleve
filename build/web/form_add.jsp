<%-- 
    Document   : form_add
    Created on : 12 avr. 2023, 01:55:08
    Author     : ahmed
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="navbar.jsp" %>
<%@include file="footer.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ajout d'un étudiant</title>
                <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    </head>
    <body>
        <div class="container">
            <div class="row">
              <div class="col-md-6 mx-auto">
            <div class="card mt-5">
                <div class="card-header bg-primary">Ajout d'un etudiant</div>
                <div class="card-body mb-5">
                  <form method="post" action="add.jsp">
                    <div class="form-group">
                      <label for="code">Code</label>
                      <input type="text" class="form-control" placeholder='Code' name="code" required>
                    </div>
                    <div class="form-group">
                      <label for="nom">Nom</label>
                      <input type="text" class="form-control" name="nom" required placeholder='Nom'>
                    </div>
                      <div class="form-group">
                      <label for="prenom">Prenom</label>
                      <input type="text" class="form-control" name="prenom" placeholder='Prenom' required>
                    </div>
                   <div class="form-group">
                      <label for="niveau">Niveau</label>
                      <input type="text" class="form-control" placeholder='Niveau' name="niveau" required>
                    </div>
                      <div class="form-group">
                      <label for="filiere">Filiere</label>
                      <input type="text" class="form-control" name="filiere" placeholder='Filiere' required>
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
