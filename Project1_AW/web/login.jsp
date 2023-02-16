<%-- 
    Document   : login
    Created on : Feb 16, 2023, 3:03:54 PM
    Author     : aahba
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="formContainer flex">
    <div class="fromWrapper card">
        <form id="loginForm" class="addProdcutForm" action="login" method="post">
            <div class="flex"><h1>login</h1></div>
            <label>email: <span id="emailMsg" class="error"></span></label>
            <input id="emailInput" type="text" name="Email" />
            <br />
            <label>password: <span id="passwordMsg" class="error"></span></label>
            <input id="passwordInput" type="password" name="" />
            <br />
            <span class="accountLabel">you don't have an account yet? <a href='register'>REGISTER</a></span>
            <div class="flex">
                <button class="actionButton formButton" type="submit">register</button>
            </div>
        </form>
    </div>
</div>
<jsp:include page="footer.jsp" />
