<%@ page language="java" contentType="text/html; charset=UTF-8"
              pageEncoding="UTF-8"
              import="services.GestionGarageServiceProxy, services.Vehicule " %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

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

<div id="formulaireRecherche">
    <div id="content_formulaireRecherche">
        <div id="title_formulaireRecherche">
            <p>Rechercher une voiture</p>
        </div>

        <form method="post" action="Basic.jsp">
            <div>
                <div id="input_formulaireRecherche">
                    <!-- Marque -->
                    <div class="form-group">
                        <label for="brand">Marque :</label>
                        <select id="brand" name="marque">
                            <option value="volkswagen">VolksWagen</option>
                            <option value="Porsche">Porsche</option>
                            <option value="Mercedes">Mercedes</option>
                            <option value="Audi">Audi</option>
                            <option value="BMW">BMW</option>
                        </select>
                    </div>

                    <!-- Modèle -->
                    <div class="form-group">
                        <label for="model">Modèle :</label>
                        <input type="text" class="form-control" id="model" name="modele">
                    </div>

                    <!-- Carburant -->
                    <div class="form-group">
                        <label for="carburant" name="carburant">Carburant :</label>
                        <select id="carburant">
                            <option value="Essence">Essence</option>
                            <option value="Diesel">Diesel</option>
                            <option value="Electrique">Electrique</option>
                            <option value="GPL"> GPL</option>
                        </select>
                    </div>

                    <!-- Kilomètres minimum -->
                    <div class="form-group">
                        <label for="KmMin">Kilomètres minimum :</label>
                        <select id="KmMin">
                            <option value="0">0</option>
                            <option value="25000">25000</option>
                            <option value="50000">50000</option>
                            <option value="75000">75000</option>
                            <option value="100000">100000</option>
                            <option value="125000">125000</option>
                            <option value="150000">150000</option>
                            <option value="175000">175000</option>
                        </select>
                    </div>

                    <!-- Kilomètres maximum -->
                    <div class="form-group">
                        <label for="KmMax">Kilomètres maximum :</label>
                        <select id="KmMax">
                            <option value="25000">25000</option>
                            <option value="50000">50000</option>
                            <option value="75000">75000</option>
                            <option value="100000">100000</option>
                            <option value="125000">125000</option>
                            <option value="150000">150000</option>
                            <option value="175000">175000</option>
                            <option value="200000">200000</option>
                        </select>
                    </div>

                    <!-- Prix minimum -->
                    <div class="form-group">
                        <label for="prixMin">Prix minimum :</label>
                        <select id="prixMin">
                            <option value="1500">1500</option>
                            <option value="2500">2500</option>
                            <option value="5000">5000</option>
                            <option value="7500">7500</option>
                            <option value="10000">10000</option>
                            <option value="12500">12500</option>
                            <option value="15000">15000</option>
                            <option value="17500">17500</option>
                            <option value="20000">20000</option>
                            <option value="30000">30000</option>
                        </select>
                    </div>

                    <!-- Prix maximum -->
                    <div class="form-group">
                        <label for="prixMax">Prix maximum :</label>
                        <select id="prixMax">
                            <option value="2500">2500</option>
                            <option value="5000">5000</option>
                            <option value="7500">7500</option>
                            <option value="10000">10000</option>
                            <option value="12500">12500</option>
                            <option value="15000">15000</option>
                            <option value="17500">17500</option>
                            <option value="20000">20000</option>
                            <option value="30000">30000</option>
                            <option value="40000">40000</option>
                            <option value="50000">50000</option>
                        </select>
                    </div>
                </div>
                <div id="submit_formulaireRecherche">
                    <button type="submit" id="button_formulaireRecherche" value="Lancer la recherche"
                            onclick="Basic.jsp">Recherche
                    </button>
                </div>
            </div>
        </form>
    </div>
</div>

<div id="result">
    <div id="content_result">
        <div id="title_result">
            <p>Liste des voitures</p>
        </div>

        <div id="input_result">
            <c:forEach items="${vehicules}" var="vehicule" class="vehicules">
            <div>Immatriculation : ${vehicule.immatriculation}</div>
            <div>Marque : ${vehicule.marque}</div>
            <div>Modèle : ${vehicule.modele}</div>
            <div>Couleur : ${vehicule.couleur}</div>
            <div>Moteur : ${vehicule.moteur}</div>
            <div>Options : ${vehicule.options}</div>
            <div>Prix : ${vehicule.prix}</div>
            <div>Kilométrage : ${vehicule.kilometrage}</div>
            <div>Année du véhicule : ${vehicule.anneeVehicule}</div>
        </div>
        <br>
        </c:forEach>
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