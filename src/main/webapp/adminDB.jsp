<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

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
			<h2>All Users <span class="count">23</span></h2>
			<div class="tablecontainer">
				<table>
					<tr>
						<th class="usrname">Username</th>
						<th class="mail">Email</th>
						<th class="role">Role</th>
						<th class="action">Actions</th>
					</tr>
					<tr>
						<td class="namecolumn">
							<img src="${pageContext.request.contextPath}/Images/profileicon.webp" alt="user">
							<p>John Doe</p>
						</td>
						<td>test@gmail.com</td>
						<td><span class="userrole">Admin</span></td>
						<td>
							<button class="btn">Delete</button>
						</td>
					</tr>
					<tr>
						<td class="namecolumn">
							<img src="${pageContext.request.contextPath}/Images/profileicon.webp" alt="user">
							<p>Moditha Marasingha</p>
						</td>
						<td>test@gmail.com</td>
						<td><span class="userrole">Buyer</span></td>
						<td>
							<button class="btn">Delete</button>
						</td>
					</tr>
					<tr>
						<td class="namecolumn">
							<img src="${pageContext.request.contextPath}/Images/profileicon.webp" alt="user">
							<p>Gimhan Kulasingha</p>
						</td>
						<td>test@gmail.com</td>
						<td><span class="userrole">Seller</span></td>
						<td>
							<button class="btn">Delete</button>
						</td>
					</tr>
					<tr>
						<td class="namecolumn">
							<img src="${pageContext.request.contextPath}/Images/profileicon.webp" alt="user">
							<p>John Doe</p>
						</td>
						<td>test@gmail.com</td>
						<td><span class="userrole">Admin</span></td>
						<td>
							<button class="btn">Delete</button>
						</td>
					</tr>
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