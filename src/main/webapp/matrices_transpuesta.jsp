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
            <div class="container" id="barra_navegacion"></div>
        </nav>

        <!-- Page Content -->
        <div class="container">

            <!-- Page Heading/Breadcrumbs -->
            <h1 class="mt-4 mb-3">Matrices
                <small>Matriz transpuesta</small>
            </h1>

            <ol class="breadcrumb">
                <li class="breadcrumb-item">
                    <a href="index.jsp">Inicio</a>
                </li>
                <li class="breadcrumb-item">Matrices</li>
                <li class="breadcrumb-item active">Matriz transpuesta</li>
            </ol>
            <br/>

            <!-- Intro Content -->
            <div class="row">
                <div class="col-lg-6">
                    <div class="card">
                        <div class="card-header">
                            Parametros Matriz
                        </div>
                        <div class="card-body">
                            <form name="dimA">
                                <div class="form-group">
                                    <label for="text" class="col-form-label">Filas Matriz</label>
                                    <input type="text" class="form-control parametros" placeholder="Escriba el número de filas" id="text">
                                </div>
                                <div class="form-group">
                                    <label for="text" class="col-form-label">Columnas Matriz</label>
                                    <input type="text" class="form-control parametros" placeholder="Escriba el número de columnas" id="text">
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <br/>
            <div class="d-flex justify-content-center">
                <button id="crear" type="button" class="btn btn-primary" onclick="Comprobar()">Crear Matriz</button>
            </div>
            <hr/>
            <div class="row">
                <div id="main" class="col-lg-12">
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
                    var matriz1;
                    var matrizRes;
                    var filaA;
                    var colA;
                    var contador = 0;

                    (function ($) {
                        $.fn.inputFilter = function (inputFilter) {
                            return this.on("input keydown keyup mousedown mouseup select contextmenu drop", function () {
                                if (inputFilter(this.value)) {
                                    this.oldValue = this.value;
                                    this.oldSelectionStart = this.selectionStart;
                                    this.oldSelectionEnd = this.selectionEnd;
                                } else if (this.hasOwnProperty("oldValue")) {
                                    this.value = this.oldValue;
                                    this.setSelectionRange(this.oldSelectionStart, this.oldSelectionEnd);
                                }
                            });
                        };
                    }(jQuery));

                    $(document).ready(function () {
                        $('#barra_navegacion').load('barra_nav.jsp');
                        $(".parametros").inputFilter(function (value) {
                            return /^-?\d*[.]?\d*$/.test(value);
                        });
                    });

                    //FUNCIONCES QUE DEBEMOS DEFINIR PARA CREAR LAS MATRICES
                    function CreaMatriz(n, m) {
                        //DEFINIMOS EL TAMAÑO DE LA MATRIZ
                        this.length = n;
                        for (var i = 0; i < n; i++) {
                            this[i] = new Array(m);
                        }
                        return this;
                    }

                    function Transpuesta() {
                        Inicializar();
                        for (x = 0; x < matriz1.length; x++) {
                            for (y = 0; y < matriz1[x].length; y++) {
                                matrizRes[y][x] = matriz1[x][y];
                            }
                        }
                    }

                    function Mostrar() {
                        Cargar();
                        var q = 0;
                        for (i = 0; i < colA; i++) {
                            for (j = 0; j < filaA; j++) {
                                document.matrizR.elements[q].value = matrizRes[i][j];
                                matrizRes[i][j] = 0;
                                q++;
                            }
                        }
                    }

                    //Esta función recoge los datos del formulario y los guarda en las matrices
                    function Cargar() {
                        var q = 0;
                        for (i = 0; i < filaA; i++) {
                            for (j = 0; j < colA; j++) {
                                matriz1[i][j] = parseFloat(document.matrizA.elements[q].value);
                                q++;
                            }
                        }
                        Transpuesta();
                    }

                    // Comprueba que las dimensiones de las matrices son correctas para poder sumarlas
                    function Comprobar() {
                        filaA = parseInt(document.dimA.elements[0].value);
                        colA = parseInt(document.dimA.elements[1].value);
                        if (isNaN(filaA) || isNaN(colA)) {
                            alert("Valores no v\u00e1lidos.");
                        } else {
                            if (contador > 0) {
                                Borrar();
                            }
                            matriz1 = new CreaMatriz(filaA, colA);
                            CrearFormularios(filaA, colA);
                            matrizRes = new CreaMatriz(colA, filaA);
                            CrearFormRes(colA, filaA);
                            contador++;
                        }
                    }

                    function CrearFormularios(filA, colA, filB, colB) {
                        var d = document.createElement("DIV");
                        var fA = document.createElement("FORM");
                        var A = document.createTextNode("Matriz A");
                        d.setAttribute("id", "matrices");
                        d.setAttribute("align", "center");
                        d.setAttribute("style", "width: 50%; height: 100%; float: left; background-color: 66FF66");
                        fA.setAttribute("name", "matrizA");

                        var boton = document.createElement("INPUT");
                        boton.setAttribute("type", "button");
                        boton.setAttribute("class", "btn btn-primary");
                        boton.setAttribute("value", "Calcular");
                        boton.setAttribute("name", "button");
                        boton.onclick = function () {
                            Mostrar();
                        };
                        var input_id = "";
                        for (i = 0; i < filA; i++) {
                            var salto = document.createElement("BR");
                            for (j = 0; j < colA; j++) {
                                var casilla = document.createElement("INPUT");
                                casilla.setAttribute("type", "text");
                                casilla.setAttribute("size", "4");
                                casilla.setAttribute("name", "text");
                                input_id = "mA-" + i + "-" + j;
                                casilla.setAttribute("id", input_id);
                                fA.appendChild(casilla);
                            }
                            fA.appendChild(salto);
                        }
                        var salto = document.createElement("BR");
                        d.appendChild(salto);
                        d.appendChild(A);
                        d.appendChild(fA);
                        var salto = document.createElement("BR");
                        d.appendChild(salto);
                        d.appendChild(boton);

                        var otro = document.getElementById("main");
                        otro.appendChild(d);
                        // Se enmascaran los inputs de las matrices
                        for (i = 0; i < filA; i++) {
                            for (j = 0; j < colA; j++) {
                                input_id = "mA-" + i + "-" + j;
                                $("#" + input_id).inputFilter(function (value) {
                                    return /^-?\d*[.]?\d*$/.test(value);
                                });
                            }
                        }
                    }

                    function CrearFormRes(filaA, colA) {
                        var capa = document.createElement("DIV");
                        var fRes = document.createElement("FORM");
                        var res = document.createTextNode("Matriz Resultante");
                        capa.setAttribute("id", "resultado");
                        capa.setAttribute("align", "center");
                        capa.setAttribute("style", "width: 50%; height: 100%; float:right; background-color: 20B2AA");
                        fRes.setAttribute("name", "matrizR");

                        for (i = 0; i < filaA; i++) {
                            var salto = document.createElement("BR");
                            for (j = 0; j < colA; j++) {
                                var casilla = document.createElement("INPUT");
                                casilla.setAttribute("type", "text");
                                casilla.setAttribute("size", "4");
                                casilla.setAttribute("name", "text");
                                casilla.readOnly = "true";
                                fRes.appendChild(casilla);
                            }
                            fRes.appendChild(salto);
                        }

                        var salto = document.createElement("BR");
                        capa.appendChild(salto);
                        capa.appendChild(res);
                        capa.appendChild(fRes);

                        var otro = document.getElementById("main");
                        otro.appendChild(capa);
                    }

                    function Inicializar() {
                        for (i = 0; i < matrizRes.length; i++) {
                            for (j = 0; j < matrizRes[0].length; j++) {
                                matrizRes[i][j] = 0;
                            }
                        }
                    }

                    function Borrar() {
                        var capa1 = document.getElementById("matrices");
                        var capa2 = document.getElementById("resultado");
                        var padre1 = capa1.parentNode;
                        var padre2 = capa2.parentNode;
                        padre1.removeChild(capa1);
                        padre2.removeChild(capa2);
                    }
        </script>
    </body>

</html>
