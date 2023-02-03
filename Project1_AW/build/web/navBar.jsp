<%-- 
    Document   : navBar
    Created on : Feb 1, 2023, 10:54:33 AM
    Author     : Aziz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%--<%!
int pageCount = 0;
void addCount() {
pageCount++;
}
%>
<% addCount(); %>--%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <nav>
            <ul>
                <li><a href="index.html">HOME</a></li>
                <li><a href="http://localhost:8082/Project1_AW/AddProduct.jsp">Add Home Appliance</a></li>
                <li><a href="http://localhost:8082/Project1_AW/AddFeedback.jsp">Add Feedback</a></li>
                <li><a href="http://localhost:8082/Project1_AW/BrowseAppliance.jsp">Browse Home Appliances</a></li>
            </ul>
        </nav>
    </body>
</html>
