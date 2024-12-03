<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
 	<link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/Header.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/index.css">
</head>
<body>
	<header>
		<div class="uppersection">
			<div class="container1">
				<div class="logo">
					<a href="#">
							<img src="${pageContext.request.contextPath}/Images/company-logo.png" alt="Logo">
					</a>
				</div>
				<div class="headernav">
					<ul>
						<li><a href="${pageContext.request.contextPath}">Home</a></li>
						<li><a href="#">Shop</a></li>
						<li><a href="${pageContext.request.contextPath}/aboutUs.jsp">About Us</a></li>
						<li><a href="${pageContext.request.contextPath}/contactUs.jsp">Contact Us</a></li>
					</ul>
				</div>
				<div class="profile">
					<a href="#">
						<img src="${pageContext.request.contextPath}/Images/profileicon.webp" alt="profile">
						<h4>Hello Username</h4>
					</a>
				</div>
			</div>
		</div>
		<div class="bottomsection">
			<div class="container2">
				<ul>
					<li><a href="#">Electronics</a></li>
					<li><a href="#">Sports</a></li>
					<li><a href="#">Health & Beauty</a></li>
					<li><a href="#">Groceries</a></li>
					<li><a href="#">Stationary</a></li>
					<li><a href="#">Fashion</a></li>
				</ul>
			</div>
		</div>
	</header>
</body>
</html>