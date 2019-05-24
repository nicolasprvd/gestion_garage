<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>My Super Car - Accueil</title>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no"/>
    <link rel="stylesheet" href="../css/main.css"/>
    <link rel="icon" type="image/png" href="../images/my_super_car.png"/>
</head>

<body>

<!-- Header -->
<header id="header">
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
</header>

<!-- Première partie -->
<div id="content">
    <div id="title">
        <div id="content_title">
            <div>
                <h3>My Super Car</h3>
                <p>En route vers le bien être</p>
            </div>
            <span id="cars"><img src="../images/cars.jpg" alt=""/></span>
        </div>
        <a href="#page" id="next"></a>
    </div>

    <!-- Image -->
    <div id="banner"></div>

    <!-- Deuxième partie -->
    <div id="page">
        <div id="content_page">
            <div class="left">
                <p>Joe le taxi,
                    Y va pas partout,
                    Y marche pas au soda,
                    Son saxo jaune,
                    Connaît toutes les rues par cœur,
                    Tous les petits bars,
                    Tous les coins noirs,
                    Et la Seine,
                    Et ses ponts qui brillent,
                    Dans sa caisse,
                    La musique a Joe,
                    C'est la rumba,
                    Le vieux rock au mambo,
                    Joe le taxi,
                    C'est sa vie,
                    Le rhum au mambo,
                    Embouteillage,
                    Il est comme ça,
                    Rhum et mambo,
                    Joe, Joe, Joe</p>
            </div>
            <!-- Maps -->
            <div class="right_maps">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2829.860084455651!2d-0.6789746845925868!3d44.824414979098606!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zNDTCsDQ5JzI3LjkiTiAwwrA0MCczNi40Ilc!5e0!3m2!1sfr!2sfr!4v1558686367539!5m2!1sfr!2sfr"
                        width="350" height="350" frameborder="0" style="border:0" allowfullscreen></iframe>
            </div>
        </div>
        <a href="#" id="back"></a>
    </div>
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