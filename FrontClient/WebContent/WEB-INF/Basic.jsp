<%@page import="services.Demo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="services.GestionGarageServiceProxy, services.Vehicule, services.GestionGarageService"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id="demo" class="services.Demo" scope="session" />
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Récupération données</title>
</head>
<body>

<h1>hiiiii</h1>

 <%
	 String Marque = request.getParameter("marque"); 
	 String Modele = request.getParameter("modele"); 
	 String Carburant = request.getParameter("carburant"); 

	 Vehicule vehicule = new Vehicule(); 
	 vehicule.setMarque(Marque);
	 vehicule.setModele(Modele);
	 vehicule.setMoteur(Carburant);
	 
 %>
 
 Marque : <%out.print(vehicule.getMarque());%>
 Modèle : <%out.print(vehicule.getModele());%>
 Carburant : <%out.print(vehicule.getMoteur());%>
</body>
</html>