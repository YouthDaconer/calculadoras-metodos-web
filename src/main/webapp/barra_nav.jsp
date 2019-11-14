<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
            <a class="nav-link" href="raices_polinomio.jsp">Polinomios</a>
        </li>
        <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMatrices" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                Matrices
            </a>
            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMatrices">
                <a class="dropdown-item" href="matrices_sumar.jsp">Suma</a>
                <a class="dropdown-item" href="matrices_restar.jsp">Resta</a>
                <a class="dropdown-item" href="matrices_producto_punto.jsp">Producto punto</a>
                <a class="dropdown-item" href="matrices_producto_escalar.jsp">Producto escalar</a>
                <a class="dropdown-item" href="pricing.jsp">Transpuesta</a>
                <a class="dropdown-item" href="matrices_inversa.jsp">Inversa</a>
                <a class="dropdown-item" href="matrices_gauss_jordan.jsp">Gauss Jordan</a>
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

