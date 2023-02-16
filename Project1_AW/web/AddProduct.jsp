<!-- <%-- 
    Document   : AddProduct
    Created on : Jan 30, 2023, 8:36:56 PM
    Author     : Aziz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%> -->

    <div class="formContainer flex">
      <div class="fromWrapper card">
        <form id="ProdcutForm" class="addProdcutForm" action="add-product" method="POST">
          <div class="flex"><h1>Add an appliance</h1></div>
          <label>type: <span id="typeMsg" class="error"></span></label>
          <br />
          <input id="typeInput" type="text" name="type" />
          <br />
          <label>model: <span id="modelMsg" class="error"></span></label>
          <br />
          <input id="modelInput" type="text" name="model" />
          <br />
          <label>year: <span id="yearMsg" class="error"></span></label>
          <br />
          <input id="yearInput" type="year" name="year" />
          <br />
          <label>manufacturer: <span id="manufacturerMsg" class="error"></span></label>
          <br />
          <input id="manufacturerInput" type="text" name="manufacturer" />
          <br />
          <label>description: <span id="descriptionMsg" class="error"></span></label>
          <br />
          <input id="descriptionInput" type="text" name="description" />
          <br />
          <label>count: <span id="countMsg" class="error"></span></label>
          <br />
          <input id="countInput" type="text" name="count" />
          <br />
          <label>price: <span id="priceMsg" class="error"></span></label>
          <br />
          <input id="priceInput" type="text" name="pricePerUnit" />
          <br />
          <div class="flex">
            <button class="actionButton formButton" type="submit">submit</button>
          </div>
        </form>
      </div>
    </div>
<jsp:include page="footer.jsp" />

