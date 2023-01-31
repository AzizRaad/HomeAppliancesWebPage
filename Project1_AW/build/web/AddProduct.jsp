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
        <h1>Hello 
            <%String type = request.getParameter("type");
            String model = request.getParameter("model");
            String year = request.getParameter("year");
            String manufacturer = request.getParameter("manufacturer");
            String description = request.getParameter("description");
            String count = request.getParameter("count");
            String pricePerUnit = request.getParameter("pricePerUnit");
                out.println(type);
                out.println(model);
                out.println(year);
                out.println(manufacturer);
                out.println(description);
                out.println(count);
                out.println(pricePerUnit);
            %>
        </h1>
        
    </body>
</html>
