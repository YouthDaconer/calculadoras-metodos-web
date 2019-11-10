/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Clases.servlets;

import Clases.control.Biseccion;
import com.google.gson.Gson;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.annotation.WebServlet;
import org.json.JSONObject;

@WebServlet("/BiseccionServlet")
public class BiseccionServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Si lo queremos hacer a traves de un get, tenemos que poner el codigo del post en esta clase
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=iso-8859-1");
        PrintWriter out = response.getWriter();
        JSONObject json = new JSONObject();
        String resultado = "NaN";
        Biseccion b;
        try {
            String expresion = request.getParameter("expresionMath");
            Double error = Double.parseDouble(request.getParameter("errorTol"));
            Double inf = Double.parseDouble(request.getParameter("inferior"));
            Double sup = Double.parseDouble(request.getParameter("superior"));
            b = new Biseccion(expresion, inf, sup, error);
            resultado = "" + b.resolver();
            if (resultado.equals("NaN")) {
                json.put("resultado", "No se pudo calcular la expresión");
            } else {
                json.put("resultado", resultado);
                json.put("error", b.getError());
                json.put("iteraciones", b.getIteraciones());
                String tabla_iteraciones = new Gson().toJson(b.getDatos());
                json.put("tabla_iteraciones", tabla_iteraciones);
            }
            out.println(json);
        } catch (ArithmeticException e) {
            out.println(e.getMessage());
        } catch (NumberFormatException es) {
            out.println("Verifique que todos los campos hayan sido llenados");
        }
    }
}
