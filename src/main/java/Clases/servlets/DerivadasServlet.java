/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Clases.servlets;

import Clases.control.Derivada;
import java.io.IOException;
import java.io.PrintWriter;
import org.json.JSONObject;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.annotation.WebServlet;

@WebServlet("/DerivadasServlet")
public class DerivadasServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Si lo queremos hacer a traves de un get, tenemos que poner el codigo del post en esta clase
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=iso-8859-1");
        PrintWriter out = response.getWriter();
        JSONObject json = new JSONObject();

        // Obtengo los datos de la peticion
        String expresion = request.getParameter("expresionMath");
        String valor = request.getParameter("valorX");

        // Compruebo que los campos del formulario tienen datos para añadir a la tabla
        if (!expresion.equals("") && !valor.equals("")) {
            Derivada derivada = new Derivada(expresion);
            Double resultado_primera = derivada.derivacionNumericaCentral(Double.parseDouble(valor), 5);
            json.put("primera", resultado_primera.toString());
            Double resultado_segunda = derivada.segundaDerivadaCentral(Double.parseDouble(valor), 5);
            json.put("segunda", resultado_segunda.toString());
            // Retorna
            out.println(json);
        }
    }
}
