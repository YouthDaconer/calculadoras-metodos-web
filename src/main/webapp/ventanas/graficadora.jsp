<%-- 
    Document   : Graficadora
    Created on : 31/10/2019, 09:16:40 PM
    Author     : JSRA
--%>

<%@page import="Clases.modelo.GraficadorClasico"%>
<%@page import="java.awt.Container"%>
<%@page import="javax.swing.JFrame"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div>           
            <%
                JFrame frame = new JFrame();
                frame.setSize(900, 690);//500,350
                frame.setTitle("interfaz grafica");                
                frame.setResizable(false);
                Container Contenedor = frame.getContentPane();
                GraficadorClasico mipanel = new GraficadorClasico(Contenedor);
                frame.add(mipanel);
                frame.setVisible(true);
                frame.setLocationRelativeTo(null);
                frame.setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
            %>
        </div>
        <h1>Hello World!</h1>
    </body>
</html>
