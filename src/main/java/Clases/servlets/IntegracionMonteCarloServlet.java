/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Clases.servlets;

import Clases.control.Integral;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.annotation.WebServlet;
import org.json.JSONObject;

@WebServlet("/IntegracionMonteCarloServlet")
public class IntegracionMonteCarloServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Si lo queremos hacer a traves de un get, tenemos que poner el codigo del post en esta clase
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=iso-8859-1");
        PrintWriter out = response.getWriter();
        JSONObject json = new JSONObject();
        String resultado = "NaN";
        Integral integracion;
        try {
            String expresion = request.getParameter("expresion");
            Double x1 = Double.parseDouble(request.getParameter("inferior"));
            Double x2 = Double.parseDouble(request.getParameter("superior"));
            Integer num_puntos = Integer.parseInt(request.getParameter("puntos"));

            if (x1 >= x2 || num_puntos <= 0) {// En caso de algun en el intervalo 0 con el error tolerado
                json.put("resultado", "Asegúrate de que el intervalo esté bien ingresado y que los puntos sean > 0");
            } else {
                integracion = new Integral(expresion, x1, x2, num_puntos);
                resultado = "" + integracion.monteCarlo(num_puntos);//calculamos
                if (resultado.equals("NaN")) {
                    json.put("resultado", "No se pudo calcular la expresión");
                } else { //ponemos los resultados
                    json.put("resultado", resultado);
                }
            }
            out.println(json);
        } catch (ArithmeticException e) {
            out.println(e.getMessage());
        } catch (NumberFormatException es) {
            out.println("Verifique que todos los campos hayan sido llenados correctamente");
        }
    }

}
