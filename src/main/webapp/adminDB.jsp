<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/adminDB.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/index.css">
<title>Admin Dashboard</title>
</head>
<body>
	<jsp:include page="./Partials/Header.jsp" />
	
	<div class="maincontainer">
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
				<h3 class="stats-topic">Unread Messages</h3>
				<div class="stats-amount">55</div>
			</div>
		</div>
		
		<div class="users">
			<h2>All Users <span class="count">${userCount}</span></h2>
			<div class="tablecontainer">
				<table>
					<tr>
						<th class="usrname">User Name</th>
						<th class="mail">Email</th>
						<th class="role">Role</th>
						<th class="action">Actions</th>
					</tr>
					
					<c:forEach var="user" items="${users}">
						
						<c:set var="fname" value="${user.fname}" />
						<c:set var="lname" value="${user.lname}" />
						<c:set var="id" value="${user.id}" />
						<c:set var="email" value="${user.email}" />
						<c:set var="usertype" value="${user.usertype}" />
						<c:set var="propicUrl" value="${user.propicUrl}" />
					
						<tr>
						<td class="namecolumn">
							<img src="${pageContext.request.contextPath}/Images/Profilepics/${user.propicUrl}" alt="user">
							<p>${user.fname} ${user.lname}</p>
						</td>
						<td>${user.email}</td>
						<td><span class="userrole">${user.usertype}</span></td>
						<td>
							<form action="">
								<input type="hidden" value="${user.id}">
								<button class="btn">Delete</button>
							</form>
						</td>
					</tr>
					</c:forEach>
					
				</table>
			</div>
		</div>

		<div class="users">
			<h2>Messages Inbox <span class="count">20</span></h2>
			<div class="tablecontainer">
				<table>
					<tr>
						<th>Username</th>
						<th>Email</th>
						<th>Message</th>
						<th>Actions</th>
					</tr>
					<tr>
						<td>Moditha Marasingha</td>
						<td>moditha2003@gmail.com</td>
						<td>Hi, I want to buy a product</td>
						<td>
							<button class="btn">Delete</button>
						</td>
					</tr>
					<tr>
						<td>Moditha Marasingha</td>
						<td>moditha2003@gmail.com</td>
						<td>Hi, I want to buy a product</td>
						<td>
							<button class="btn">Delete</button>
						</td>
					</tr>
					<tr>
						<td>Moditha Marasingha</td>
						<td>moditha2003@gmail.com</td>
						<td>Hi, I want to buy a product</td>
						<td>
							<button class="btn">Delete</button>
						</td>
					</tr>
					<tr>
						<td>Moditha Marasingha</td>
						<td>moditha2003@gmail.com</td>
						<td>Hi, I want to buy a product</td>
						<td>
							<button class="btn">Delete</button>
						</td>
					</tr>
				</table>
			</div>
		</div>

		<div class="users">
			<h2>Products <span class="count">200</span></h2>
			<div class="tablecontainer">
				<table>
					<tr>
						<th>Product Title</th>
						<th>Price</th>
						<th>Qty Available</th>
						<th>Seller</th>
						<th>Actions</th>
					</tr>
					<tr>
						<td>I Phone 12pro max</td>
						<td>Rs. 250000.00</td>
						<td>10</td>
						<td>Moditha Marasingha</td>
						<td>
							<button class="btn editbtn">Edit</button>
							<button class="btn">Delete</button>
						</td>
					</tr>
					<tr>
						<td>I Phone 12pro max</td>
						<td>Rs. 250000.00</td>
						<td>10</td>
						<td>Moditha Marasingha</td>
						<td>
							<button class="btn editbtn">Edit</button>
							<button class="btn">Delete</button>
						</td>
					</tr>
					<tr>
						<td>I Phone 12pro max</td>
						<td>Rs. 250000.00</td>
						<td>10</td>
						<td>Moditha Marasingha</td>
						<td>
							<button class="btn editbtn">Edit</button>
							<button class="btn">Delete</button>
						</td>
					</tr>
					<tr>
						<td>I Phone 12pro max</td>
						<td>Rs. 250000.00</td>
						<td>10</td>
						<td>Moditha Marasingha</td>
						<td>
							<button class="btn editbtn">Edit</button>
							<button class="btn">Delete</button>
						</td>
					</tr>
				</table>
			</div>
		</div>
		
	</div>
	 
	<jsp:include page="./Partials/Footer.jsp" />
</body>
</html>