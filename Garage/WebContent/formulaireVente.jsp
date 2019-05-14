<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Vente</title>
</head>
<body>
<div style="text-align:center">
  <h1>
    Vente de Voiture
  </h1>
</div>

<form  action="/HomePage.java"  method="post">

  <div class="form-group" name="formVente">
    <label for="brand">Marque </label>
    <input type="text" class="form-control" id="brand" name="brand">
  </div>

  <div class="form-group">
    <label for="model">Modèle</label>
    <input type="text" class="form-control" id="model" name="model">
  </div>

  <div class="form-group">
    <label for="date">Année </label>
    <input type="number" class="form-control" id="date" size="4" name="date">
  </div>
  
  <div class="form-group">
    <label for="immatriculation">Immatriculation </label>
    <input type="text" class="form-control" id="immatriculation" name="immatriculation">
  </div>

	
	<div class="form-group">
	    <label for="carburant">Carburant</label>
	    <select id="carburant">
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
    <label for="color">Couleur  </label>
        <select id="Couleur">
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
    <label for="price">Prix de vente </label>
    <input type="number" class="form-control" id="price" size="8" name="price">
  </div>
  
  <div class="form-group">
	    <label for="portes">Nombre de portes</label>
	    <select id="portes" required>
          <option value="3">3</option>
          <option value="5">5</option>
       </select>
	  </div>
  
  <div class="form-group">
    <label for="options">Options </label>
    <textarea class="form-control" id="options" rows=3></textarea>
  </div>
  
  <p> AJOUTER LE CHOIX D'UN FICHIER (photo) </p>
  <p> Les alerts ne s'affichent pas </p>

  <input  type="button" class="btn btn-success" onClick="validation()">Vendre</button>
  
  <script>
  
  function afficheErreur(textErreur) {
  	alert(textErreur);
  }
  
	//Vérifie que la chaîne ne contient que des chiffres ou des lettres non accentuee A-Z, a-z
	//et au moins une lettre
	function verifier(reference)
	{
		var longueur = reference.length;
		var vuUneLettre = false;
		var i;
		var ok = true;
		var c;
		for (i = 0; i < longueur; i++)
		{
			vuUneLettre = false;
			c = reference.charAt(i);
			if (reference.charCodeAt(i) < 64 || 
			reference.charCodeAt(i) > 90 && reference.charCodeAt(i) < 97 ||
			reference.charCodeAt(i) > 122 ) {
				vuUneLettre = true;
			}
			if (vuUneLettre) {
				ok = false;
			}
		}
		return ok;
	}
	  
  function validation() {
	  var brand = new String(document.formVente.brand.value);
	  if (brand.length == 0) {
		  afficheErreur("La marque doit être renseigné");
	  }
	  
	  var model = new String(document.formVente.model.value);
	  if (model.length == 0) {
		  afficheErreur("Le modèle doit être renseigné");
	  }
	  
	  var date = new String(document.formulaire1.date.value);
		if (date.length == 0)
		{
			afficheErreur("L'année de mise en vente du véhicule doit être spécifiée");
			return;
		}
		if (isNaN(date))
		{
			afficheErreur("L'année de mise en vente du véhicule doit être un nombre");
		}
		if (date.length != 4)
		{
			afficheErreur("L'année de de mise en vente du véhicule doit être écrite avec 4 chiffres");
		}
		
		var immatriculation = new String(document.formVente.immatriculation.value);
		  if (immatriculation.length == 0) {
			  afficheErreur("L'immatriculation doit être renseigné");
		  }
		  
		  if(!verifier(immatriculation)) {
			  afficheErreur("L'immatriculation ne doit contenir que des lettres non accentuée");
		  }
	  
	  var price = new String(document.formulaire1.price.value);
		if (price.length == 0)
		{
			afficheErreur("Le prix du véhicule doit être spécifiée");
			return;
		}
		if (isNaN(price))
		{
			afficheErreur("Le prix du véhicule doit être un nombre");
		}
		if (price.length >= 15)
		{
			afficheErreur("Le prix du véhicule doit être inférieur à 15 chiffres");
		}
	
  }
  
  </script>
  

</form>
</body>
</html>