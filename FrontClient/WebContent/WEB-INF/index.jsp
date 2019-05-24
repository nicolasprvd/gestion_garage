<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" 
    import="services.GestionGarageServiceProxy, services.Vehicule " %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>MySuperCar</title>
</head>
<body> <!--  http://localhost:9080/FrontClient/sampleGestionGarageServiceProxy/TestClient.jsp  POUR TESTER -->

<h2> Recherche de Véhicules </h2>

<form method="post" action="Basic.jsp">
	
	<!-- Marque -->
	<div class="form-group">
    	<label for="brand">Marque </label>
    	<select id="brand"name="marque">
  		  <option value="volkswagen">VolksWagen</option>
  		  <option value="Porsche">Porsche</option>
		  <option value="Mercedes">Mercedes</option>
  		  <option value="Audi">Audi</option>
  		  <option value="BMW">BMW</option>
		</select>
  	</div>
	
	<!-- Modèle -->
    <div class="form-group">
    	<label for="model">Modèle</label>
    	<input type="text" class="form-control" id="model" name="modele">
  	</div>
	 
    <!-- Carburant -->
    <div class="form-group">
	    <label for="carburant" name="carburant">Carburant</label>
	    <select id="carburant">
         <option value="Essence">Essence </option>
         <option value="Diesel">Diesel </option> 
         <option value="Electrique">Electrique </option>
         <option value="GPL"> GPL </option>
        </select>
	  </div>
    
    <!-- Kilomètres minimum -->
    <div class="form-group">
	    <label for="KmMin">Kilomètres minimum</label>
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
	    <label for="KmMax">Kilomètres maximum</label>
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
     <label for="prixMin">Prix minimum</label>
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
     <label for="prixMax">Prix maximum</label>
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
       <button type="submit" value="Lancer la recherche" onclick="Basic.jsp'">Recherche</button>
      </form>
       
     <h2> Liste de tous les véhicules </h2>
	
	<img src="https://cdn.pixabay.com/photo/2018/03/02/16/30/car-3193562_960_720.jpg" height="200" width="300" />
	
		<c:forEach items="${vehicules}" var="vehicule">
		        <div> Immatriculation : ${vehicule.immatriculation}</div>
		        <div>Marque : ${vehicule.marque}</div>
		        <div>Modèle : ${vehicule.modele}</div>
		        <div>Couleur : ${vehicule.couleur}</div>
		        <div>Moteur : ${vehicule.moteur}</div>
		        <div>Options : ${vehicule.options}</div>
		        <div>Prix : ${vehicule.prix}</div>
		        <div>Kilométrage : ${vehicule.kilometrage}</div>
		        <div>Année du véhicule : ${vehicule.anneeVehicule}</div><br>
		</c:forEach>

	<form id="myform" name="myform" method="post" action="Basic.jsp">
 		<input type="text"  name="user" />
    	<input type="text"   name="password" />    
    	<input type="submit" value="go" onclick="Basic.jsp'" />
    </form>	
    
    <h1> Ajout de Voiture </h1>
</div>

<form  action="servletVehicule"  method="post">
  
  <!-- Marque -->
	<div class="form-group">
    	<label for="brand">Marque </label>
    	<select id="brand" name="marque">
  		  <option value="volkswagen">VolksWagen</option>
  		  <option value="Porsche">Porsche</option>
		  <option value="Mercedes">Mercedes</option>
  		  <option value="Audi">Audi</option>
  		  <option value="BMW">BMW</option>
		</select>
  	</div>

  <div class="form-group">
    <label for="modele">Modèle</label>
    <input type="text" class="form-control" id="modele" name="modele">
  </div>

  <div class="form-group">
    <label for="date">Année </label>
    <input type="number" class="form-control" id="date" size="4" name="date">
  </div>
  
  <div class="form-group">
    <label for="immatriculation">Immatriculation </label>
    <input type="text" class="form-control" id="immatriculation" name="immatriculation" required>
  </div>

	
	<div class="form-group">
	    <label for="carburant">Carburant</label>
	    <select id="carburant" name="carburant" required>
         <option value="Essence">Essence </option>
         <option value="Diesel">Diesel </option> 
         <option value="Electrique">Electrique </option>
          <option value="GPL"> GPL </option>
       </select>
	  </div>
       
   <div class="form-group">
	    <label for="km">Nombre de kilomètres</label>
	    <input type="number" class="form-control" id="km" size="6" name="km">
	  </div>
       
  <div class="form-group">
    <label for="couleur">Couleur  </label>
        <select id="couleur" name="couleur">
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
    <label for="prix">Prix d'achat </label>
    <input type="number" class="form-control" id="prix" size="8" name="prix">
  </div>
  
  
  <div class="form-group">
    <label for="options">Options </label>
    <textarea class="form-control" id="options" name="options" rows=3></textarea>
  </div>

  <button type="submit" class="btn btn-success">Valider l'ajout</button>

</form>

<div id="formulaireVente">
    <div id="content_formulaireVente">
        <div id="title_formulaireVente">
            <h1>Formulaire de vente d'une voiture</h1>
        </div>

        <form action="servletVehicule" method="post">
            <div id="input_formulaireVente">
                <div class="form-group">
                    <label for="immatriculation">Immatriculation :</label>
                    <input type="text" id="immatriculation" required>
                </div>

                <div class="form-group">
                    <label for="client">Nom du client :</label>
                    <input type="text" id="client" required>
                </div>

                <div class="form-group">
                    <label for="price">Prix de la vente :</label>
                    <input type="number" id="price" size="4" required>
                </div>

                <div class="form-group">
                    <label for="date">Date de la vente :</label>
                    <input type="number" id="date" size="4" required>
                </div>


                <div id="submit_formulaireVente">
                    <button type="submit" id="button_formulaireVente" onclick="validation()">Valider la vente</button>
                </div>

            </div>
        </form>
    </div>
</div>
	
</body>
</html>