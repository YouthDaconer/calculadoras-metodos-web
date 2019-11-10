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
            <div class="container" id="barra_navegacion"></div>
        </nav>

        <!-- Page Content -->
        <div class="container">

            <!-- Page Heading/Breadcrumbs -->
            <h1 class="mt-4 mb-3">Derivadas
            </h1>

            <ol class="breadcrumb">
                <li class="breadcrumb-item">
                    <a href="index.jsp">Inicio</a>
                </li>
                <li class="breadcrumb-item active">Derivadas</li>
            </ol>
            <br/>

            <!-- Intro Content -->
            <div class="row">
                <div class="col-lg-6">
                    <form>
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
                        <hr/>
                        <div class="form-group row">
                            <label for="resultado" class="col-sm-2 col-form-label">Primera Derivada F'(x)</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="primera_derivada" readonly>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="resultado" class="col-sm-2 col-form-label">Segunda Derivada F"(x)</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="segunda_derivada" readonly>
                            </div>
                        </div>
                        </br>
                        <div class="form-group row">
                            <div class="col-sm-10">
                                <button id="calcular" type="button" class="btn btn-primary">Calcular</button>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="col-lg-6">
                    <div class="img-fluid rounded mb-4" id="applet_container"></div>
                </div>
            </div>
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
            $('#barra_navegacion').load('barra_nav.jsp');
            applet.inject('applet_container');
            $('#calcular').click(function (event) {
                var expresion = $('#expresionMath').val();
                var valor = $('#valorX').val();
                $.post('DerivadasServlet', {
                    expresionMath: expresion,
                    valorX: valor
                }, function (jsonData) {
                    var resultados = jQuery.parseJSON(jsonData);
                    setFunction('T');
                    $('#primera_derivada').val(resultados.primera);
                    $('#segunda_derivada').val(resultados.segunda);
                });
            });
        });
    </script>
</body>

</html>
