<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />

    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap"
      rel="stylesheet"
    />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/myOrder.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/index.css" />

    <title>My Orders</title>
  </head>
  <body>
    <jsp:include page="./Partials/Header.jsp" />

    <div class="my-orders-container">
      <div class="my-order-heading">
        <h2 class="order-heading">My Orders</h2>
      </div>
      <div class="my-order-table">
        <table>
          <tr>
            <th>Order ID</th>
            <th>Item Name</th>
            <th>Order Date</th>
            <th>Order Status</th>
            <th>Order Total</th>
          </tr>
          <tr>
            <td>001</td>
            <td>I Phone 16 pro max</td>
            <td>2024-11-29</td>
            <td>Shipped</td>
            <td>300000.00</td>
          </tr>
          <tr>
            <td>002</td>
            <td>I Phone 16 pro max</td>
            <td>2024-11-29</td>
            <td>Shipped</td>
            <td>300000.00</td>
          </tr>
          <tr>
            <td>003</td>
            <td>I Phone 16 pro max</td>
            <td>2024-11-29</td>
            <td>Shipped</td>
            <td>300000.00</td>
          </tr>
          <tr>
            <td>004</td>
            <td>I Phone 16 pro max</td>
            <td>2024-11-29</td>
            <td>Shipped</td>
            <td>300000.00</td>
          </tr>
          <tr>
            <td>005</td>
            <td>I Phone 16 pro max</td>
            <td>2024-11-29</td>
            <td>Shipped</td>
            <td>300000.00</td>
          </tr>
          <tr>
            <td>006</td>
            <td>I Phone 16 pro max</td>
            <td>2024-11-29</td>
            <td>Shipped</td>
            <td>300000.00</td>
          </tr>
          <tr>
            <td>007</td>
            <td>I Phone 16 pro max</td>
            <td>2024-11-29</td>
            <td>Shipped</td>
            <td>300000.00</td>
          </tr>
        </table>
      </div>
    </div>

    <jsp:include page="./Partials/Footer.jsp" />
  </body>
</html>
