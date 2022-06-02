<%-- 
    Document   : salarioTrabajador
    Created on : 19-may-2022, 9:01:57
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
        <h1 align='center'>Complete los datos</h1>
        
        <form action="salarioTrabajador1.jsp" method="post">
            <table border='5' width='60%'>
                <tr>
                    <th>Nombre trabajador:</th>
                    <td><input type='text' name='nombre' size='30'  max='30'></td>
                </tr>
                <tr>
                    <th>Apellidos Trabajador:</th>
                    <td><input type='text' name='apellidos' size='30'  max='30'></td>
                </tr>
                <tr>
                    <th>Horas Trabajadas:</th>
                    <td><input type='text' name='ht' size='10'  max='10'></td>
                </tr>
                <tr>
                    <th>Pago por hora:</th>
                    <td><input type='text' name='ph' size='10'  max='10'></td>
                </tr>
                <tr>
                    <td colspan="2" aling='center'>
                        <input type='submit' values='enviar' name='submit'>
                          <input type='reset'   name='reset'>
                    </td>
                </tr>
            </table>
            
        </form>
    </body>
</html>
