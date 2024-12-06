<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="com.user.User" %>
<%
    User user = (User) request.getAttribute("user");
    if (user == null) {
        response.sendRedirect("index.jsp"); // Redirect if user is not found
    }
%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/index.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/myProfile.css">
	<title>My Profile</title>
</head>
<body>
	<jsp:include page="./Partials/Header.jsp" />
	
		<div class="maincontainer">
			<div class="leftsect">
				<div class="floatsect">
					<div class="profileimg">
						<h2 class="usrname">Hello ${Fname}</h2>
						<img src="${pageContext.request.contextPath}/Images/Profilepics/${propicUrl}" alt="Profile Picture">
						<form action="" method="POST">
							<input type="file" name="profilepic" id="profilepic" accept="image/*">
						</form>
						<div class="links">
							<p><a href="#pwds">&#9658 Change Password</a></p>
							<p><a href="#">&#9658 My Orders</a></p>
							<p><a href="#">&#9658 My Cart</a></p>
							<p><a href="#">&#9658 My Products</a></p>
							<p><a href="#">&#9658 Logout</a></p>
						</div>
						<form action="#" method="POST">
							<input class="submitbtn" id="deleteacc" type="submit" value="Delete Account">
						</form>
					</div>

				</div>
			</div>
			<div class="rightsect">
				<form action="#" method="POST">
					<div class="rowscontainer">
						<div class="rows doublerows">
							<div class="lableinput">
								<label for="">First Name</label>
								<input type="text" value="${user.fname}">
							</div>
							<div class="lableinput">
								<label for="">Last Name</label>
								<input type="text" value="${user.lname}">
							</div>
						</div>
						<div class="rows">
							<div class="lableinput singlerow">
								<label for="">Email</label>
								<input type="text" value="${user.email}">
							</div>
						</div>
						<div class="rows doublerows">
							<div class="lableinput">
								<label for="">Contact No</label>
								<input type="tel" value="${user.phone}">
							</div>
							<div class="lableinput">
								<label for="">Birthday</label>
								<input type="date" placeholder="Birthday" value="${user.dob}">
							</div>
						</div>
						<hr>
						<div class="rows">
							<div class="lableinput singlerow">
								<label for="">Address</label>
								<input type="text" value="${user.address != null ? user.address : '' }">
							</div>
						</div>
						<div class="rows doublerows">
							<div class="lableinput">
								<label for="" id="pwds">City</label>
								<input type="text" value="${user.city != null ? user.city : '' }">
							</div>
							<div class="lableinput">
								<label for="">Province</label>
								<input type="text" value="${user.province != null ? user.province : '' }">
							</div>
						</div>
						<div class="rows doublerows">
							<div class="lableinput">
								<label for="">Country</label>
								<input type="text" value="${user.country != null ? user.country : '' }">
							</div>
							<div class="lableinput">
								<label for="">Postal Code</label>
								<input type="text" value="${user.postalcode != null ? user.postalcode : '' }">
							</div>
						</div>
						<div class="rows">
							<input class="submitbtn" type="submit" placeholder="Save Changes" value="Save Chages">
						</div>
					</div>
				</form>
				<form action="#" method="POST">
					<div class="rowscontainer">
						<div class="rows singlerow">
							<div class="lableinput">
								<label for="">Old Password</label>
								<input type="password" >
							</div>
						</div>
						<div class="rows singlerow">
							<div class="lableinput">
								<label for="">New Password</label>
								<input type="password" >
							</div>
						</div>
						<div class="rows singlerow">
							<div class="lableinput">
								<label for="">Confirm Password</label>
								<input type="password" >
							</div>
						</div>
						<div class="rows">
							<input class="submitbtn" type="submit" placeholder="Change Password" value="Change Password">
						</div>
					</div>
				</form>
			</div>
		</div>
	 
	<jsp:include page="./Partials/Footer.jsp" />
</body>
</html>