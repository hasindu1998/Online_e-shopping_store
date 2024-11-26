<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/index.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/sellerDB.css">
	<title>Seller Dashboard</title>
</head>
<body>
	<jsp:include page="./Partials/Header.jsp" />

	<div class="sellerBD-container">
		<div class="stats-container">
			<div class="stats-content">
				<h3 class="stats-topic">Total Sales</h3>
				<div class="stats-amount">Rs. 23500.00</div>
			</div>

			<div class="stats-content">
				<h3 class="stats-topic">Total Listed Items</h3>
				<div class="stats-amount">220</div>
			</div>

			<div class="stats-content">
				<h3 class="stats-topic">Total Orders</h3>
				<div class="stats-amount">55</div>
			</div>

			<div class="stats-content">
				<h3 class="stats-topic">Total Messages</h3>
				<div class="stats-amount">55</div>
			</div>
		</div>

		<div class="message-table-container">
			<table>
				<tr>
					<th>Message ID</th>
					<th>Sender Username</th>
					<th>Message</th>
					<th>Reply</th>
					<th>Sumbit</th>
					<th>Delete</th>
				</tr>
				<tr>
					<td>001</td>
					<td>Hasindu</td>
					<td>I want to refund my order</td>
					<td><input type="text"></td>
					<td><button class="submit-reply">Submit</button></td>
					<td><button class="delete-message">Delete</button></td>
				</tr>
				<tr>
					<td>002</td>
					<td>Hasindu</td>
					<td>I want to refund my order</td>
					<td><input type="text"></td>
					<td><button class="submit-reply">Submit</button></td>
					<td><button class="delete-message">Delete</button></td>
				</tr>
				<tr>
					<td>003</td>
					<td>Hasindu</td>
					<td>I want to refund my order</td>
					<td><input type="text"></td>
					<td><button class="submit-reply">Submit</button></td>
					<td><button class="delete-message">Delete</button></td>
				</tr>
				<tr>
					<td>004</td>
					<td>Hasindu</td>
					<td>I want to refund my order</td>
					<td><input type="text"></td>
					<td><button class="submit-reply">Submit</button></td>
					<td><button class="delete-message">Delete</button></td>
				</tr>
				<tr>
					<td>005</td>
					<td>Hasindu</td>
					<td>I want to refund my order</td>
					<td><input type="text"></td>
					<td><button class="submit-reply">Submit</button></td>
					<td><button class="delete-message">Delete</button></td>
				</tr>
				<tr>
					<td>006</td>
					<td>Hasindu</td>
					<td>I want to refund my order</td>
					<td><input type="text"></td>
					<td><button class="submit-reply">Submit</button></td>
					<td><button class="delete-message">Delete</button></td>
				</tr>
			</table>
		</div>
		<center class="my-product-container"><a href="" class="my-product-page">My Products</a></center>
	</div>
	 
	<jsp:include page="./Partials/Footer.jsp" />
</body>
</html>