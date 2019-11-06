/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Clases.servlets;

import Clases.modelo.conversor.Decimal;
import Clases.modelo.conversor.IEEE754;
import java.io.IOException;
import java.io.PrintWriter;
import org.json.JSONObject;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.annotation.WebServlet;

@WebServlet("/ConversorIEEE754Servlet")
public class ConversorIEEE754Servlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Si lo queremos hacer a traves de un get, tenemos que poner el codigo del post en esta clase
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=iso-8859-1");
        PrintWriter out = response.getWriter();
        JSONObject json = new JSONObject();
        IEEE754 f;
        Decimal d = new Decimal();

        // Obtengo los datos de la peticion
        String numDecimal = request.getParameter("numDecimal");
        String numBinario = request.getParameter("numBinario");
        String signo_32_bits = request.getParameter("signo_32_bits");
        String exponente_32_bits = request.getParameter("exponente_32_bits");
        String mantisa_32_bits = request.getParameter("mantisa_32_bits");
        String signo_64_bits = request.getParameter("signo_64_bits");
        String exponente_64_bits = request.getParameter("exponente_64_bits");
        String mantisa_64_bits = request.getParameter("mantisa_64_bits");
        String base = request.getParameter("base");

        switch (base) {
            case "1":
                if (!numDecimal.equals("") && !numDecimal.equals(".")) {
                    Decimal baseDecimal = new Decimal();
                    String bin = d.cambiarABase(numDecimal, 2, 100);
                    f = new IEEE754(bin);
                    String exp32 = f.exponente32();
                    String exp64 = f.exponente64();
                    while (exp32.length() != 8) {
                        exp32 = "0" + exp32;
                    }
                    while (exp64.length() != 11) {
                        exp64 = "0" + exp64;
                    }
                    json.put("binario", bin);
                    json.put("signo_32_bits", f.getSigno());
                    json.put("exponente_32_bits", exp32);
                    json.put("mantisa_32_bits", f.getMantisa32());
                    json.put("signo_64_bits", f.getSigno());
                    json.put("exponente_64_bits", exp64);
                    json.put("mantisa_64_bits", f.getMantisa64());
                    out.println(json);
                } else {
                    out.println("");
                }
                break;
            case "2":
                if (!numBinario.equals("") && !numBinario.equals(".")) {
                    Decimal baseDecimal = new Decimal();
                    f = new IEEE754(numBinario);
                    String exp32 = f.exponente32();
                    String exp64 = f.exponente64();
                    while (exp32.length() != 8) {
                        exp32 = "0" + exp32;
                    }
                    while (exp64.length() != 11) {
                        exp64 = "0" + exp64;
                    }
                    json.put("decimal", d.aDecimal(numBinario, 2));
                    json.put("signo_32_bits", f.getSigno());
                    json.put("exponente_32_bits", exp32);
                    json.put("mantisa_32_bits", f.getMantisa32());
                    json.put("signo_64_bits", f.getSigno());
                    json.put("exponente_64_bits", exp64);
                    json.put("mantisa_64_bits", f.getMantisa64());
                    out.println(json);
                } else {
                    out.println("");
                }
                break;
            case "3":
                if (!signo_32_bits.equals("") && !exponente_32_bits.equals("") && !mantisa_32_bits.equals("")) {
                    f = new IEEE754();
                    StringBuilder sBin, sDec;
                    sBin = new StringBuilder();
                    sDec = new StringBuilder();
                    if (signo_32_bits.equals("1")) {
                        sBin.append("-");
                        sDec.append("-");
                    }
                    sBin.append(f.getBinario(exponente_32_bits, mantisa_32_bits));
                    sDec.append(f.getNumeroDecimal(exponente_32_bits, mantisa_32_bits));
                    json.put("decimal", sDec);
                    json.put("binario", sBin);
                    out.println(json);
                } else {
                    out.println("");
                }
                break;
            case "4":
                if (!signo_64_bits.equals("") && !exponente_64_bits.equals("") && !mantisa_64_bits.equals("")) {
                    f = new IEEE754();
                    StringBuilder sBin, sDec;
                    sBin = new StringBuilder();
                    sDec = new StringBuilder();
                    if (signo_64_bits.equals("1")) {
                        sBin.append("-");
                        sDec.append("-");
                    }
                    sBin.append(f.getBinario(exponente_64_bits, mantisa_64_bits));
                    sDec.append(f.getNumeroDecimal(exponente_64_bits, mantisa_64_bits));
                    json.put("decimal", sDec);
                    json.put("binario", sBin);
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
