<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>HotWheels</title>
</head>
<body>
<div style="text-align:center">
  <h1>
    Formulaire de vente de voiture
  </h1>
  </div>
<form  action="/HomePage.java"  method="post">
  <div class="form-group">
    <label for="brand">Marque de la voiture </label>
    <input type="text" class="form-control" id="brand" required>
  </div>

  <div class="form-group">
    <label for="model">Modèle de la voiture </label>
    <input type="text" class="form-control" id="model">
  </div>

  <div class="form-group">
    <label for="date">Date d'achat </label>
    <input type="text" class="form-control" id="date">
  </div>

  <div class="form-group">
    <label for="color">Couleur de la voiture  </label>
    <input type="text" class="form-control" id="color">
  </div>

  <div class="form-group">
    <label for="state">Etat  de la voiture  </label>
    <input type="text" class="form-control" id="state">
  </div>
  
  <div class="form-group">
    <label for="collection">Collection  de la voiture  </label>
    <input type="text" class="form-control" id="collection">
  </div>
  
  <div class="form-group">
    <label for="price">Prix auquel vous voulez-vendre ? </label>
    <input type="number" class="form-control" id="price">
  </div>

  <button type="submit" class="btn btn-success">Vendre</button>

</form>
</body>
</html>