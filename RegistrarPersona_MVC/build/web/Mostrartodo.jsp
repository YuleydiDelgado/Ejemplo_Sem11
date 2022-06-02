<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Todos los registros</h1>
        <c:forEach var="listTotal" items="${sessionScope.persona}">
            DUI:${listTotal.dui}<br>
            Apellidos:${listTotal.apellido}<br>
            Nombres:${listTotal.nombre}<br>
            <br>
            <br>
        </c:forEach>
    </body>
</html>
