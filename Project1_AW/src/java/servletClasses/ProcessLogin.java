package servletClasses;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author aahba
 */
public class ProcessLogin extends HttpServlet {

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        boolean isLogged = session.getAttribute("logged").equals("true");
        //here we check if the user is logged and gos to login page we will log him out
        if (isLogged) {
            session.setAttribute("logged", "false");
            response.sendRedirect("/Project1_AW/login");
        } else {
            request.getRequestDispatcher("navBar.jsp").include(request, response);
            request.getRequestDispatcher("login.jsp").include(request, response);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        String email = request.getParameter("email");
        String password = Utility.getMd5(request.getParameter("password"));

        try {
            //create the blank SQL statment
            String serchQuerey = "select * from Users where UserName = ? and Password = ?;";
            Connection connection = Utility.getConn();
            PreparedStatement statement = connection.prepareStatement(serchQuerey);
            //now we fill the stament with the parametrs we got from the usre
            statement.setString(1, email);
            statement.setString(2, password);
            ResultSet result = statement.executeQuery();
            //here we check there is a suer with this emial and password
            if (result.next()) {
                //here we redircet the user to home page after sign the sessions with logged attribute
                session.setAttribute("logged", "true");
                response.sendRedirect("/Project1_AW/");

            } else {
                //we return that the email/email is wrong
                request.getRequestDispatcher("navBar.jsp").include(request, response);
                PrintWriter out = response.getWriter();
                out.println("<p class='error infoMsg'> the email or password is wrong</p>");
                request.getRequestDispatcher("login.jsp").include(request, response);
            }
            connection.close();
            statement.close();

        } catch (Exception ex) {//here we rerturnthe smae page with informative error messaeg
            request.getRequestDispatcher("navBar.jsp").include(request, response);
            PrintWriter out = response.getWriter();
            out.println("<p class='error infoMsg'> There was an error exception meesage: " + ex + "</p>");
            request.getRequestDispatcher("login.jsp").include(request, response);
        }//end of catch 
    }//end of doPostmethod
}
