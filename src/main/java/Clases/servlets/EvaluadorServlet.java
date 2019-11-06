/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Clases.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.annotation.WebServlet;
import Clases.control.Funcion;

@WebServlet("/EvaluadorServlet")
public class EvaluadorServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Si lo queremos hacer a traves de un get, tenemos que poner el codigo del post en esta clase
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=iso-8859-1");
        PrintWriter out = response.getWriter();

        // Obtengo los datos de la peticion
        String expresion = request.getParameter("expresionMath");
        String valor = request.getParameter("valorX");

        // Compruebo que los campos del formulario tienen datos para añadir a la tabla
        if (!expresion.equals("") && !valor.equals("")) {
            String resultado = "NaN";
            try {
                Funcion ee = new Funcion();
                String posFija = (ee.parsear(expresion));

                if (!valor.isEmpty() && posFija.contains("x")) {
                    resultado = "" + ee.f(Double.parseDouble(valor));
                } else {
                    resultado = "" + ee.f(1);
                }
                if (resultado.equals("NaN")) {
                    out.println("No se pudo calcular la expresión");
                }
            } catch (ArithmeticException | NumberFormatException e) {
                out.println(e.getMessage());
            }
            // Retorna
            out.println(resultado);
        }
    }
}
