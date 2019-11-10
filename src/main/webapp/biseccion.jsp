<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
    <head>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Calculadoras de M�todos Num�ricos</title>

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
            <h1 class="mt-4 mb-3">Bisecci�n
            </h1>

            <ol class="breadcrumb">
                <li class="breadcrumb-item">
                    <a href="index.jsp">Inicio</a>
                </li>
                <li class="breadcrumb-item">Ra�ces</li>
                <li class="breadcrumb-item active">Bisecci�n</li>
            </ol>
            <br/>
            <form>
                <div class="row">
                    <div class="col-lg-6">
                        <div class="form-group row">
                            <label for="expresionMath" class="col-sm-2 col-form-label">Expresi�n</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="expresionMath" placeholder="Escriba la expresi�n matem�tica" required>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-header">
                                Intervalo
                            </div>
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-lg-6">
                                        <div class="form-group row">
                                            <label for="inferior" class="col-sm-5 col-form-label">L�mite inferior</label>
                                            <div class="col-sm-7">
                                                <input type="number" class="form-control" id="inferior" placeholder="Desde" required>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="form-group row">
                                            <label for="superior" class="col-sm-5 col-form-label">L�mite superior</label>
                                            <div class="col-sm-7">
                                                <input type="number" class="form-control" id="superior" placeholder="Hasta" required>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <br/>
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
                                    <th scope="col">Iteraci�n</th>
                                    <th scope="col">Ext. inferior</th>
                                    <th scope="col">Ext. superior</th>
                                    <th scope="col">Imagen ext. inferior</th>
                                    <th scope="col">Imagen ext. superior</th>
                                    <th scope="col">Ra�z</th>
                                    <th scope="col">Imagen ra�z</th>
                                    <th scope="col">Error relativo</th>
                                </tr>
                            </thead>
                            <tbody id="tabla_iteraciones">
                                <tr>
                                    <td colspan="8"><center>Sin iteraciones</center></td>
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
            $('#barra_navegacion').load('barra_nav.jsp');
            applet.inject('applet_container');
            $('#calcular').click(function (event) {
                var expresion = $('#expresionMath').val();
                var errorTol = $('#errorTol').val();
                var inferior = $('#inferior').val();
                var superior = $('#superior').val();
                $.post('BiseccionServlet', {
                    expresionMath: expresion,
                    errorTol: errorTol,
                    inferior: inferior,
                    superior: superior
                }, function (jsonData) {
                    var resultados = jQuery.parseJSON(jsonData);
                    setFunction('T');
                    $("#tabla_iteraciones").html("");
                    var tabla = "";
                    console.log(resultados.tabla_iteraciones);
                    var elementos = JSON.parse(resultados.tabla_iteraciones);
                    for (var i = 0; i < elementos.length; i++) {
                        tabla += '<tr><td>' + elementos[i][0] + '</td><td>'
                                + elementos[i][1] + '</td><td>'
                                + elementos[i][2] + '</td><td>'
                                + elementos[i][3] + '</td><td>'
                                + elementos[i][4] + '</td><td>'
                                + elementos[i][5] + '</td><td>'
                                + elementos[i][6] + '</td><td>'
                                + elementos[i][7] + '</td></tr>';
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
