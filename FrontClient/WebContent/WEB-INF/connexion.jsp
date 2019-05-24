<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>My Super Car - Connexion</title>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no"/>
    <link rel="stylesheet" href="../css/main.css"/>
    <link rel="icon" type="image/png" href="../images/my_super_car.png"/>
</head>

<body>

<!-- Header -->
<div id="header">
    <img id="logo" src="../images/my_super_car.png" alt="Logo My Super Car">
    <nav id="nav">
        <ul>
            <li><a href="index.jsp">Accueil</a></li>
            <li><a href="recherche.jsp">Rechercher une voiture</a></li>
            <li><a href="formulaireAjout.jsp">Ajouter une voiture</a></li>
            <li><a href="formulaireVente.jsp">Vendre une voiture</a></li>
            <li><a href="connexion.jsp" id="sign_up">Se connecter</a></li>
        </ul>
    </nav>
</div>

<!-- Formulaire de connexion -->
<div id="connexion">
    <form method="post" action="http://localhost:8080/gestion_garage/Garage/WebContent/accueil.jsp">
        <div id="content_connexion">
            <div id="title_connexion">
                <p>Vous pouvez vous connecter via ce formulaire.</p>
            </div>
            <div id="input_connexion">
                <!-- Identifiant -->
                <div class="form-group">
                    <label for="id">Identifiant :<span class="requis"></span></label>
                    <input type="text" id="id" name="id" size="20" maxlength="60"/>
                </div>
                <!-- Mot de passe -->
                <div class="form-group">
                    <label for="mdp">Mot de passe :<span class="requis"></span></label>
                    <input type="mdp" id="mdp" name="mdp" size="20" maxlength="20"/>
                </div>
                <!-- Bouton de connexion -->
                <div id="submit_connexion">
                    <input id="button_connexion" type="submit" value="Connexion" class="sansLabel"/>
                </div>
            </div>
        </div>
    </form>
</div>

<!-- Footer -->
<footer id="footer">
    <ul id="icons">
        <li>
            <a href="#" class="icon alt fa-twitter"><img src="../images/twitter.PNG" alt="Twitter"></a>
        </li>
        <li>
            <a href="#" class="icon alt fa-facebook"><img src="../images/facebook.PNG" alt="Facebook"></a>
        </li>
        <li>
            <a href="#" class="icon alt fa-linkedin"><img src="../images/linkedin.PNG" alt="Linkedin"></a>
        </li>
        <li>
            <a href="#" class="icon alt fa-envelope"><img src="../images/email.PNG" alt="Email"></a>
        </li>
    </ul>
    <p id="copyright">&copy; My Super Car | 20/05/2019</p>
</footer>
</body>
</html>