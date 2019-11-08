<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="ISO-8859-1"%>
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
                                <a class="dropdown-item" href="blog-home-2.jsp">Regla Falsa</a>
                                <a class="dropdown-item" href="blog-post.jsp">Bisección</a>
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

        <!-- Page Content -->
        <div class="container">

            <!-- Page Heading/Breadcrumbs -->
            <h1 class="mt-4 mb-3">Bases
                <small>Conversor de Bases Numéricas</small>
            </h1>

            <ol class="breadcrumb">
                <li class="breadcrumb-item">
                    <a href="index.jsp">Inicio</a>
                </li>
                <li class="breadcrumb-item">Bases</li>
                <li class="breadcrumb-item active">Conversor de Bases Numéricas</li>
            </ol>
            <br/>

            <!-- Intro Content -->
            <div class="row">
                <div class="col-lg-8">
                    <form>
                        <div class="form-group">
                            <label for="base">Convertir desde base: </label>
                            <select class="form-control" id="base">
                                <option value="1">Decimal</option>
                                <option value="2">Binario</option>
                                <option value="3">Octal</option>
                                <option value="4">Hexadecimal</option>
                            </select>
                        </div>
                        <hr/>
                        <div class="form-group row">
                            <label for="numDecimal" class="col-sm-2 col-form-label">Número Decimal</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="numDecimal" placeholder="Escriba el número decimal">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="numBinario" class="col-sm-2 col-form-label">Número Binario</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="numBinario" placeholder="Escriba el número binario" readonly>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="numOctal" class="col-sm-2 col-form-label">Número Octal</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="numOctal" placeholder="Escriba el número octal" readonly>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="numHexadecimal" class="col-sm-2 col-form-label">Número Hexadecimal</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="numHexadecimal" placeholder="Escriba el número hexadecimal" pattern="[A-F0-9]{10}" readonly>
                            </div>
                        </div>
                        </br>
                        <div class="form-group row">
                            <div class="col-sm-10">
                                <button id="convertir" type="button" class="btn btn-primary">Convertir</button>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="col-lg-6">
                    <div class="img-fluid rounded mb-4" id="applet_container"></div>
                </div>
            </div>
        </div>
        <!-- /.container -->
        <br/>
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
                $('#numDecimal').focus();
                $("#base").change(function () {
                    $('#numDecimal').val("");
                    $('#numBinario').val("");
                    $('#numHexadecimal').val("");
                    $('#numOctal').val("");
                    var option = $(this).children("option:selected").val();
                    switch (option) {
                        case "1":
                            $('#numDecimal').prop("readonly", false);
                            $('#numDecimal').focus();
                            $('#numBinario').prop("readonly", true);
                            $('#numHexadecimal').prop("readonly", true);
                            $('#numOctal').prop("readonly", true);
                            break;
                        case "2":
                            $('#numBinario').prop("readonly", false);
                            $('#numBinario').focus();
                            $('#numDecimal').prop("readonly", true);
                            $('#numHexadecimal').prop("readonly", true);
                            $('#numOctal').prop("readonly", true);
                            break;
                        case "3":
                            $('#numOctal').prop("readonly", false);
                            $('#numOctal').focus();
                            $('#numBinario').prop("readonly", true);
                            $('#numHexadecimal').prop("readonly", true);
                            $('#numDecimal').prop("readonly", true);
                            break;
                        case "4":
                            $('#numHexadecimal').prop("readonly", false);
                            $('#numHexadecimal').focus();
                            $('#numBinario').prop("readonly", true);
                            $('#numDecimal').prop("readonly", true);
                            $('#numOctal').prop("readonly", true);
                            break;
                        default:
                    }
                });

                $("#convertir").click(function () {
                    var option = $("#base").children("option:selected").val();
                    switch (option) {
                        case "1":
                            var numero = $('#numDecimal').val();
                            $.post('BasesNumericasServlet', {
                                numDecimal: numero,
                                base: "10"
                            }, function (jsonData) {
                                if ($('#numDecimal').val() !== "") {
                                    var resultados = jQuery.parseJSON(jsonData);
                                    $('#numBinario').val(resultados.binario);
                                    $('#numOctal').val(resultados.octal);
                                    $('#numHexadecimal').val(resultados.hexadecimal);
                                } else {
                                    $('#numBinario').val("");
                                    $('#numOctal').val("");
                                    $('#numHexadecimal').val("");
                                }
                                // Adquiere el foco
                                $('#numDecimal').focus();
                            });
                            break;
                        case "2":
                            var numero = $('#numBinario').val();
                            $.post('BasesNumericasServlet', {
                                numBinario: numero,
                                base: "2"
                            }, function (jsonData) {
                                if ($('#numBinario').val() !== "") {
                                    var resultados = jQuery.parseJSON(jsonData);
                                    $('#numDecimal').val(resultados.decimal);
                                    $('#numOctal').val(resultados.octal);
                                    $('#numHexadecimal').val(resultados.hexadecimal);
                                } else {
                                    $('#numDecimal').val("");
                                    $('#numOctal').val("");
                                    $('#numHexadecimal').val("");
                                }
                                // Adquiere el foco
                                $('#numBinario').focus();
                            });
                            break;
                        case "3":
                            var numero = $('#numOctal').val();
                            $.post('BasesNumericasServlet', {
                                numOctal: numero,
                                base: "8"
                            }, function (jsonData) {
                                if ($('#numOctal').val() !== "") {
                                    var resultados = jQuery.parseJSON(jsonData);
                                    $('#numDecimal').val(resultados.decimal);
                                    $('#numBinario').val(resultados.binario);
                                    $('#numHexadecimal').val(resultados.hexadecimal);
                                } else {
                                    $('#numDecimal').val("");
                                    $('#numBinario').val("");
                                    $('#numHexadecimal').val("");
                                }
                                // Adquiere el foco
                                $('#numOctal').focus();
                            });
                            break;
                        case "4":
                            var numero = $('#numHexadecimal').val();
                            $.post('BasesNumericasServlet', {
                                numHexadecimal: numero,
                                base: "16"
                            }, function (jsonData) {
                                if ($('#numHexadecimal').val() !== "") {
                                    var resultados = jQuery.parseJSON(jsonData);
                                    $('#numDecimal').val(resultados.decimal);
                                    $('#numBinario').val(resultados.binario);
                                    $('#numOctal').val(resultados.octal);
                                } else {
                                    $('#numDecimal').val("");
                                    $('#numBinario').val("");
                                    $('#numOctal').val("");
                                }
                                // Adquiere el foco
                                $('#numHexadecimal').focus();
                            });
                            break;
                        default:
                    }
                });
            });
        </script>
    </body>

</html>
