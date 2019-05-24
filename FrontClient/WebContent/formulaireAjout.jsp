<!--
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
-->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>My Super Car - Connexion</title>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no"/>
    <link rel="stylesheet" href="css/main.css"/>
    <link rel="icon" type="image/png" href="images/my_super_car.png"/>
</head>

<body>
<!-- Header -->
<div id="header">
    <img id="logo" src="images/my_super_car.png" alt="Logo My Super Car">
    <nav id="nav">
        <ul>
            <li><a href="accueil.jsp">Accueil</a></li>
            <li><a href="../../Garage/WebContent/carDetail.jsp">Rechercher une voiture</a></li>
            <li><a href="formulaireAjout.jsp">Ajouter une voiture</a></li>
            <li><a href="formulaireVente.jsp">Vendre une voiture</a></li>
            <li><a href="connexion.jsp" id="sign_up">Se connecter</a></li>
        </ul>
    </nav>
</div>

<div id="formulaireAjout">
    <div id="content_formulaireAjout">
        <div id="title_formulaireAjout">
            <p>Ajouter une voiture dans la base de données</p>
        </div>

        <div>
            <form action="/HomePage.java" method="post">
                <div id="input_formulaireAjout">
                    <div class="form-group">
                        <label for="brand">Marque :</label>
                        <input type="text" id="brand" required>
                    </div>

                    <div class="form-group">
                        <label for="model">Modèle :</label>
                        <input type="text" id="model" required>
                    </div>

                    <div class="form-group">
                        <label for="immatriculation">Immatriculation :</label>
                        <input type="text" id="immatriculation" required>
                    </div>
                    <div class="left">
                        <div class="form-group">
                            <label for="date">Année :</label>
                            <input type="number" id="date" size="4" required>
                        </div>

                        <div class="form-group">
                            <label for="carburant">Carburant :</label>
                            <select id="carburant" required>
                                <option value="Essence">Essence</option>
                                <option value="Diesel">Diesel</option>
                                <option value="Electrique">Electrique</option>
                                <option value="GPL"> GPL</option>
                            </select>
                        </div>

                        <div class="form-group">
                            <label for="km">Nombre de kilomètres :</label>
                            <input type="number" id="km" size="6" required>
                        </div>
                    </div>

                    <div class="right">
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

                        <div class="form-group">
                            <label for="price">Prix d'achat :</label>
                            <input type="number" id="price" size="8" required>
                        </div>

                        <div class="form-group">
                            <label for="portes">Nombre de portes :</label>
                            <select id="portes" required>
                                <option value="3">3</option>
                                <option value="5">5</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="options">Options :</label>
                        <textarea id="options" rows="3  "></textarea>
                    </div>

                    <div id="submit_formulaireAjout">
                        <button type="submit" id="button_formulaireAjout">Valider l'achat</button>
                    </div>

                    <script>
                        var immatriculation = document.getElementById(immatriculation);
                        var date = document.getElementById(date);
                        var nbreKM = document.getElementById(km);
                        var prix = document.getElementById(price);

                        if (!verifier(immatriculation)) {
                            alert("L'immatriculation ne peut contenir que des lettres non accentuée");
                        } else if (date.length !== 4) {
                            alert("L'année contient 4 chiffres");
                        } else if (nbreKM.length >= 8) {
                            alert("Le kilométrage ne peut pas être supérieur à 8 chiffres");
                        } else if (prix.length > 15) {
                            alert("Le prix du véhicule doit être inférieur à 15 chiffres");
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
            <a href="#" class="icon alt fa-twitter"><img src="images/twitter.PNG" alt="Twitter"></a>
        </li>
        <li>
            <a href="#" class="icon alt fa-facebook"><img src="images/facebook.PNG" alt="Facebook"></a>
        </li>
        <li>
            <a href="#" class="icon alt fa-linkedin"><img src="images/linkedin.PNG" alt="Linkedin"></a>
        </li>
        <li>
            <a href="#" class="icon alt fa-envelope"><img src="images/email.PNG" alt="Email"></a>
        </li>
    </ul>
    <p id="copyright">&copy; My Super Car | 20/05/2019</p>
</footer>
</body>
</html>