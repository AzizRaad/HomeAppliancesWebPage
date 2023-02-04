<%-- 
    Document   : BrowseAppliance
    Created on : Feb 2, 2023, 2:17:44 PM
    Author     : Aziz
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="static servletClasses.Utility.getConn"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Browse Appliances</title>
    </head>
    <body>
        <%@ include file="navBar.jsp" %>
        <h2 align="center"><font><strong>Retrieve data from database in jsp</strong></font></h2>
        <table align="center" cellpadding="5" cellspacing="5" border="1">
            <tr bgcolor="red">
                <td><b>id</b></td>
                <td><b>type</b></td>
                <td><b>model</b></td>
                <td><b>year</b></td>
                <td><b>manufacturer</b></td>
                <td><b>description</b></td>
                <td><b>count</b></td>
                <td><b>price_per_unit</b></td>
                <td><b>creation_time</b></td>
                
            </tr>
                        <%
                try {

                    String sql = "SELECT * FROM appliances";
                    PreparedStatement statement = getConn().prepareStatement(sql);
                    ResultSet resultSet = statement.executeQuery(sql);
                    while (resultSet.next()) {
            %>
            <tr bgcolor="#DEB887">

                <td><%=resultSet.getString("id")%></td>
                <td><%=resultSet.getString("type")%></td>
                <td><%=resultSet.getString("model")%></td>
                <td><%=resultSet.getString("year")%></td>
                <td><%=resultSet.getString("manufacturer")%></td>
                <td><%=resultSet.getString("description")%></td>
                <td><%=resultSet.getString("count")%></td>
                <td><%=resultSet.getString("price_per_unit")%></td>
                <td><%=resultSet.getString("creation_time")%></td>
                

            </tr>

            <%
                    }

                } catch (Exception e) {
                    e.printStackTrace();
                }
            %>
        </table>
        <%@ include file="footer.jsp" %>
    </body>
</html>
