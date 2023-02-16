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
 * @author DELL
 */
public class ProcessRegister extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
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
        boolean isLogged = session.getAttribute("logged") != null;
        //here we check if the user is logged and gos to login page we will log him out
        if (isLogged) {
            session.removeAttribute("logged");
            response.sendRedirect("/Project1_AW/login");
        } else {
            request.getRequestDispatcher("navBar.jsp").include(request, response);
            request.getRequestDispatcher("register.jsp").include(request, response);
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
        String fullName = request.getParameter("fullName");
        String email = request.getParameter("email");
        String password = Utility.getMd5(request.getParameter("password"));
        
        try {
            //create the blank SQL statment
            String serchQuerey = "select UserName from Users where UserName = ?;";
            Connection connection = Utility.getConn();
            PreparedStatement statement = connection.prepareStatement(serchQuerey);
            //now we fill the stament with the parametrs we got from the usre
            statement.setString(1, email);
            ResultSet result = statement.executeQuery();

            //here we check if this is a new user in the databsae
            if (!result.isBeforeFirst()) {
                //create the blank SQL statment
                String insertquery = "insert into Users(FullName,UserName,Password,CreationDataTime) "
                        + "values(?,?,?,now());";
                statement = connection.prepareStatement(insertquery);
                //now we fill the stament with the parametrs we got from the usre
                statement.setString(1, fullName);
                statement.setString(2, email);
                statement.setString(3, password);
                statement.executeUpdate();
                connection.close();
                statement.close();
                //here we redircet the user to the login page after sign the sessions with logged attribute
                HttpSession session = request.getSession();
                session.setAttribute("logged", "true");
                response.sendRedirect("/Project1_AW/");
            } else {
                //we return that there already a user with that email
                request.getRequestDispatcher("navBar.jsp").include(request, response);
                PrintWriter out = response.getWriter();
                out.println("<p class='error infoMsg'> There is already a user registred with this email</p>");
                request.getRequestDispatcher("register.jsp").include(request, response);
            }
            connection.close();
            statement.close();

        } catch (Exception ex) {//here we rerturnthe smae page with informative error messaeg
            request.getRequestDispatcher("navBar.jsp").include(request, response);
            PrintWriter out = response.getWriter();
            out.println("<p class='error infoMsg'> There was an error exception meesage: " + ex + "</p>");
            request.getRequestDispatcher("register.jsp").include(request, response);
        }//end of catch
    }// The end of doPOST method

}
