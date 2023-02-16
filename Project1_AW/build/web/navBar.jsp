<%-- 
    Document   : navBar
    Created on : Feb 1, 2023, 10:54:33 AM
    Author     : Aziz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%!
// a method to check we are in wich page
    String checkPage(HttpServletRequest request, String testPath) {
        String path = request.getRequestURI();
        if (path.endsWith(testPath)) {
            return "selected";
        }
        return "";
    }
%>

<%!
// a method to check is the user is looged in or no
    String isLogged(HttpServletRequest request) {
        HttpSession session = request.getSession();
        session.getAttribute("logged");
        if(session.getAttribute("logged") != null)
        return "LOGOUT";
        else return "LOGIN";
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <title>Home Appliances</title>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link rel="stylesheet" href="./css/style.css" />
        <script src="./js/script.js" defer></script>
    </head>
    <body>
        <nav class="flex">
            <div class=" logoContainer">
                <a href="/Project1_AW">
                    <div class="logoImg"></div>
                </a>
            </div>
            <ul class="flex navgation">
                <li><a class="<% out.print(checkPage(request, "/Project1_AW/")); %>" href="/Project1_AW/">HOME</a></li>
                <li><a class="<% out.print(checkPage(request, "/Project1_AW/add-product")); %>" href="add-product">ADD APPLIANCES</a></li>
                <li><a class="<% out.print(checkPage(request, "/Project1_AW/browse-appliance")); %>" href="browse-appliance">BROWSE APPLIANCES</a></li>
                <li><a class="<% out.print(checkPage(request, "/Project1_AW/add-feedback"));%>" href="add-feedback">ADD FEEDBACK</a></li>
                <li><a class="<% out.print(checkPage(request, "/Project1_AW/login"));%>" href="login"><% out.print(isLogged(request));%></a></li>
            </ul>
        </nav>
