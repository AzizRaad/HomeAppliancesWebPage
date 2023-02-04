/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servletClasses;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Aziz
 */
public class ProcessAddFeedback extends HttpServlet{
    
    
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
        
        try{
            String fname = request.getParameter("fname");
            String email = request.getParameter("email");
            String phonenumber = request.getParameter("phonenumber");
            String requesttype = request.getParameter("requesttype");
            String subject = request.getParameter("subject");
            String message = request.getParameter("message");
            
            //create the blank SQL statment
            String insertquery = "insert into feedback(name,email,phone_number,request_type,subject,message,creation_time) "
                    + "values(?,?,?,?,?,?,now());";
            PreparedStatement statement = Utility.getConn().prepareStatement(insertquery);
            //now we fill the stament with the parametrs we got from the usre
            statement.setString(1, fname);
            statement.setString(2, email);
            statement.setString(3, phonenumber);
            statement.setString(4, requesttype);
            statement.setString(5, subject);
            statement.setString(6, message);
            
            statement.execute();
            
            System.out.println("ITS RUNNING !!!");
            
        }catch (Exception ex){
            System.out.println(ex);
        }// end of catch
    }// The end of doPOST method
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("navBar.jsp").include(request, response);
        
    }// The end of doPOST method
}// End of class
