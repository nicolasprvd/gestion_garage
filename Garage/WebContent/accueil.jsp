<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>MySuperCar</title>
</head>
<body>
	
	<img src="https://cdn.pixabay.com/photo/2018/03/02/16/30/car-3193562_960_720.jpg"/>
	
	<script> 
		listeVoiture = new Array();
		listeVoiture[0] = "Mercedes";
		listeVoiture[1] = "Volkswagen";
		listeVoiture[2] = "BMW";
		listeVoiture[3] = "Audi";
		listeVoiture[4] = "Porsche";
	
		function mesListes(){
			var i, j;
			for (i=0; i<listeVoiture.length; i++){
				document.write("<span> ");
				document.write("<div> "+listeVoiture[i]+" </div>");
				document.write("<img src=\"https://cdn.pixabay.com/photo/2018/03/02/16/30/car-3193562_960_720.jpg\"/>");
				document.write("</span>");
			}
		}
		document.getElementById("liste").innerHTML = mesListes();
	</script>
	
</body>
</html>