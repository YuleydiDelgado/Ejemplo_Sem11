<%-- 
    Document   : salarioTrabajador1
    Created on : 19-may-2022, 9:17:39
    Author     : ITCA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String nombres = request.getParameter("nombre");
            String apellidos = request.getParameter("apellidos");
            double ht = Double.parseDouble(request.getParameter("ht"));
            double ph = Double.parseDouble(request.getParameter("ph"));
            String bt = request.getParameter("submit");
            
            double salario=0;
            double descuento=0;
            
            if(bt!=null && nombres!=null && apellidos!= null && ht!=0 && ph!=0){
               salario = ht*ph;
               descuento=salario*0.1;
               salario=salario-descuento;
            }
            else{
                out.print(" <h1> Esta es la página de inicio</h1>");
                out.print("<form action='salarioTrabajador.jsp' method='post'> ");
                out.print("<input type='submit' value='Regresar'> ");
                out.print("</form> ");
            }
        %>
        
        
    <center>
        <h1>Datos del Trabajador</h1>
        
        <table border='0' width='50%'>
            <tr>
                <th>Nombre del trabajador:</th>
                <td> <%= nombres %> </td>
            </tr>
            <tr>
                <th>Apellidos del Trabajador:</th>
                <td> <%=apellidos %> </td>
            </tr>
            
        </table>
            <h1>Total a pagar:</h1>
        
        <table border='0' width='50%'>
            <tr>
                <th>Total a pagar:</th>
                <td> <%=salario %> </td>
            </tr>
            <tr>
                <th>Descuento(Renta):</th>
                <td> <%=descuento %> </td>
            </tr>
            
        </table>
    </body>
</html>
