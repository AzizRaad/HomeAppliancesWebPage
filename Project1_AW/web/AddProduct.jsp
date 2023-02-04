<!-- <%-- 
    Document   : AddProduct
    Created on : Jan 30, 2023, 8:36:56 PM
    Author     : Aziz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%> -->

    <div class="formContainer flex">
      <div class="fromWrapper card">
        <form class="addProdcutForm" action="add-product" method="POST">
          <div class="flex"><h1>Add an appliance</h1></div>
          <label>type:</label>
          <br />
          <input type="text" name="type" />
          <br />
          <label>model: </label>
          <br />
          <input type="text" name="model" />
          <br />
          <label>year: </label>
          <br />
          <input type="year" name="year" />
          <br />
          <label>manufacturer: </label>
          <br />
          <input type="text" name="manufacturer" />
          <br />
          <label>description: </label>
          <br />
          <input type="text" name="description" />
          <br />
          <label>count: </label>
          <br />
          <input type="text" name="count" />
          <br />
          <label>price: </label>
          <br />
          <input type="text" name="pricePerUnit" />
          <br />
          <div class="flex">
            <button class="actionButton formButton" type="submit">submit</button>
          </div>
        </form>
      </div>
    </div>

