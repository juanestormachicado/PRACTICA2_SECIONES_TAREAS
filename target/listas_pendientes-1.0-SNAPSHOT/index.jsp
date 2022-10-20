<%@page import="com.emergentes.TAREA"%>
<%@page import="java.util.ArrayList"%>

<%
    if (session.getAttribute("almacen") == null){
        ArrayList<TAREA> lisaux = new ArrayList<TAREA>();
        session.setAttribute("almacen", lisaux);
    }
    
    ArrayList<TAREA> almacen = (ArrayList<TAREA>)session.getAttribute("almacen");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JNMCH</title>
    </head>
    <body>
        <h1>PRACTICA Nº2 TEM-742 </h1>
        <h2>Nombre.- Juan Nestor Machicado Chaiña </h2>
        <h2 aling="center">Carnet.- 5980983</h2>
        <h1>TAREAS PENDIENTES</h1>
        
        <form action="MainServlet" method="post">
            <table>
                <tr>
                    <td>Id</td>
                    <td><input type="text" name="id" value="0" size="2"></td>
                </tr>
                <tr>
                    <td>TAREA</td>
                    <td><input type="text" name="tarea" value="" ></td>
                </tr>
                
                
                <tr>
                    <td></td>
                    <td><input type="submit" value="Procesar"></td>
                </tr>
            </table>
            
            
        </form>
        
         <a href="MainServlet?op=vaciar">Vaciar carrito</a>
        
        <h2>TAREA PENDIENTE</h2>
        <table border="1">
            <tr>
                <th>Id</th>
                <th>TAREA</th>
                <th>ESTADO</th>
               
                <th></th>
            </tr>
            <%
                if (almacen != null){
                    for (TAREA p : almacen){
            %>
            <tr>
                <td><%= p.getId() %></td>
                <td><%= p.getTarea() %></td>
                <td><input type="checkbox" name="" value="ON" /> </td>
              
                <td><a href="MainServlet?op=eliminar&id=<%= p.getId() %>">ELIMINAR</a></td>
            </tr>
            <%
                    }
                }  
            %>
        </table>
    </body>
</html>
