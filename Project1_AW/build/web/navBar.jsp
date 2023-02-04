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
    <title>Home Appliances</title>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="./css/style.css" />
    <script src="./js/script.js"></script>
  </head>
  <body>
    <nav class="flex">
      <div class="logoContainer">
        <a href="/Project1_AW">
          <div class="logoImg"></div>
        </a>
      </div>
      <ul class="flex navgation">
        <li><a class="selected" href="index.html">HOME</a></li>
        <li><a href="AddProduct">ADD APPLIANCES</a></li>
        <li><a href="BrowseAppliance">BROWSE APPLIANCES</a></li>
        <li><a href="AddFeedback">ADD FEEDBACK</a></li>
      </ul>
    </nav>
