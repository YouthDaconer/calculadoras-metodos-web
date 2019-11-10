<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Calculadoras de Métodos Numéricos</title>

        <!-- Bootstrap core CSS -->
        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom styles for this template -->
        <link href="css/modern-business.css" rel="stylesheet">

    </head>

    <body>

        <!-- Navigation -->
        <nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark fixed-top">
            <div class="container">
                <a class="navbar-brand" href="index.jsp">Math Raphsody</a>
                <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ml-auto">
                        <!--li class="nav-item">
                          <a class="nav-link" href="about.jsp">About</a>
                        </li>
                        <li class="nav-item">
                          <a class="nav-link" href="services.jsp">Services</a>
                        </li>
                        <li class="nav-item">
                          <a class="nav-link" href="contact.jsp">Contact</a>
                        </li-->
                        <li class="nav-item">
                            <a class="nav-link" href="calculadora.jsp">Calculadora</a>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownBases" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Bases
                            </a>
                            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownBases">
                                <a class="dropdown-item" href="conversor_bases.jsp">Conversor de Bases Numéricas</a>
                                <a class="dropdown-item" href="conversor_ieee754.jsp">Estandar IEEE754</a>
                            </div>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownRaices" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Raíces
                            </a>
                            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownRaices">
                                <a class="dropdown-item" href="newthon_raphson.jsp">Newthon Rapshon</a>
                                <a class="dropdown-item" href="regla_falsa.jsp">Regla Falsa</a>
                                <a class="dropdown-item" href="biseccion.jsp">Bisección</a>
                            </div>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="derivadas.jsp">Derivadas</a>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownRaices" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Integrales
                            </a>
                            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownRaices">
                                <a class="dropdown-item" href="integracion_rectangulos.jsp">Suma de rectángulos</a>
                                <a class="dropdown-item" href="integracion_trapecios.jsp">Suma de trapecios</a>
                                <a class="dropdown-item" href="integracion_simpson13.jsp">Simpson 1/3</a>
                                <a class="dropdown-item" href="integracion_simpson38.jsp">Simpson 3/8</a>
                                <a class="dropdown-item" href="integracion_monte_carlo.jsp">Montecarlo</a>
                            </div>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="about.jsp">Sistema/Ec. Lineal</a>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMatrices" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Matrices
                            </a>
                            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMatrices">
                                <a class="dropdown-item" href="full-width.jsp">Suma</a>
                                <a class="dropdown-item" href="sidebar.jsp">Resta</a>
                                <a class="dropdown-item" href="faq.jsp">Producto punto</a>
                                <a class="dropdown-item" href="404.jsp">Producto escalar</a>
                                <a class="dropdown-item" href="pricing.jsp">Transpuesta</a>
                                <a class="dropdown-item" href="pricing.jsp">Inversa</a>
                                <a class="dropdown-item" href="pricing.jsp">Gauss Jordan</a>
                            </div>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="about.jsp">Ajuste Polinómico</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="about.jsp">Acerca de</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

        <header>
            <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                </ol>
                <div class="carousel-inner" role="listbox">
                    <!-- Slide One - Set the background image for this slide in the line below -->
                    <div class="carousel-item active" style="background-image: url('images/1.png')">
                        <div class="carousel-caption d-none d-md-block">
                            <h3 style="color: black">¡Bienvenido a Math Raphsody!</h3>
                            <p style="color: black">Tu sitio web de consulta para métodos numéricos</p>
                        </div>
                    </div>
                    <!-- Slide Two - Set the background image for this slide in the line below -->
                    <div class="carousel-item" style="background-image: url('images/2.png')">
                        <div class="carousel-caption d-none d-md-block">
                            <h3 style="color: black">Descubre nuestras herramientas</h3>
                            <p style="color: black">Utiliza nuestras sofisticadas calculadoras para resolver tus problemas</p>
                        </div>
                    </div>
                    <!-- Slide Three - Set the background image for this slide in the line below -->
                    <div class="carousel-item" style="background-image: url('images/3.jpg')">
                        <div class="carousel-caption d-none d-md-block">
                            <h3 style="color: black">Consulta nuestra guia</h3>
                            <p style="color: black">Tambien puedes investigar los temas de tu interes en nuestra guia</p>
                        </div>
                    </div>
                </div>
                <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </header>

        <!-- Page Content -->
        <div class="container">

            <h1 class="my-4">Videos explicativos de los temas</h1>

            <div class="row">
                <div class="col-lg-4 col-sm-6 portfolio-item">
                    <div class="card h-100">
                        <a href="#"><img class="card-img-top" src="http://i3.ytimg.com/vi/VKeeT149XRs/maxresdefault.jpg" alt=""></a>
                        <div class="card-body">
                            <h4 class="card-title">
                                <a href="#">Conversor de bases númericas</a>
                            </h4>
                            <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet numquam aspernatur eum quasi sapiente nesciunt? Voluptatibus sit, repellat sequi itaque deserunt, dolores in, nesciunt, illum tempora ex quae? Nihil, dolorem!</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-sm-6 portfolio-item">
                    <div class="card h-100">
                        <a href="#"><img class="card-img-top" src="http://i3.ytimg.com/vi/1ZOUbSeutuI/maxresdefault.jpg" alt=""></a>
                        <div class="card-body">
                            <h4 class="card-title">
                                <a href="#">Newthon Raphson</a>
                            </h4>
                            <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra euismod odio, gravida pellentesque urna varius vitae.</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-sm-6 portfolio-item">
                    <div class="card h-100">
                        <a href="#"><img class="card-img-top" src="http://i3.ytimg.com/vi/i2LVjwAg02k/maxresdefault.jpg" alt=""></a>
                        <div class="card-body">
                            <h4 class="card-title">
                                <a href="#">Regla Falsa</a>
                            </h4>
                            <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quos quisquam, error quod sed cumque, odio distinctio velit nostrum temporibus necessitatibus et facere atque iure perspiciatis mollitia recusandae vero vel quam!</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-sm-6 portfolio-item">
                    <div class="card h-100">
                        <a href="#"><img class="card-img-top" src="http://i3.ytimg.com/vi/ir9SJId4jmQ/maxresdefault.jpg" alt=""></a>
                        <div class="card-body">
                            <h4 class="card-title">
                                <a href="#">Bisección</a>
                            </h4>
                            <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra euismod odio, gravida pellentesque urna varius vitae.</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-sm-6 portfolio-item">
                    <div class="card h-100">
                        <a href="#"><img class="card-img-top" src="http://i3.ytimg.com/vi/XAzetwuano0/maxresdefault.jpg" alt=""></a>
                        <div class="card-body">
                            <h4 class="card-title">
                                <a href="#">Project Five</a>
                            </h4>
                            <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra euismod odio, gravida pellentesque urna varius vitae.</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-sm-6 portfolio-item">
                    <div class="card h-100">
                        <a href="#"><img class="card-img-top" src="http://i3.ytimg.com/vi/wTTEM5qJNiA/maxresdefault.jpg" alt=""></a>
                        <div class="card-body">
                            <h4 class="card-title">
                                <a href="#">Project Six</a>
                            </h4>
                            <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque earum nostrum suscipit ducimus nihil provident, perferendis rem illo, voluptate atque, sit eius in voluptates, nemo repellat fugiat excepturi! Nemo, esse.</p>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /.row -->
        </div>
        <!-- /.container -->

        <!-- Footer -->
        <footer class="py-5 bg-dark">
            <div class="container">
                <p class="m-0 text-center text-white">Copyright &copy; Math Raphsody 2019</p>
            </div>
            <!-- /.container -->
        </footer>

        <!-- Bootstrap core JavaScript -->
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    </body>

</html>
