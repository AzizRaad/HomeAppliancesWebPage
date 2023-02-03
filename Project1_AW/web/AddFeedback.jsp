<%-- 
    Document   : AddFeedback
    Created on : Feb 1, 2023, 10:53:31 AM
    Author     : Aziz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@ include file="navBar.jsp" %>
            <form action="/Project1_AW/add-feedback" method="POST">
                 <label>name:</label>
                <input type="text" name="fname">
                <br>
                <label>email: </label>
                <input type="text" name="email">
                <br>
                <label>Phone Number </label>
                <input type="text" name="phonenumber">
                <br>
                <label>Request Type </label>
                <input type="text" name="requesttype">
                <br>
                <label>subject: </label>
                <input type="text" name="subject">
                <br>
                <label>Message </label>
                <input type="text" name="message">
                <br>
                <button type="submit">submit</button>
            </form>
            <%@ include file="footer.jsp" %>
    </body>
</html>
