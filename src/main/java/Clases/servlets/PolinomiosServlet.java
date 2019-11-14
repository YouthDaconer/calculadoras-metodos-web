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
import Clases.control.Polinomio;
import java.util.logging.Level;
import java.util.logging.Logger;

@WebServlet("/PolinomiosServlet")
public class PolinomiosServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Si lo queremos hacer a traves de un get, tenemos que poner el codigo del post en esta clase
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=iso-8859-1");
        PrintWriter out = response.getWriter();

        // Obtengo los datos de la peticion
        String expresion = request.getParameter("expresionMath");

        // Compruebo que los campos del formulario tienen datos para añadir a la tabla
        if (!expresion.equals("")) {
            String resultado = "NaN";
            try {                                
                Polinomio p = new Polinomio(expresion);
                resultado = p.getRaices() + p.getRaicesComplejas();                               
                
            } catch (Exception ex) {                
                Logger.getLogger("Error en la operación");
            }
            out.println(resultado);
        }
    }
}
