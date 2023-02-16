<%-- 
    Document   : register
    Created on : Feb 14, 2023, 2:22:23 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="formContainer flex">
    <div class="fromWrapper card">
        <form id="registerForm" class="addProdcutForm" action="register" method="post">
            <div class="flex"><h1>register</h1></div>
            <label>full name: <span id="nameMsg" class="error"></span></label>
            <input id="nameInput" type="text" name="fullName" />
            <br />
            <label>email: <span id="emailMsg" class="error"></span></label>
            <input id="emailInput" type="text" name="email" />
            <br />
            <label>password: <span id="passwordMsg" class="error"></span></label>
            <input id="passwordInput" type="password" name="password" />
            <br />
            <label>repeat password: <span id="repaetPasswordMsg" class="error"></span></label>
            <input id="repaetPasswordInput" type="password" name=""/>
            <br />
             <span class="accountLabel">you already have an account? <a href='login'>LOGIN</a></span>
            <div class="flex">
                <button class="actionButton formButton" type="submit">register</button>
            </div>
        </form>
    </div>
</div>
<jsp:include page="footer.jsp" />