<!--
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
-->

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>My Super Car - Accueil</title>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no"/>
    <link rel="stylesheet" href="css/main.css"/>
    <link rel="icon" type="image/png" href="images/my_super_car.png"/>
</head>

<body>
<!-- Header -->
<header id="header">
    <a href="accueil.jsp">My Super Car</a>
    <nav id="nav">
        <ul>
            <li><a href="accueil.jsp">Accueil</a></li>
            <li><a href="carDetail.jsp">Rechercher une voiture</a></li>
            <li><a href="connexion.jsp" id="sign_up">Se connecter</a></li>
        </ul>
    </nav>
</header>

<!-- Banner -->
<section id="title">
    <div id="content_title">
        <div>
            <h2>The future has landed</h2>
            <p>And there are no hoverboards or flying cars.<br/>
                Just apps. Lots of mother flipping apps.</p>
        </div>
        <span id="cars"><img src="images/cars.jpg" alt=""/></span>
    </div>
    <a href="#page" id="next"></a>
</section>


<div id="banner"></div>

<!-- One -->
<section id="page">
    <div id="content_page">
        <div>
            <p>Feugiat accumsan lorem eu ac lorem amet sed accumsan donec.
                Blandit orci porttitor semper. Arcu phasellus tortor enim mi
                nisi praesent dolor adipiscing. Integer mi sed nascetur cep aliquet
                augue varius tempus lobortis porttitor accumsan consequat
                adipiscing lorem dolor.</p>
        </div>
        <div>
            <p>Morbi enim nascetur et placerat lorem sed iaculis neque ante
                adipiscing adipiscing metus massa. Blandit orci porttitor semper.
                Arcu phasellus tortor enim mi mi nisi praesent adipiscing. Integer
                mi sed nascetur cep aliquet augue varius tempus. Feugiat lorem
                ipsum dolor nullam.</p>
        </div>
    </div>
    <a href="#title" id="back"></a>
</section>

<!-- Footer -->
<footer id="footer">
    <p id="copyright">&copy; My Super Car - 20/05/2019</p>
</footer>

</body>
</html>