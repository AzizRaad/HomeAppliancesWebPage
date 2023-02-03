package servletClasses;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import static servletClasses.Utility.getConn;

/**
 *
 * @author Aziz
 */
public class ProcessAddProduct extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {   
            String type = request.getParameter("type");
            String model = request.getParameter("model");
            String year = request.getParameter("year");
            String manufacturer = request.getParameter("manufacturer");
            String description = request.getParameter("description");
            String count = request.getParameter("count");
            String pricePerUnit = request.getParameter("pricePerUnit");
            
            //create the blank SQL statment
            String insertquery = "insert into appliances(type,model,year,manufacturer,description,count,price_per_unit,creation_time) "
                    + "values(?,?,?,?,?,?,?,now());";  
            /*  
            *   Using ( Utility.getConn() ) We are sending a request to Utility class 
            *   sepcefically to the connection method
            *   to communicate with MYSQL server
            */
            PreparedStatement statement = getConn().prepareStatement(insertquery);
            //now we fill the stament with the parametrs we got from the usre
            statement.setString(1, type);
            statement.setString(2, model);
            statement.setString(3, year);
            statement.setString(4, manufacturer);
            statement.setString(5, description);
            statement.setString(6, count);
            statement.setString(7, pricePerUnit);
            
            statement.execute();
            
            System.out.println("ITS RUNNING !!!");
        } catch (Exception ex) {
            System.out.println(ex);
        }
    }// end of DoPOST method
}// end of class
