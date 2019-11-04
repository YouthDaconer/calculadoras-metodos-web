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
        <h1>Cargando graficadora...</h1>
        <div> 
            <%
            JFrame f = new JFrame();
            f.setSize(900, 690);//500,350
            f.setTitle("interfaz grafica");            
            f.setResizable(false);
            Container Contenedor = f.getContentPane();
            GraficadorClasico mipanel = new GraficadorClasico(Contenedor);
            f.add(mipanel);
            f.setVisible(true);            
            
            %>                     
        </div>
        <script>        
                window.close();                    
        </script>
        
    </body>
</html>
