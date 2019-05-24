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

<!-- Formulaire de vente -->
<div id="formulaireVente">
    <div id="content_formulaireVente">
        <div id="title_formulaireVente">
            <p>Formulaire de vente d'une voiture</p>
        </div>

        <form action="/HomePage.java" method="post">
            <div id="input_formulaireVente">
                <!-- Immatriculation -->
                <div class="form-group">
                    <label for="immatriculation">Immatriculation :</label>
                    <input type="text" id="immatriculation" required>
                </div>
                <!-- Client -->
                <div class="form-group">
                    <label for="client">Nom du client :</label>
                    <input type="text" id="client" required>
                </div>
                <!-- Prix de la vente -->
                <div class="form-group">
                    <label for="price">Prix de la vente :</label>
                    <input type="number" id="price" size="4" required>
                </div>
                <!-- Date de la vente -->
                <div class="form-group">
                    <label for="date">Date de la vente :</label>
                    <input type="number" id="date" size="4" required>
                </div>
                <!-- Bouton de validation du formulaire -->
                <div id="submit_formulaireVente">
                    <button type="submit" id="button_formulaireVente" onclick="validation()">Valider la vente</button>
                </div>

                <script>
                    //Vérifie que la chaîne ne contient que des chiffres ou des lettres non accentuee A-Z, a-z
                    //et au moins une lettre
                    function verifier(reference) {
                        var longueur = reference.length;
                        var vuUneLettre = false;
                        var i;
                        var ok = true;
                        var c;
                        for (i = 0; i < longueur; i++) {
                            vuUneLettre = false;
                            c = reference.charAt(i);
                            if (reference.charCodeAt(i) < 64 ||
                                reference.charCodeAt(i) > 90 && reference.charCodeAt(i) < 97 ||
                                reference.charCodeAt(i) > 122) {
                                vuUneLettre = true;
                            }
                            if (vuUneLettre) {
                                ok = false;
                            }
                        }
                        return ok;
                    }

                    // Vérifie que les saisies dans les input respectent bien les conditions
                    function validation() {
                        var immatriculation = document.getElementById(immatriculation);
                        var prix = document.getElementById(price);
                        var date = document.getElementById(date);

                        if (!verifier(immatriculation)) {
                            alert("L'immatriculation ne peut contenir que des lettres non accentuée");
                        } else if (prix.length > 15) {
                            alert("Le prix du véhicule doit être inférieur à 15 chiffres");
                        } else if (date.length !== 4) {
                            alert("L'année contient 4 chiffres");
                        }
                    }
                </script>
            </div>
        </form>
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