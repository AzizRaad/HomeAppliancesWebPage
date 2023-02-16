/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servletClasses;

import java.sql.*;
import java.io.IOException;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Aziz
 */
public class Utility {
    
    // JDBC driver name and database URL
    static String JDBC_DRIVER = "com.mysql.jdbc.Driver"; 
    static final String DB_URL = "jdbc:mysql://localhost/appliances_store";
    
    //  Database credentials
    static final String USER = "store_admin";
    static final String PASSWORD = "123321";
    
    
    // This Method is responsible to create connection to the datanase whenever needed 
    public static Connection getConn() throws SQLException, IOException, ClassNotFoundException {
        String DB_URL = "jdbc:mysql://bdwyaxuoiy38wddwtdxs-mysql.services.clever-cloud.com/bdwyaxuoiy38wddwtdxs";
        String USER = "uewldxfzpbauu3nf";
        String PASSWORD = "vTJ5cQWE1Wv9aRo0z0ZT";
        Class.forName(JDBC_DRIVER);
    return DriverManager.getConnection(DB_URL, USER, PASSWORD);
    }
    
    public static String getMd5(String input)
    {
        try {
            // Static getInstance method is called with hashing MD5
            MessageDigest md = MessageDigest.getInstance("MD5");
 
            // digest() method is called to calculate message digest
            // of an input digest() return array of byte
            byte[] messageDigest = md.digest(input.getBytes());
 
            // Convert byte array into signum representation
            BigInteger no = new BigInteger(1, messageDigest);
 
            // Convert message digest into hex value
            String hashtext = no.toString(16);
            while (hashtext.length() < 32) {
                hashtext = "0" + hashtext;
            }
            return hashtext;
        }
        // For specifying wrong message digest algorithms
        catch (NoSuchAlgorithmException e) {
            throw new RuntimeException(e);
        }
    }
}
