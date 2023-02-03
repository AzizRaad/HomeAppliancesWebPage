<%-- 
    Document   : AddProduct
    Created on : Jan 30, 2023, 8:36:56 PM
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
         <form action="/Project1_AW/add-product" method="POST">
                <label>type:</label>
                <input type="text" name="type">
                <br>
                <label>model: </label>
                <input type="text" name="model">
                <br>
                <label>year: </label>
                <input type="text" name="year">
                <br>
                <label>manufacturer: </label>
                <input type="text" name="manufacturer">
                <br>
                <label>description: </label>
                <input type="text" name="description">
                <br>
                <label>count: </label>
                <input type="text" name="count">
                <br>
                <label>PRICE PER UNIT: </label>
                <input type="text" name="pricePerUnit">
                <button type="submit">submit</button>
            </form>
         <%@ include file="footer.jsp" %>
    </body>
</html>
