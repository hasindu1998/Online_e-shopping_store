<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/orderNow.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/index.css">
    <title>Place Order</title>
</head>
<body>
    <jsp:include page="./Partials/Header.jsp" />
    <div class="container">
      <div class="d-flex">
        <form action="" method="POST">
          <label>
            <span class="fname">First Name <span class="required">*</span></span>
            <input class="orderinput" type="text" name="fname">
          </label>
          <label>
            <span class="lname">Last Name <span class="required">*</span></span>
            <input class="orderinput" type="text" name="lname">
          </label>
          <label>
            <span>Country <span class="required">*</span></span>
            <select name="selection">
              <option value="ESH">Sri lanka</option>
              <option value="YEM">India</option>
              <option value="ZMB">Dubai</option>
              <option value="ZWE">Maldives</option>
            </select>
          </label>
          <label>
            <span>Street Address <span class="required">*</span></span>
            <input class="orderinput" type="text" name="houseadd" placeholder="House number and street name" required>
          </label>
          <label>
            <span>&nbsp;</span>
            <input class="orderinput" type="text" name="apartment" placeholder="Apartment, suite, unit etc..">
          </label>
          <label>
            <span>Town / City <span class="required">*</span></span>
            <input class="orderinput" type="text" name="city"> 
          </label>
          <label>
            <span>Province <span class="required">*</span></span>
            <input class="orderinput" type="text" name="city"> 
          </label>
          <label>
            <span>Postcode / ZIP <span class="required">*</span></span>
            <input class="orderinput" type="text" name="city"> 
          </label>
          <label>
            <span>Phone <span class="required">*</span></span>
            <input class="orderinput" type="tel" name="city"> 
          </label>
          <label>
            <span>Email Address <span class="required">*</span></span>
            <input class="orderinput" type="email" name="city"> 
          </label>
        </form>
        <div class="Yorder">
          <table>
            <tr>
              <th colspan="2">Your order</th>
            </tr>
            <tr>
              <td>I Phone 11 Pro x 2</td>
              <td>100000.00LKR</td>
            </tr>
            <tr>
              <td>Subtotal</td>
              <td>100000.00LKR</td>
            </tr>
            <tr>
              <td>Shipping</td>
              <td>Free shipping</td>
            </tr>
          </table><br>
          <div>
            <input class="orderinput" type="radio" name="dbt" value="dbt" checked> Direct Bank Transfer
          </div>
          <p>
              Make your payment directly into our bank account. Please use your Order ID as the payment reference. Your order will not be shipped until the funds have cleared in our account.
          </p>
          <div>
            <input class="orderinput" type="radio" name="dbt" value="cd"> Cash on Delivery
          </div>
          <button class="orderbtn" type="button">Place Order</button>
        </div>
       </div>
      </div>
    <jsp:include page="./Partials/Footer.jsp" />
</body>
</html>