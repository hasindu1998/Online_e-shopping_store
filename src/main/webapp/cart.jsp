<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">

<link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/cart.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/index.css">

<title>My Cart</title>
</head>
<body>

    <jsp:include page="./Partials/Header.jsp" />

    <div class="cart-heading-container">
        <h3 class="cart-heading">My Cart</h3>
    </div>
    <div class="cart-item-container">
        <table>
            <tr>
                <th>Item ID</th>
                <th>Item Name</th>
                <th>Quantity</th>
                <th>Price</th>
                <th>Delete</th>
            </tr>
            <tr>
                <td>001</td>
                <td>I phone 16 pro max</td>
                <td>1</td>
                <td>100000.00</td>
                <td><button class="delete-button">Delete</button></td>
            </tr>
            <tr>
                <td>002</td>
                <td>I phone 16 pro max</td>
                <td>1</td>
                <td>100000.00</td>
                <td><button class="delete-button">Delete</button></td>
            </tr>
            <tr>
                <td>003</td>
                <td>I phone 16 pro max</td>
                <td>1</td>
                <td>100000.00</td>
                <td><button class="delete-button">Delete</button></td>
            </tr>
            <tr>
                <td>004</td>
                <td>I phone 16 pro max</td>
                <td>1</td>
                <td>100000.00</td>
                <td><button class="delete-button">Delete</button></td>
            </tr><tr>
                <td>005</td>
                <td>I phone 16 pro max</td>
                <td>1</td>
                <td>100000.00</td>
                <td><button class="delete-button">Delete</button></td>
            </tr><tr>
                <td>006</td>
                <td>I phone 16 pro max</td>
                <td>1</td>
                <td>100000.00</td>
                <td><button class="delete-button">Delete</button></td>
            </tr><tr>
                <td>007</td>
                <td>I phone 16 pro max</td>
                <td>1</td>
                <td>100000.00</td>
                <td><button class="delete-button">Delete</button></td>
            </tr>
        </table>
    </div>

    <jsp:include page="./Partials/Footer.jsp" />
</body>
</html>