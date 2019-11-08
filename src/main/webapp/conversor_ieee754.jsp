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
                <small>Conversor Estandar IEEE754</small>
            </h1>

            <ol class="breadcrumb">
                <li class="breadcrumb-item">
                    <a href="index.jsp">Inicio</a>
                </li>
                <li class="breadcrumb-item">Bases</li>
                <li class="breadcrumb-item active">Conversor Estandar IEEE754</li>
            </ol>
            <br/>

            <!-- Intro Content -->
            <div class="row">
                <div class="col-lg-12">
                    <form id="convertir_form">
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label for="base">Convertir desde base: </label>
                                    <div class="row">
                                        <div class="col-sm-9">
                                            <select class="form-control" id="base">
                                                <option value="1">Decimal</option>
                                                <option value="2">Binario</option>
                                                <option value="3">32 Bits</option>
                                                <option value="4">64 Bits</option>
                                            </select>
                                        </div>
                                        <div class="col-sm-3">
                                            <button id="convertir" type="button" class="btn btn-primary">Convertir</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <br/>
                        <div class="card">
                            <div class="card-header">
                                Número (Binario o Decimal)
                            </div>
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-lg-6">
                                        <div class="form-group row">
                                            <label for="numDecimal" class="col-sm-4 col-form-label">Número Decimal</label>
                                            <div class="col-sm-8">
                                                <input type="text" class="form-control" id="numDecimal" placeholder="Escriba el número decimal" required>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="form-group row">
                                            <label for="numBinario" class="col-sm-4 col-form-label">Número Binario</label>
                                            <div class="col-sm-8">
                                                <input type="text" class="form-control" id="numBinario" placeholder="Escriba el número binario" readonly>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <br/>
                        <div class="card">
                            <div class="card-header">
                                Número 32 Bits
                            </div>
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-lg-3">
                                        <div class="form-group row">
                                            <div class="col-sm-3">
                                                <br/>
                                                <label for="signo_32_bits" class="col-form-label">Signo</label>
                                            </div>
                                            <div class="col-sm-8">
                                                <br/>
                                                <input type="text" class="form-control" id="signo_32_bits" placeholder="0 - 1" readonly>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-4">
                                        <div class="form-group row">
                                            <div class="col-sm-3">
                                                <br/>
                                                <label for="exponente_32_bits" class="col-form-label">Exponente</label>
                                            </div>
                                            <div class="col-sm-8">
                                                <br/>
                                                <input type="text" class="form-control" id="exponente_32_bits" placeholder="Escriba el exponente" readonly>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-5">
                                        <div class="form-group row">
                                            <div class="col-sm-3">
                                                <br/>
                                                <label for="mantisa_32_bits" class="col-form-label">Mantisa</label>
                                            </div>
                                            <div class="col-sm-9">
                                                <textarea class="form-control" id="mantisa_32_bits" rows="3" readonly></textarea>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <br/>
                        <div class="card">
                            <div class="card-header">
                                Número 64 Bits
                            </div>
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-lg-3">
                                        <div class="form-group row">
                                            <div class="col-sm-3">
                                                <br/>
                                                <label for="signo_64_bits" class="col-form-label">Signo</label>
                                            </div>
                                            <div class="col-sm-8">
                                                <br/>
                                                <input type="text" class="form-control" id="signo_64_bits" placeholder="0 - 1" readonly>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-4">
                                        <div class="form-group row">
                                            <div class="col-sm-3">
                                                <br/>
                                                <label for="exponente_64_bits" class="col-form-label">Exponente</label>
                                            </div>
                                            <div class="col-sm-8">
                                                <br/>
                                                <input type="text" class="form-control" id="exponente_64_bits" placeholder="Escriba el exponente" readonly>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-5">
                                        <div class="form-group row">
                                            <div class="col-sm-3">
                                                <br/>
                                                <label for="mantisa_64_bits" class="col-form-label">Mantisa</label>
                                            </div>
                                            <div class="col-sm-9">
                                                <textarea class="form-control" id="mantisa_64_bits" rows="3" readonly></textarea>
                                            </div>
                                        </div>
                                    </div>
                                </div>
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
                    $('#signo_32_bits').val("");
                    $('#exponente_32_bits').val("");
                    $('#mantisa_32_bits').val("");
                    $('#signo_64_bits').val("");
                    $('#exponente_64_bits').val("");
                    $('#mantisa_64_bits').val("");
                    var option = $(this).children("option:selected").val();
                    switch (option) {
                        case "1":
                            $('#numDecimal').prop("readonly", false);
                            $('#numDecimal').prop("required", true);
                            $('#numDecimal').focus();
                            $('#numBinario').prop("readonly", true);
                            $('#signo_32_bits').prop("readonly", true);
                            $('#exponente_32_bits').prop("readonly", true);
                            $('#mantisa_32_bits').prop("readonly", true);
                            $('#signo_64_bits').prop("readonly", true);
                            $('#exponente_64_bits').prop("readonly", true);
                            $('#mantisa_64_bits').prop("readonly", true);
                            $('#numBinario').prop("required", false);
                            $('#signo_32_bits').prop("required", false);
                            $('#exponente_32_bits').prop("required", false);
                            $('#mantisa_32_bits').prop("required", false);
                            $('#signo_64_bits').prop("required", false);
                            $('#exponente_64_bits').prop("required", false);
                            $('#mantisa_64_bits').prop("required", false);
                            break;
                        case "2":
                            $('#numBinario').prop("readonly", false);
                            $('#numBinario').prop("required", true);
                            $('#numBinario').focus();
                            $('#numDecimal').prop("readonly", true);
                            $('#signo_32_bits').prop("readonly", true);
                            $('#exponente_32_bits').prop("readonly", true);
                            $('#mantisa_32_bits').prop("readonly", true);
                            $('#signo_64_bits').prop("readonly", true);
                            $('#exponente_64_bits').prop("readonly", true);
                            $('#mantisa_64_bits').prop("readonly", true);
                            $('#numDecimal').prop("required", false);
                            $('#signo_32_bits').prop("required", false);
                            $('#exponente_32_bits').prop("required", false);
                            $('#mantisa_32_bits').prop("required", false);
                            $('#signo_64_bits').prop("required", false);
                            $('#exponente_64_bits').prop("required", false);
                            $('#mantisa_64_bits').prop("required", false);
                            break;
                        case "3":
                            $('#signo_32_bits').prop("readonly", false);
                            $('#exponente_32_bits').prop("readonly", false);
                            $('#mantisa_32_bits').prop("readonly", false);
                            $('#signo_32_bits').prop("required", true);
                            $('#exponente_32_bits').prop("required", true);
                            $('#mantisa_32_bits').prop("required", true);
                            $('#signo_32_bits').focus();
                            $('#signo_64_bits').prop("readonly", true);
                            $('#exponente_64_bits').prop("readonly", true);
                            $('#mantisa_64_bits').prop("readonly", true);
                            $('#numDecimal').prop("readonly", true);
                            $('#numBinario').prop("readonly", true);
                            $('#signo_64_bits').prop("required", false);
                            $('#exponente_64_bits').prop("required", false);
                            $('#mantisa_64_bits').prop("required", false);
                            $('#numDecimal').prop("required", false);
                            $('#numBinario').prop("required", false);
                            break;
                        case "4":
                            $('#signo_64_bits').prop("readonly", false);
                            $('#exponente_64_bits').prop("readonly", false);
                            $('#mantisa_64_bits').prop("readonly", false);
                            $('#signo_64_bits').prop("required", true);
                            $('#exponente_64_bits').prop("required", true);
                            $('#mantisa_64_bits').prop("required", true);
                            $('#signo_64_bits').focus();
                            $('#signo_32_bits').prop("readonly", true);
                            $('#exponente_32_bits').prop("readonly", true);
                            $('#mantisa_32_bits').prop("readonly", true);
                            $('#numDecimal').prop("readonly", true);
                            $('#numBinario').prop("readonly", true);
                            $('#signo_32_bits').prop("required", false);
                            $('#exponente_32_bits').prop("required", false);
                            $('#mantisa_32_bits').prop("required", false);
                            $('#numDecimal').prop("required", false);
                            $('#numBinario').prop("required", false);
                            break;
                        default:
                    }
                });

                $("#convertir").click(function () {
                    var option = $("#base").children("option:selected").val();
                    var bandera = true;
                    $('#convertir_form').find('input').each(function () {
                        if ($(this).prop('required')) {
                            if ($(this).val() === "") {
                                alert("Debes llenar los campos en blanco");
                                $(this).focus();
                                bandera = false;
                                return;
                            }
                        }
                    });
                    // Verificar bandera
                    if (bandera) {
                        var numero;
                        switch (option) {
                            case "1":
                                numero = $('#numDecimal').val();
                                $.post('ConversorIEEE754Servlet', {
                                    numDecimal: numero,
                                    base: "1"
                                }, function (jsonData) {
                                    console.log(jsonData);
                                    if ($('#numDecimal').val() !== "") {
                                        var resultados = jQuery.parseJSON(jsonData);
                                        $('#numBinario').val(resultados.binario);
                                        $('#signo_32_bits').val(resultados.signo_32_bits);
                                        $('#exponente_32_bits').val(resultados.exponente_32_bits);
                                        $('#mantisa_32_bits').val(resultados.mantisa_32_bits);
                                        $('#signo_64_bits').val(resultados.signo_64_bits);
                                        $('#exponente_64_bits').val(resultados.exponente_64_bits);
                                        $('#mantisa_64_bits').val(resultados.mantisa_64_bits);
                                    } else {
                                        $('#numBinario').val("");
                                        $('#signo_32_bits').val("");
                                        $('#exponente_32_bits').val("");
                                        $('#mantisa_32_bits').val("");
                                        $('#signo_64_bits').val("");
                                        $('#exponente_64_bits').val("");
                                        $('#mantisa_64_bits').val("");
                                    }
                                    // Adquiere el foco
                                    $('#numDecimal').focus();
                                });
                                break;
                            case "2":
                                numero = $('#numBinario').val();
                                $.post('ConversorIEEE754Servlet', {
                                    numBinario: numero,
                                    base: "2"
                                }, function (jsonData) {
                                    console.log(jsonData);
                                    if ($('#numBinario').val() !== "") {
                                        var resultados = jQuery.parseJSON(jsonData);
                                        $('#numDecimal').val(resultados.decimal);
                                        $('#signo_32_bits').val(resultados.signo_32_bits);
                                        $('#exponente_32_bits').val(resultados.exponente_32_bits);
                                        $('#mantisa_32_bits').val(resultados.mantisa_32_bits);
                                        $('#signo_64_bits').val(resultados.signo_64_bits);
                                        $('#exponente_64_bits').val(resultados.exponente_64_bits);
                                        $('#mantisa_64_bits').val(resultados.mantisa_64_bits);
                                    } else {
                                        $('#numDecimal').val("");
                                        $('#signo_32_bits').val("");
                                        $('#exponente_32_bits').val("");
                                        $('#mantisa_32_bits').val("");
                                        $('#signo_64_bits').val("");
                                        $('#exponente_64_bits').val("");
                                        $('#mantisa_64_bits').val("");
                                    }
                                });
                                break;
                            case "3":
                                var signo_32_bits;
                                var exponente_32_bits;
                                var mantisa_32_bits;
                                signo_32_bits = $('#signo_32_bits').val();
                                exponente_32_bits = $('#exponente_32_bits').val();
                                mantisa_32_bits = $('#mantisa_32_bits').val();
                                $.post('ConversorIEEE754Servlet', {
                                    signo_32_bits: signo_32_bits,
                                    exponente_32_bits: exponente_32_bits,
                                    mantisa_32_bits: mantisa_32_bits,
                                    base: "3"
                                }, function (jsonData) {
                                    console.log(jsonData);
                                    if ($('#signo_32_bits').val() !== "" && $('#exponente_32_bits').val() !== "" && $('#mantisa_32_bits').val() !== "") {
                                        var resultados = jQuery.parseJSON(jsonData);
                                        $('#numDecimal').val(resultados.decimal);
                                        $('#numBinario').val(resultados.binario);
                                        $('#signo_64_bits').val(resultados.signo_64_bits);
                                        $('#exponente_64_bits').val(resultados.exponente_64_bits);
                                        $('#mantisa_64_bits').val(resultados.mantisa_64_bits);
                                    } else {
                                        $('#numDecimal').val("");
                                        $('#numBinario').val("");
                                        $('#signo_32_bits').val("");
                                        $('#exponente_32_bits').val("");
                                        $('#mantisa_32_bits').val("");
                                        $('#signo_64_bits').val("");
                                        $('#exponente_64_bits').val("");
                                        $('#mantisa_64_bits').val("");
                                    }
                                });
                                break;
                            case "4":
                                var signo_64_bits;
                                var exponente_64_bits;
                                var mantisa_64_bits;
                                signo_64_bits = $('#signo_64_bits').val();
                                exponente_64_bits = $('#exponente_64_bits').val();
                                mantisa_64_bits = $('#mantisa_64_bits').val();
                                $.post('ConversorIEEE754Servlet', {
                                    signo_64_bits: signo_64_bits,
                                    exponente_64_bits: exponente_64_bits,
                                    mantisa_64_bits: mantisa_64_bits,
                                    base: "4"
                                }, function (jsonData) {
                                    console.log(jsonData);
                                    if ($('#signo_64_bits').val() !== "" && $('#exponente_64_bits').val() !== "" && $('#mantisa_64_bits').val() !== "") {
                                        var resultados = jQuery.parseJSON(jsonData);
                                        $('#numDecimal').val(resultados.decimal);
                                        $('#numBinario').val(resultados.binario);
                                        $('#signo_32_bits').val(resultados.signo_32_bits);
                                        $('#exponente_32_bits').val(resultados.exponente_32_bits);
                                        $('#mantisa_32_bits').val(resultados.mantisa_32_bits);
                                    } else {
                                        $('#numDecimal').val("");
                                        $('#numBinario').val("");
                                        $('#signo_64_bits').val("");
                                        $('#exponente_64_bits').val("");
                                        $('#mantisa_64_bits').val("");
                                        $('#signo_32_bits').val("");
                                        $('#exponente_32_bits').val("");
                                        $('#mantisa_32_bits').val("");
                                    }
                                });
                                break;
                            default:
                        }
                    }
                });
            });
        </script>
    </body>

</html>
