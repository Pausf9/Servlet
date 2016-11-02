<%-- 
    Document   : index
    Created on : 20-oct-2016, 17:13:50
    Author     : Pau
--%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
            ResultSet rs= (ResultSet)request.getAttribute("rsname");
            %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Lista de alumnos</h1>
        <div id="login">
		<form id="caja" action="alumnos" method="post">
			<select name="jobCat">
                            <%
                             while(rs.next()){
                                 //Si pongo getNString me da error con la DB, pero si pongo getString funciona bien
                                 //Es por culpa de la codificación de la DB
                            out.println("<option> "+rs.getInt("codi")+" "+rs.getNString("nom")+"</option>");
                                            }
                            %>
                        </select>
             <input type="submit" value="Consultar Tutorias" />
		</form>
	</div>
    </body>
</html>
