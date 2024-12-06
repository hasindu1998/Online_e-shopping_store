<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/index.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/register.css">
	<title>Register Now</title>
</head>
<body>
	<div class="maincontainer1">
		<div class="registerformcontainer">
			<h2>Start Your Journey with Us!</h2>
			<p id="regtext">Register now and enjoy a smoother, smarter shopping experience.</p> 
			<form action="${pageContext.request.contextPath}/RegisterServlet" method="POST">
				<div class="rows">
					<input type="text" name="firstname" placeholder="First Name" required>
					<input type="text" name="lastname" placeholder="Last Name" required>
				</div>
				<div class="rows">
					<input type="text" name="username" placeholder="Username" required>
					<input type="tel" name="Cno" placeholder="Mobile No" required>
				</div>
				<div class="rows">
					<input type="email" name="email" placeholder="E-mail" required>
					<input type="date" name="Bdate" placeholder="Birth Day" required>
				</div>
				<div class="rows">
					<input type="password" name="password" placeholder="Password" required>
					<input type="password" name="confirmpassword" placeholder="Confirm Password" required>
				</div>
				<div class="radiobtns">
						<b>User Type :</b>
						<input type="radio" name="userType" value="seller" required> Seller
						<input type="radio" name="userType" value="buyer"> Buyer
				</div>
				
				<c:if test="${not empty RegisterError}">
                    <p id="error">${RegisterError}</p>
                </c:if>
                
				<div class="rows submitbtn">
					<input type="submit" value="Register">
				</div>
			</form>
		</div>
	</div>
</body>
</html>