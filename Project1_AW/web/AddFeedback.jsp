<!-- <%-- 
    Document   : AddFeedback
    Created on : Feb 1, 2023, 10:53:31 AM
    Author     : Aziz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%> -->

     <jsp:include page="navBar.jsp" />
    <div class="formContainer flex">
      <div class="fromWrapper card">
          <form class="addProdcutForm" action="add-feedback" method="POST" onsubmit="return validateFeedBack();">
            <div class="flex"><h1>Send us your feedback!!</h1></div>
          <label>name: <span id="nameMsg" class="error"></span></label>
          <input id="namInput" type="text" name="fname" />
          <br />
          <label>email:<span id="emailMsg" class="error"></span></label>
          <input id="emailInput" type="text" name="email" />
          <br />
          <label>Phone Number: <span id="phoneNumberMsg" class="error"></span></label>
          <input id="phoneNumberInput" type="text" name="phonenumber" />
          <br />
          <label>Request Type: <span id="requestMsg" class="error"></span></label>
          <input id="requestInput" type="text" name="requesttype"/>
          <br />
          <label>subject: <span id="subjectMsg" class="error"></span></label>
          <input id="subject" type="text" name="subject" />
          <br />
          <label>Message: </label>
          <textarea id="feedbackInput" maxlength="250" rows="5" type="text" name="message" ></textarea>
          <br />
          <div class="flex">
            <button class="actionButton formButton" type="submit">submit</button>
          </div>
        </form>
      </div>
    </div>
     <jsp:include page="footer.jsp" />

