<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1> Vente de Voiture </h1>
 	
 <form>
 
	
	<!-- Marque -->
	 <p class="bold"> Marque  </p>
      <INPUT type="text" name="Marque" size="10">	 
	 
	
	<!-- Modèle -->
	 <p class="bold"> Modèle </p>
      <INPUT type="text" name="Modèle" size="10">
     
    
	<!-- Année -->
	 <p class="bold"> Année </p>
      <INPUT type="number" name="Année" size="4">
      
      
    <!-- Immatriculation -->
	 <p class="bold"> Immatriculation </p>
      <INPUT type="text" name="Modèle" size="12">
    
    
    <!-- Carburant -->
    <p class="bold"> Carburant </p>
       <select>
         <option value="Essence">Essence </option>
         <option value="Diesel">Diesel </option> 
         <option value="Electrique">Electrique </option>
          <option value="GPL"> GPL </option>
       </select>
     
     
	<!-- Nombre de Kilomètres -->
	 <p class="bold"> Nombre de Km </p>
	  <INPUT type="number" name="Km" size="6">
	

    <!-- Couleur -->
     <p class="bold"> Couleur </p>
        <select id="Couleur">
          <option value="Noire">Noire</option>
          <option value="Blanche">Blanche</option>
          <option value="Rouge">Rouge</option>
          <option value="Bleue">Bleue</option>
          <option value="Verte">Verte</option>
          <option value="Jaune">Jaune</option>
          <option value="Grise">Grise</option>
        </select>
        
        
    <!-- Nb de portes -->
     <p class="bold"> Nombre de portes </p>
        <select id="NbPortes">
          <option value="3">3</option>
          <option value="5">5</option>
	     </select>
	  
	     
    <!-- Options -->
	 <p class="bold"> Options </p>
      <INPUT type="text" name="Options">
      
      
    <!-- Prix de vente -->
     <p class="bold"> Prix de vente </p>
      <INPUT type="number" name="Prix de vente" size="8">  
    
    </form>
    
</form>
</body>
</html>