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

@WebServlet("/IntegracionRectangulosServlet")
public class IntegracionRectangulosServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Si lo queremos hacer a traves de un get, tenemos que poner el codigo del post en esta clase
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=iso-8859-1");
        PrintWriter out = response.getWriter();
        JSONObject json = new JSONObject();
        String resultado_extr_izquierdo = "NaN";
        String resultado_punto_medio = "NaN";
        String resultado_extr_derecho = "NaN";
        Integral integracion;
        try {
            String expresion = request.getParameter("expresion");
            Double x1 = Double.parseDouble(request.getParameter("inferior"));
            Double x2 = Double.parseDouble(request.getParameter("superior"));
            Integer num_particiones = Integer.parseInt(request.getParameter("particiones"));

            if (x1 >= x2 || num_particiones <= 0) {// En caso de algun en el intervalo 0 con el error tolerado
                json.put("resultado", "Asegúrate de que el intervalo esté bien ingresado y que las particiones sean > 0");
            } else {
                integracion = new Integral(expresion, x1, x2, num_particiones);
                resultado_extr_izquierdo = "" + integracion.rectanguloIzquierdo();//calculamos
                resultado_punto_medio = "" + integracion.rectanguloCentral();//calculamos
                resultado_extr_derecho = "" + integracion.rectanguloDerecho();//calculamos

                if (resultado_extr_izquierdo.equals("NaN")) {//error
                    json.put("izquierdo", "No se pudo calcular la expresión en el extremo izquierdo");
                } else { //ponemos los resultados
                    json.put("izquierdo", resultado_extr_izquierdo);
                }
                if (resultado_punto_medio.equals("NaN")) {//error
                    json.put("medio", "No se pudo calcular la expresión en el punto medio");
                } else { //ponemos los resultados
                    json.put("medio", resultado_punto_medio);
                }
                if (resultado_extr_derecho.equals("NaN")) {//error
                    json.put("derecho", "No se pudo calcular la expresión en el extremo derecho");
                } else { //ponemos los resultados
                    json.put("derecho", resultado_extr_derecho);
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
