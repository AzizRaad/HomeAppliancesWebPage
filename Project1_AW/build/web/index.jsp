<%-- 
    Document   : index
    Created on : Feb 16, 2023, 5:06:37 PM
    Author     : aahba
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<jsp:include page="navBar.jsp" />
    <div class="heroContainer">
      <div class="heroText">
        <p>
          your house needs
          <br />
          in <span>ONE</span> place.
        </p>
        <a href="index.html"><button class="actionButton">BUY NOW</button></a>
      </div>
    </div>
    <div class="content flex">
      <h1>Our Team</h1>
      <div class="teamContainer flex">
        <div class="team flex">
          <div class="card">
            <img
              class="perosnalImage"
              src="./images/abdulaziz.jpg"
              alt="abudlaziz bahmeed"
            />
            <h2>Abdulaziz Bahmeed</h2>
            <p class="title">CTO & Co-Founder</p>
            <p>software developer and bussniness enthusiastic.</p>
            <p>Bahmeed@HomeApps.com</p>
          </div>
          <div class="card">
            <img
              class="perosnalImage"
              src="./images/alamoudi.jpg"
              alt="abudlaziz alamoudi"
            />
            <h2>Abdulaziz Alamoudi</h2>
            <p class="title">CEO & Co-Founder</p>
            <p>software developer and designer.</p>
            <p>Alamoudi@HomeApps.com</p>
          </div>
        </div>
      </div>
    </div>

<jsp:include page="footer.jsp" />
