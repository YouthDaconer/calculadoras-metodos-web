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
        <script type="text/javascript" src="https://cdn.geogebra.org/apps/deployggb.js"></script>
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
                                <a class="dropdown-item" href="sidebar.jsp">Suma de trapecios</a>
                                <a class="dropdown-item" href="faq.jsp">Simpson 1/3</a>
                                <a class="dropdown-item" href="404.jsp">Simpson 3/8</a>
                                <a class="dropdown-item" href="pricing.jsp">Montecarlo</a>
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
            <h1 class="mt-4 mb-3">Newthon Raphson
            </h1>

            <ol class="breadcrumb">
                <li class="breadcrumb-item">
                    <a href="index.jsp">Inicio</a>
                </li>
                <li class="breadcrumb-item">Raíces</li>
                <li class="breadcrumb-item active">Newthon Raphson</li>
            </ol>
            <br/>
            <form>
                <div class="row">
                    <div class="col-lg-6">
                        <div class="form-group row">
                            <label for="expresionMath" class="col-sm-2 col-form-label">Expresión</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="expresionMath" placeholder="Escriba la expresión matemática">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="valorX" class="col-sm-2 col-form-label">Evaluar en x</label>
                            <div class="col-sm-10">
                                <input type="number" class="form-control" id="valorX" placeholder="Escriba el valor de x">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="errorTol" class="col-sm-2 col-form-label">Error Tolerancia</label>
                            <div class="col-sm-10">
                                <input type="number" class="form-control" id="errorTol" placeholder="Escriba el error de tolerancia">
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="form-group row">
                            <label for="resultado" class="col-sm-2 col-form-label">Resultado</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="resultado" readonly>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="errorRel" class="col-sm-2 col-form-label">Error Relativo</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="errorRel" readonly>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="numIteraciones" class="col-sm-2 col-form-label">Iteraciones</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="numIteraciones" readonly>
                            </div>
                        </div>
                        </br>
                        <div class="form-group row">
                            <div class="col-sm-12">
                                <div class="float-right">
                                    <button id="calcular" type="button" class="btn btn-primary">Calcular</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <br/>
                <div class="row">
                    <div class="col-lg-12">
                        <table class="table table-striped">
                            <thead class="thead-dark">
                                <tr>
                                    <th scope="col">Iteración</th>
                                    <th scope="col">Xn</th>
                                    <th scope="col">Imagen Xn</th>
                                    <th scope="col">Derivada Xn</th>
                                    <th scope="col">Xn+1</th>
                                    <th scope="col">Error relativo</th>
                                </tr>
                            </thead>
                            <tbody id="tabla_iteraciones">
                                <tr>
                                    <td colspan="6"><center>Sin iteraciones</center></td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <hr/>
                <br/>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="img-fluid rounded mb-4" id="applet_container"></div>
                    </div>
                </div>
            </form>
        </div>
    </div>
    <br/>
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
        var funcion = "";

        function setFunction(objName) {
            var applet = document.ggbApplet;
            if (funcion !== "") {
                document.ggbApplet.reset();
            }
            funcion = "f(x)=" + $('#expresionMath').val();
            applet.evalCommand(funcion);
        }

        function perspective(p) {
            updateHelp(p);
            ggbApplet.setPerspective(p);
        }

        var parameters = {
            "id": "ggbApplet",
            "appName": "graphing",
            "height": 400,
            "showToolBar": true,
            "borderColor": null,
            "showMenuBar": true,
            "allowStyleBar": true,
            "showAlgebraInput": true,
            "enableLabelDrags": false,
            "enableShiftDragZoom": true,
            "capturingThreshold": null,
            "showToolBarHelp": false,
            "errorDialogsActive": true,
            "showTutorialLink": true,
            "showLogging": true,
            "useBrowserForJS": false};
        var applet = new GGBApplet(parameters, '5.0', 'applet_container');

        $(document).ready(function () {
            applet.inject('applet_container');
            $('#calcular').click(function (event) {
                var expresion = $('#expresionMath').val();
                var errorTol = $('#errorTol').val();
                var valor = $('#valorX').val();
                $.post('NewthonRaphsonServlet', {
                    expresionMath: expresion,
                    errorTol: errorTol,
                    valorX: valor
                }, function (jsonData) {
                    var resultados = jQuery.parseJSON(jsonData);
                    setFunction('T');
                    $("#tabla_iteraciones").html("");
                    var tabla = "";
                    console.log(resultados.tabla_iteraciones);
                    var elementos = JSON.parse(resultados.tabla_iteraciones);
                    for (var i = 0; i < elementos.length; i++) {
                        tabla += '<tr><td>' + elementos[i][0] + '</td><td>' + elementos[i][1] + '</td><td>' + elementos[i][2] + '</td><td>' + elementos[i][3] + '</td><td>' + elementos[i][4] + '</td><td>' + elementos[i][5] + '</td></tr>';
                    }
                    $("#tabla_iteraciones").html(tabla);
                    $('#resultado').val(resultados.resultado);
                    $('#errorRel').val(resultados.error);
                    $('#numIteraciones').val(resultados.iteraciones);
                });
            });
        });
    </script>
</body>

</html>
