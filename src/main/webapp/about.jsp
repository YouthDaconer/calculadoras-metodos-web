<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Modern Business - Start Bootstrap Template</title>

        <!-- Bootstrap core CSS -->
        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom styles for this template -->
        <link href="css/modern-business.css" rel="stylesheet">

    </head>

    <body>
        <!-- Navigation -->
        <nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark fixed-top">
            <div class="container" id="barra_navegacion"></div>
        </nav>

        <!-- Page Content -->
        <div class="container">

            <!-- Page Heading/Breadcrumbs -->
            <h1 class="mt-4 mb-3">¿Quienes somos?
            </h1>

            <ol class="breadcrumb">
                <li class="breadcrumb-item">
                    <a href="index.html">Inicio</a>
                </li>
                <li class="breadcrumb-item active">Acerca de nosotros</li>
            </ol>
            <br/>
            <h2>Creadores del sitio</h2>
            <br/>
            <div class="row">
                <div class="col-lg-4 mb-4">
                    <div class="card h-100 text-center">
                        <img class="card-img-top" width="750" height="345" src="images/sebas.jpg" alt="">
                        <div class="card-body">
                            <h4 class="card-title">Juan Sebastian Reyes</h4>
                            <h6 class="card-subtitle mb-2 text-muted">Desarrollador</h6>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 mb-4">
                    <div class="card h-100 text-center">
                        <img class="card-img-top" src="images/carlos.jpg" alt="">
                        <div class="card-body">
                            <h4 class="card-title">Carlos Andrés Caicedo</h4>
                            <h6 class="card-subtitle mb-2 text-muted">Desarrollador</h6>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 mb-4">
                    <div class="card h-100 text-center">
                        <img class="card-img-top" width="750" height="345" src="images/david.jpg" alt="">
                        <div class="card-body">
                            <h4 class="card-title">David Garrido</h4>
                            <h6 class="card-subtitle mb-2 text-muted">Documentador</h6>
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
        <script>
            $(document).ready(function () {
                $('#barra_navegacion').load('barra_nav.jsp');
            });
        </script>
    </body>

</html>
