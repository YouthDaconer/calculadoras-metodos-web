<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en" class="no-js">
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
        <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
        <title>Calculadoras de Métodos Numéricos</title>
        <meta name="description" content="Blueprint: Horizontal Slide Out Menu" />
        <meta name="keywords" content="horizontal, slide out, menu, navigation, responsive, javascript, images, grid" />
        <meta name="author" content="Codrops" />
        <link rel="shortcut icon" href="../favicon.ico">
        <link rel="stylesheet" type="text/css" href="css/default.css" />
        <link rel="stylesheet" type="text/css" href="css/component.css" />
        <script src="js/modernizr.custom.js"></script>
    </head>
    <body>
        <div class="container">
            <header class="clearfix">
                <span>Math Rhapsody <span class="bp-icon bp-icon-about" data-content="The Blueprints are a collection of basic and minimal website concepts, components, plugins and layouts with minimal style for easy adaption and usage, or simply for inspiration."></span></span>
                <h1>Calculadoras de Métodos Numéricos</h1>
                <nav>
                    <img src="images/logo_math_rhapsody.png" />
                </nav>
            </header>	
            <div class="main">
                <nav class="cbp-hsmenu-wrapper" id="cbp-hsmenu-wrapper">
                    <div class="cbp-hsinner">
                        <ul class="cbp-hsmenu">
                            <li><a href="#">Calculadora</a></li>
                            <li><a href="#">Graficadora</a></li>
                            <li>
                                <a href="#">Bases</a>
                                <ul class="cbp-hssubmenu">
                                    <li><a href="#"><img src="images/10.png" alt="img10"/><span>Fresh Juice</span></a></li>
                                    <li><a href="#"><img src="images/6.png" alt="img06"/><span>Sweet Rum</span></a></li>
                                    <li><a href="#"><img src="images/9.png" alt="img09"/><span>Eggy Liquor</span></a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="#">Ecuaciones</a>
                                <ul class="cbp-hssubmenu">
                                    <li><a href="#"><img src="images/10.png" alt="img10"/><span>Fresh Juice</span></a></li>
                                    <li><a href="#"><img src="images/6.png" alt="img06"/><span>Sweet Rum</span></a></li>
                                    <li><a href="#"><img src="images/9.png" alt="img09"/><span>Eggy Liquor</span></a></li>
                                </ul>
                            </li>
                            <li><a href="#">Derivadas</a></li>
                            <li>
                                <a href="#">Integrales</a>
                                <ul class="cbp-hssubmenu">
                                    <li><a href="#"><img src="images/10.png" alt="img10"/><span>Fresh Juice</span></a></li>
                                    <li><a href="#"><img src="images/6.png" alt="img06"/><span>Sweet Rum</span></a></li>
                                    <li><a href="#"><img src="images/9.png" alt="img09"/><span>Eggy Liquor</span></a></li>
                                </ul>
                            </li>
                            <li><a href="#">Sistema/Ec. Lineal</a></li>
                            <li>
                                <a href="#">Matrices</a>
                                <ul class="cbp-hssubmenu">
                                    <li><a href="#"><img src="images/10.png" alt="img10"/><span>Fresh Juice</span></a></li>
                                    <li><a href="#"><img src="images/6.png" alt="img06"/><span>Sweet Rum</span></a></li>
                                    <li><a href="#"><img src="images/9.png" alt="img09"/><span>Eggy Liquor</span></a></li>
                                </ul>
                            </li>
                            <li><a href="#">Ajuste Polinómico</a></li>
                            <li><a href="#">Acerca de</a></li>
                        </ul>
                    </div>
                </nav>
            </div>
        </div>
        <script src="js/cbpHorizontalSlideOutMenu.min.js"></script>
        <script>
            var menu = new cbpHorizontalSlideOutMenu(document.getElementById('cbp-hsmenu-wrapper'));
        </script>
    </body>
</html>

