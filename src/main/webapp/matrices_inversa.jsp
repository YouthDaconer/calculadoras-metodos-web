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
                <small>Matriz inversa</small>
            </h1>

            <ol class="breadcrumb">
                <li class="breadcrumb-item">
                    <a href="index.jsp">Inicio</a>
                </li>
                <li class="breadcrumb-item">Matrices</li>
                <li class="breadcrumb-item active">Matriz inversa</li>
            </ol>
            <br/>

            <!-- Intro Content -->
            <div class="row">
                <div class="col-lg-6">
                    <div class="card">
                        <div class="card-header">
                            Parámetros Matriz
                        </div>
                        <div class="card-body">
                            <form name="dimA">
                                <div class="form-group row">
                                    <label for="text" class="col-sm-3 col-form-label">Tamaño de la matriz</label>
                                    <div class="col-sm-9">
                                        <input type="text" class="form-control parametros" placeholder="Ej: 4 para una matriz 4x4" id="text">
                                    </div>
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
                    var matriz;
                    var soluciones;
                    var matrizRes;
                    var tam;
                    var contador = 0;

                    // Reestinge el input a un  patrón pasado por parámetro
                    // Reestinge el input a un  patrón pasado por parámetro
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

                    function Mostrar() {
                        Cargar();
                        var q = 0;
                        for (i = 0; i < tam; i++) {
                            for (j = 0; j < tam; j++) {
                                document.matrizR.elements[q].value = matrizRes[i][j];
                                matrizRes[i][j] = 0;
                                q++;                                
                            }
                        }
                    }

                    //Esta función recoge los datos del formulario y los guarda en las matrices
                    function Cargar() {
                        var q = 0;
                        Inicializar();
                        for (i = 0; i < tam; i++) {
                            for (j = 0; j < tam; j++) {
                                matriz[i][j] = parseFloat(document.matrizA.elements[q].value);                                
                                q++;                                
                            }
                            matrizRes[i][i]=1;
                        }                                                     
                        metodoGaussJordan();
                    }
                    
                    function metodoGaussJordan() {                       
                        if (arreglarMatriz()) {
                            var n = tam;
                            var p, c;                            

                            for (var i = 0; i < n; i++) {
                                c = 0.0;
                                //Elementos pertenecientes a la diagonal (transformarlos en 1)
                                p = matriz[i][i];// seleccionamos el pivote
                                
                                for (var j = 0; j < n; j++) {
                                    matriz[i][j] = matriz[i][j] / p;
                                    matrizRes[i][j] = matrizRes[i][j] / p;// operamos la fila                                    
                                }
                                
                                

                                //Elementos no pertenecientes a la diagonal (transformarlos en 0)
                                for (var x = 0; x < n; x++) {
                                    if (i != x) {
                                        c = matriz[x][i];
                                        
                                        for (var y = 0; y < n; y++) {
                                            matriz[x][y] = matriz[x][y] - c * matriz[i][y];//operamos la fila  
                                            matrizRes[x][y] = matrizRes[x][y] - c * matrizRes[i][y];
                                        }
                                        
                                    }
                                }
                                if (ceroEnDiagonal() != -1) {
                                    alert("esta matriz no tiene inversa");
                                }
                            }                            
                        } else {
                           alert("Verifica que la matriz esté escrita correctamente :(");
                        }

                    }
                    
                    
                    //cambia la fila de la matriz por otra
                    function cambiarFila(index1, index2) {
                        var n = tam;
                        var temp1 = new Array(n);
                        var temp2 = new Array(n);
                        
                        for (var i = 0; i < n; i++) {
                            temp1[i] =matriz[index1][i];
                            temp2[i] =matriz[index1][i];
                            matriz[index1][i]=matriz[index2][i];
                            matriz[index2][i]=temp1[i];
                            matrizRes[index1][i]=matrizRes[index2][i];
                            matrizRes[index2][i]=temp2[i];
                        }
                    }
                    //----------------------------------

                    //retorna el indice de la diagonal con 0
                    function ceroEnDiagonal() {
                        var i;
                        for (i = 0; i < tam; i++) {
                            if (matriz[i][i] == 0) {
                                return i;
                            }
                        }
                        return - 1;
                    }
                    //----------------------------------------

                    //Acomoda la matrir y retorna true si logró acomodarla
                    function arreglarMatriz() {
                        var n = tam;
                        var i = 0;
                        while (ceroEnDiagonal() != - 1 && i < n - 1) {
                            cambiarFila(i, i + 1);
                            i++;
                        }
                        return ceroEnDiagonal() == - 1; //si existe un cero en la diagonal no está acomodada
                    }
                    //------------------------------

                    // Comprueba que las dimensiones de las matrices son correctas para poder sumarlas
                    function Comprobar() {
                        tam = parseInt(document.dimA.elements[0].value);
                        
                        if (isNaN(tam)) {
                            alert("Valor no v\u00e1lido.");
                        } else if (tam<2) {
                            alert("Dimensiones de la matriz no v\u00e1lida.\nEl n\u00famero de incógnitas de la matriz debe ser\nmayor a 1.");
                        } else {
                            if (contador > 0) {
                                Borrar();
                            }
                            matriz = new CreaMatriz(tam, tam);                            
                            CrearFormularios(tam);
                            matrizRes = new CreaMatriz(tam, tam);
                            CrearFormRes(tam);
                            contador++;
                        }
                    }

                    function CrearFormularios(tam) {
                        var d = document.createElement("DIV");
                        var fA = document.createElement("FORM");                        
                        var A = document.createTextNode("Matriz");                        
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
                        for (i = 0; i < tam; i++) {
                            var salto = document.createElement("BR");
                            for (j = 0; j < tam; j++) {
                                var casilla = document.createElement("INPUT");
                                casilla.setAttribute("type", "text");
                                casilla.setAttribute("size", "4");
                                casilla.setAttribute("name", "text");
                                input_id = "m-" + i + "-" + j;
                                casilla.setAttribute("id", input_id);
                                fA.appendChild(casilla);
                            }
                            fA.appendChild(salto);
                        }
                        
                        var salto = document.createElement("BR");
                        d.appendChild(salto);
                        d.appendChild(A);
                        d.appendChild(fA);
                        d.appendChild(salto);
                        
                        var salto = document.createElement("BR");
                        d.appendChild(salto);
                        d.appendChild(boton);

                        var otro = document.getElementById("main");
                        otro.appendChild(d);
                        // Se enmascaran los inputs de las matrices
                        for (i = 0; i < tam; i++) {
                            for (j = 0; j <tam+1; j++) {
                                input_id = "m-" + i + "-" + j;
                                $("#" + input_id).inputFilter(function (value) {
                                    return /^-?\d*[.]?\d*$/.test(value);
                                });
                            }
                        }                        
                    }

                    function CrearFormRes(tam) {
                        var capa = document.createElement("DIV");
                        var fRes = document.createElement("FORM");
                        var res = document.createTextNode("Matriz Inversa");
                        capa.setAttribute("id", "resultado");
                        capa.setAttribute("align", "center");
                        capa.setAttribute("style", "width: 50%; height: 100%; float:right; background-color: 20B2AA");
                        fRes.setAttribute("name", "matrizR");

                        for (i = 0; i < tam; i++) {
                            var salto = document.createElement("BR");
                            for (j = 0; j < tam; j++) {
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
                                matrizRes[i][j] = 0.0;
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
