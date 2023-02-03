/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servletClasses;

import java.sql.*;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Aziz
 */
public class Utility {
    
    // JDBC driver name and database URL
    static final String DB_URL = "jdbc:mysql://localhost/appliances_store";
    
    //  Database credentials
    static final String USER = "store_admin";
    static final String PASSWORD = "123321";
    
    // This Method is responsible to create connection to the datanase whenever needed 
    public static Connection getConn() throws SQLException, IOException, ClassNotFoundException {
        Class.forName("com.mysql.jdbc.Driver");
    return DriverManager.getConnection(DB_URL, USER, PASSWORD);
    }
}
