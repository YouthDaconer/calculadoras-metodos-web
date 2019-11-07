/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Clases.servlets;

import Clases.control.NewtonRaphson;
import java.io.IOException;
import java.io.PrintWriter;
import org.json.JSONObject;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.annotation.WebServlet;

@WebServlet("/NewthonRaphsonServlet")
public class NewthonRaphsonServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Si lo queremos hacer a traves de un get, tenemos que poner el codigo del post en esta clase
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=iso-8859-1");
        PrintWriter out = response.getWriter();
        JSONObject json = new JSONObject();
        String resultado = "NaN";
        NewtonRaphson nr;
        try {
            String expresion = request.getParameter("expresionMath");
            Double error = Double.parseDouble(request.getParameter("errorTol"));
            Double valor_x = Double.parseDouble(request.getParameter("valorX"));
            nr = new NewtonRaphson(expresion, error);
            resultado = "" + nr.resolver(valor_x);
            if (resultado.equals("NaN")) {
                out.println("No se pudo calcular la expresión");
            } else {
                json.put("resultado", resultado);
                json.put("error", nr.getError());
                json.put("iteraciones", nr.getIteraciones());
                out.println(json);
            }
        } catch (ArithmeticException e) {
            out.println(e.getMessage());
        } catch (NumberFormatException es) {
            out.println("Verifique que todos los campos hayan sido llenados");
        }
    }
}
