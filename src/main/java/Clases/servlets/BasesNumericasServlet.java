/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Clases.servlets;

import Clases.modelo.conversor.Binario;
import Clases.modelo.conversor.Decimal;
import Clases.modelo.conversor.Hexadecimal;
import Clases.modelo.conversor.Octal;
import java.io.IOException;
import java.io.PrintWriter;
import org.json.JSONObject;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.annotation.WebServlet;

@WebServlet("/BasesNumericasServlet")
public class BasesNumericasServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Si lo queremos hacer a traves de un get, tenemos que poner el codigo del post en esta clase
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=iso-8859-1");
        PrintWriter out = response.getWriter();
        JSONObject json = new JSONObject();

        // Obtengo los datos de la peticion
        String numDecimal = request.getParameter("numDecimal");
        String numBinario = request.getParameter("numBinario");
        String numOctal = request.getParameter("numOctal");
        String numHexadecimal = request.getParameter("numHexadecimal");
        String base = request.getParameter("base");

        switch (base) {
            case "10":
                if (!numDecimal.equals("")) {
                    Decimal baseDecimal = new Decimal();
                    json.put("binario", baseDecimal.cambiarABase(numDecimal, 2, 10));
                    json.put("octal", baseDecimal.cambiarABase(numDecimal, 8, 10));
                    json.put("hexadecimal", baseDecimal.cambiarABase(numDecimal, 16, 10));
                    out.println(json);
                } else {
                    out.println("");
                }
                break;
            case "2":
                if (!numBinario.equals("")) {
                    Binario baseBinario = new Binario();
                    json.put("decimal", baseBinario.cambiarABase(numBinario, 10, 10));
                    json.put("octal", baseBinario.cambiarABase(numBinario, 8, 10));
                    json.put("hexadecimal", baseBinario.cambiarABase(numBinario, 16, 10));
                    out.println(json);
                } else {
                    out.println("");
                }
                break;
            case "8":
                if (!numOctal.equals("")) {
                    Octal baseOctal = new Octal();
                    json.put("decimal", baseOctal.cambiarABase(numOctal, 10, 10));
                    json.put("binario", baseOctal.cambiarABase(numOctal, 2, 10));
                    json.put("hexadecimal", baseOctal.cambiarABase(numOctal, 16, 10));
                    out.println(json);
                } else {
                    out.println("");
                }
                break;
            case "16":
                if (!numHexadecimal.equals("")) {
                    Hexadecimal baseHexadecimal = new Hexadecimal();
                    json.put("decimal", baseHexadecimal.cambiarABase(numHexadecimal, 10, 10));
                    json.put("binario", baseHexadecimal.cambiarABase(numHexadecimal, 2, 10));
                    json.put("octal", baseHexadecimal.cambiarABase(numHexadecimal, 8, 10));
                    out.println(json);
                } else {
                    out.println("");
                }
                break;
            default:
                out.println("");
                break;
        }
    }
}
