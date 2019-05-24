<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" 
    import="services.GestionGarageServiceProxy, services.Vehicule" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id="demo" class="services.Demo" scope="session" />
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

	<div id="liste"></div>
	
	
	<img src="https://cdn.pixabay.com/photo/2018/03/02/16/30/car-3193562_960_720.jpg" height="200" width="300" />
	
	<h1>Welcome !!!</h1>
	<form id="myform" name="myform" method="post" action="Basic.jsp">
 		<input type="text"  name="user" />
    	<input type="text"   name="password" />    
    	<input type="submit" value="go" onclick="Basic.jsp'" />
    </form>
	
	<%
	import java.util.Arrays;
	
	listeVoiture = new Array();
	listeVoiture = request.getQueryString();
	%>
	<script> 
		voiture1 = new Array();
		voiture1[0] = "Mercedes";
		voiture1[1] = "modeleeeee";
		voiture1[2] = "2003";
		voiture1[3] = "fg gf 12";
		
		voiture2 = new Array();
		voiture2[0] = "Heineken";
		voiture2[1] = "ellemode";
		voiture2[2] = "1997";
		voiture2[3] = "fa fg yh";
	
	
		listeVoiture = new Array();
		listeVoiture[0] = voiture1;
		listeVoiture[1] = voiture2;
	
		function mesListes(){
			var i, j;
			for (i=0; i<listeVoiture.length; i++){
				document.write("<span> "+ i);
				for (j=0; j<4; j++) {
					document.write("<div> "+listeVoiture[i][j]+" </div>");
				}
				
				// document.write("<img src=\"https://cdn.pixabay.com/photo/2018/03/02/16/30/car-3193562_960_720.jpg\"/>");
				document.write("</span>");
			}
		}
		document.getElementById("liste").innerHTML = mesListes();
	</script>
	
	
</body>
</html>