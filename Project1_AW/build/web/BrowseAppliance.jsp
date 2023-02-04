<!-- <%-- 
    Document   : BrowseAppliance
    Created on : Feb 2, 2023, 2:17:44 PM
    Author     : Aziz
--%>

<!-- <%@page contentType="text/html" pageEncoding="UTF-8"%> -->
<%@ page import="servletClasses.*" %>
<%@ page import="java.sql.*" %>

<div class="tableContainer flex">
    <table>
        
        <%
            try {
                String sql = "select * from appliances";
                Connection connection = Utility.getConn();
                PreparedStatement statement = connection.prepareStatement(sql);
                ResultSet rs = statement.executeQuery();

                if (!rs.isBeforeFirst()) { // if nothing in DB
                    out.println("<p class = 'error infoMsg'> No registration records in database! </p>");
                } else {
                //printing the head of the table
                out.println("<table>");
                out.println("<tr >");
                out.println(" <th>ID</th>");
                out.println("<th>Type</th>");
                out.println(" <th>Model</th>");
                out.println("<th>Year</th>");
                out.println("<th>Count</th>");
                out.println("<th>Price</th>");
                out.println("<th>DateTime</th>");
                out.println("</tr>");
                    while (rs.next()) {
                        //create table to display data
                        out.println("<tr>");
                        out.println("<td>" + rs.getInt(1) + "</td>");
                        out.println("<td>" + rs.getString(2) + "</td>");
                        out.println("<td>" + rs.getString(3) + "</td>");
                        out.println("<td>" + rs.getString(4).substring(0, 4) + "</td>");
                        out.println("<td>" + rs.getString(5) + "</td>");
                        out.println("<td>" + rs.getString(6) + "</td>");
                        out.println("<td>" + rs.getInt(7) + "</td>");
                        out.println("<td>" + rs.getDouble(8) + "</td>");
                        out.println("<td>" + rs.getTimestamp(9) + "</td>");
                        out.println("</tr>");
                    }
                }
                connection.close();
            } catch (Exception ex) {
                out.println("<p class='error infoMsg'> There was an error exception meesage: " + ex + "</p>");
            } finally {
                
                out.close();
            }

        %>
</div>

