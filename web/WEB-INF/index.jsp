<%@page import="java.util.ArrayList"%>
<%@page import="com.emergentes.modelo.Persona"%>
<%
 if(session.getAttribute("listaper")==null){
            ArrayList<Persona>la=new ArrayList<Persona>();
            session.setAttribute("listaper", la);
            } 
ArrayList<Persona>lista = (ArrayList<Persona>)session.getAttribute("listaper");
%>
<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Listado de personas</h1>
        <a href="MainServlet?op=nuevo">Nuevo registro</a>
        <table border="1"></table>
    <tr> 
        <th>Id</th>
        <th>Nombre</th>
        <th>Peso</th>
        <th>Talla</th>
        <th>Vacuna</th>
    </tr>
<%
    if (lista !=null){
        for (Persona item : lista){
%>
<tr>
    <td><%=item.getId() %></td
    <td><%=item.getNombre() %></td>
    <td><%=item.getPeso() %></td>
    <td><%=item.getTalla() %></td>
    <td><%=item.getVacuna() %></td>
    <td><a href="MainServet?op=editar&id=<%=item.getId() %>">Editar</a></td>
    <td><a href="MainServet?op=eliminar&id=<%=item.getId() %>"
           onclick="return (confirm('Esta seguro de eliminar'))"
           >Eliminar</a></td>
</tr>
<%
    }
}
%>
      </table>
    </body>
</html>
