<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Connexion</title>
	</head>
	<body>
	<div style="text-align:center">
	  <h1> Connexion </h1>
	</div>
		<form method="post" action="http://localhost:8080/Garage/accueil.jsp">
			<p>Vous pouvez vous connecter via ce formulaire.</p>
			<div class="form-group">
				<label for="id">identifiant <span class="requis"></span></label>
				<input type="text" id="id" name="id" size="20" maxlength="60" />
			</div>
			
			<div class="form-group">
				<label for="mdp">Mot de passe <span class="requis"></span></label>
				<input type="mdp" id="mdp" name="mdp" size="20" maxlength="20" />
			</div>
			
			<input type="submit" value="Connexion" class="sansLabel" />	
		</form>
	</body>
</html>