<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
 	<link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/Header.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/index.css">
	<script type="text/javascript" src="${pageContext.request.contextPath}/JS/header.js"></script>
</head>
<body>
	<header>
		<div class="uppersection">
			<div class="container1">
				<div class="logo">
					<a href="${pageContext.request.contextPath}">
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
				<c:if test="${not empty userid}">
				    <div class="profile">
				        <img src="${pageContext.request.contextPath}/Images/Profilepics/${propicUrl}" alt="profile" onclick="toggleDropdown()">
				        <h4 onclick="toggleDropdown()">Hello ${Fname}</h4>
				    </div>
				    <div class="Profile_dropdown" id="prof_dropdown">
				        <div class="dropdown_items">
				            <a href="#">My Profile</a>
				            <a onclick="return confirm('Do you want to log out now?')" href="${pageContext.request.contextPath}/LogoutServlet">Log Out</a>
				        </div>
				    </div>
				</c:if>

				<c:if test="${empty userid}">
        			<div class="logregbtns">
						<button class="loginbtn" onclick="document.location='${pageContext.request.contextPath}/logIn.jsp'">Login</button>
						<button class="registerbtn" onclick="document.location='${pageContext.request.contextPath}/register.jsp'">Register</button>
					</div>
    			</c:if>
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