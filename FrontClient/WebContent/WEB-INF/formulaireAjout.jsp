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

<!-- Formulaire d'ajout d'une voiture -->
<div id="formulaireAjout">
    <div id="content_formulaireAjout">
        <div id="title_formulaireAjout">
            <p>Ajouter une voiture dans la base de données</p>
        </div>

        <div>
            <form action="servletVehicule" method="post">
                <div id="input_formulaireAjout">
                    <!-- Marque -->
                    <div class="form-group">
                        <label for="brand">Marque :</label>
                        <input type="text" id="brand">
                    </div>
                    <!-- Modèle -->
                    <div class="form-group">
                        <label for="model">Modèle :</label>
                        <input type="text" id="model">
                    </div>
                    <!-- Immatriculation -->
                    <div class="form-group">
                        <label for="immatriculation">Immatriculation :</label>
                        <input type="text" id="immatriculation">
                    </div>
                    <div class="left">
                        <!-- Année -->
                        <div class="form-group">
                            <label for="date">Année :</label>
                            <input type="number" id="date" size="4">
                        </div>
                        <!-- Carburant -->
                        <div class="form-group">
                            <label for="carburant">Carburant :</label>
                            <select id="carburant">
                                <option value="Essence">Essence</option>
                                <option value="Diesel">Diesel</option>
                                <option value="Electrique">Electrique</option>
                                <option value="GPL"> GPL</option>
                            </select>
                        </div>
                        <!-- Kilomètres -->
                        <div class="form-group">
                            <label for="km">Kilomètres :</label>
                            <input type="number" id="km" size="6">
                        </div>
                    </div>

                    <div class="right">
                        <!-- Couleur -->
                        <div class="form-group">
                            <label for="color">Couleur :</label>
                            <select id="color">
                                <option value="Noire">Noire</option>
                                <option value="Blanche">Blanche</option>
                                <option value="Rouge">Rouge</option>
                                <option value="Bleue">Bleue</option>
                                <option value="Verte">Verte</option>
                                <option value="Jaune">Jaune</option>
                                <option value="Grise">Grise</option>
                            </select>
                        </div>
                        <!-- Prix -->
                        <div class="form-group">
                            <label for="price">Prix :</label>
                            <input type="number" id="price" size="8">
                        </div>
                    </div>
                    <!-- Options -->
                    <div id="option" class="form-group">
                        <label for="options">Options :</label>
                        <textarea id="options" rows="3  "></textarea>
                    </div>
                    <!-- Bouton de validation -->
                    <div id="submit_formulaireAjout">
                        <button type="submit" id="button_formulaireAjout">Valider l'ajout</button>
                    </div>

                    <script>
                        var marque = document.getElementById(brand);
                        var modele = document.getElementById(model);
                        var immatriculation = document.getElementById(immatriculation);
                        var date = document.getElementById(date);
                        var km = document.getElementById(km);
                        var prix = document.getElementById(price);


                        if (marque.length == 0) {
                            afficheErreur("La marque doit être renseignée");
                            return;
                        }
                        if (modele.length == 0) {
                            afficheErreur("Le modèle doit être renseigné");
                            return;
                        }
                        if (immatriculation.length == 0) {
                            afficheErreur("L'immatriculation doit être renseigné");
                        }
                        if (!verifier(immatriculation)) {
                            afficheErreur("L'immatriculation ne doit contenir que des lettres non accentuée");
                        }
                        if (date.length == 0) {
                            afficheErreur("l'année doit être renseignée");
                            return;
                        }
                        if (isNaN(date)) {
                            afficheErreur("l'année ne peut comporter de lettres !")
                        }
                        if (date.length >= 4) {
                            afficheErreur("l'année ne peut comporter plus de 4 caractères")
                        }
                        if (km.length == 0) {
                            afficheErreur("Le kilométrage du véhicule doit être spécifiée");
                            return;
                        }
                        if (isNaN(km)) {
                            afficheErreur("Le kilométrage du véhicule doit être un nombre");
                        }
                        if (km.length >= 7) {
                            afficheErreur("Le kilométrage du véhicule doit être inférieur à 7 chiffres");
                        }
                        if (price.length == 0) {
                            afficheErreur("le prix doit être renseigné");
                            return;
                        }
                        if (isNaN(price)) {
                            afficheErreur("le prix ne peut comporter de lettres !")
                        }
                        if (price.length >= 10) {
                            afficheErreur("le prix est trop élevé !")
                        }
                    </script>
                </div>
            </form>
        </div>
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