<%@page import="com.emergentes.modelo.Persona"%>
<%
Persona reg = (Persona)request.getAttribute("miobper");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Registro de persona</h1>
        <form action="MainServlet"method="post">
            <table>
                <tr>
                    <td>ID</td>
                    <td><input type="test" name="id" value="<%=reg.getId() %>"size="2" readonly></td>
                    </rt>
                <tr>
                    <td>Nombre</td>
                    <td><input type="test" name="nombre" value="<%=reg.getNombre() %>"></td>
                </tr>
                <tr>
                    <td>Peso</td>
                    <td><input type="test" name="peso" value="<%=reg.getPeso() %>"></td>
                </tr>
                <tr>
                    <td>Talla</td>
                    <td><input type="test" name="talla" value="<%=reg.getTalla() %>"></td>
                </tr>
                <tr>
                    <td>Vacuna</td>
                    <td><input type="test" name="vacuna" value="<%=reg.getVacuna() %>"size="3"></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Enviar"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
