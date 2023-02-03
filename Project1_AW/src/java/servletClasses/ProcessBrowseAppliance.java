/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servletClasses;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Aziz
 */
public class ProcessBrowseAppliance extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {

            //print eb page by print HTML tah
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<link rel=\"stylesheet\" href=\"css/style.css\" type=\"text/css\"/>");
            out.println("<title>show Appliances records</title>");
            out.println("</head>");
            out.println("<body>");
            request.getRequestDispatcher("navBar.jsp").include(request, response);
            out.println("<div class=\"table--container\">");

            String sql = "select * from Apartments";
            PreparedStatement statement = Utility.getConn().prepareStatement(sql);
            
            ResultSet rs = statement.executeQuery();

            if (!rs.isBeforeFirst()) { // if nothing in DB
                out.println("<p> No registration records in database! </p>");
            } else {
                out.println("<table>");
                out.println("<tr class=\"thead\">");
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
                    out.println("<td>" + rs.getInt(7) + "</td>");
                    out.println("<td>" + rs.getDouble(8) + "</td>");
                    out.println("<td>" + rs.getTimestamp(9) + "</td>");
                    out.println("</tr>");
                }

                out.println("</table>");
            }

            out.println("</div>");

        } catch (Exception ex) {
            //throw new ServletException(ex);
            out.println("<p class=\"wrong-masg\"> There was an error exception meesage: " + ex + "</p>");
            out.println("</div>");
            out.println("</div>");

            out.println("</body>");
            out.println("</html>");
        } finally {
            out.close();
        }

    }
    
}// End of Class
