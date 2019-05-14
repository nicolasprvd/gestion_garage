<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Achat</title>
</head>
<body>
<div style="text-align:center">
  <h1>
    Achat de Voiture
  </h1>
</div>

<form  action="/HomePage.java"  method="post">

  <div class="form-group">
    <label for="brand">Marque </label>
    <input type="text" class="form-control" id="brand" required>
  </div>

  <div class="form-group">
    <label for="model">Modèle</label>
    <input type="text" class="form-control" id="model">
  </div>

  <div class="form-group">
    <label for="date">Année </label>
    <input type="number" class="form-control" id="date" size="4">
  </div>
  
  <div class="form-group">
    <label for="immatriculation">Immatriculation </label>
    <input type="text" class="form-control" id="immatriculation" required>
  </div>

	
	<div class="form-group">
	    <label for="carburant">Carburant</label>
	    <select id="carburant" required>
         <option value="Essence">Essence </option>
         <option value="Diesel">Diesel </option> 
         <option value="Electrique">Electrique </option>
          <option value="GPL"> GPL </option>
       </select>
	  </div>
       
   <div class="form-group">
	    <label for="km">Nombre de kilomètres</label>
	    <input type="number" class="form-control" id="km" size="6">
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
    <label for="price">Prix d'achat </label>
    <input type="number" class="form-control" id="price" size="8">
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

  <button type="submit" class="btn btn-success">Valider l'achat</button>

<script> 
  	var immatriculation = new String(document.FormulaireAchat.immatriculation.value);
		  if (immatriculation.length == 0) {
			  afficheErreur("L'immatriculation doit être renseigné");
		  }
		  
		  if(!verifier(immatriculation)) {
			  afficheErreur("L'immatriculation ne doit contenir que des lettres non accentuée");
		  }
	  
	var km = new String(document.formulaireAchat.km.value);
		if (km.length == 0)
		{
			afficheErreur("Le kilométrage du véhicule doit être spécifiée");
			return;
		}
		if (isNaN(km))
		{
			afficheErreur("Le kilométrage du véhicule doit être un nombre");
		}
		if (km.length >= 7)
		{
			afficheErreur("Le kilométrage du véhicule doit être inférieur à 7 chiffres");
		}
	var price = new String (document.formulaireAchat.price.value);
		if (price.length == 0)
		{
			afficheErreur("le prix doit être renseigné");
			return;
		}
		if(isNaN(price))
		{
			afficheErreur("le prix ne peut comporter de lettres !")
		}
		if (price.length >=10) 
		{
			afficheErreur ("le prix est trop élevé !")
			
	var date = new String (document.formulaireAchat.date.value);
		if (date.length == 0)
		{
			afficheErreur("l'année doit être renseignée");
			return;
		}
		if(isNaN(date))
		{
			afficheErreur("l'année ne peut comporter de lettres !")
		}
		if (date.length >=4) 
		{
			afficheErreur ("l'année ne peut comporter plus de 4 caractères")
		}
	
	var brand = new String (document.FormulaireAchat.brand.value);
		if (brand.length == 0)
		{
		afficheErreur("la marque doit être renseignée");
		return;
		} 
		
	var model = new String (document.FormulaireAchat.model.value);
		if (model.length == 0)
		{
		afficheErreur("le modèle doit être renseigné");
		return;
		} 
		
	
</script>
</form>
</body>
</html>