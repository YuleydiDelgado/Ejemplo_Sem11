<%-- 
    Document   : index
    Created on : 19-may-2022, 10:37:19
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
        <h1>Registro Persona</h1>
       
        <form action="recibir.do" method="post">
            <table border='5' width='30%'>
                <tr>
                    <th>DUI:</th>
                    <td><input type='text' name='txtDui' size='30'  maxlength='10'></td>
                </tr>
                <tr>
                    <th>Apellidos;</th>
                    <td><input type='text' name='txtApellidos' size='30'  maxltngth='30'></td>
                </tr>
                <tr>
                    <th>Nombres:</th>
                    <td><input type='text' name='txtNombres' size='30'  maxlength='30'></td>
                </tr>
            </table>
            <input type='submit' value='Registrar Nueva Persona'>
        </form>
    </body>
</html>
