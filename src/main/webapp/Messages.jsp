<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/Messages.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/index.css">
	<title>Inbox</title>
</head>
<body>
	<jsp:include page="./Partials/Header.jsp" />
	<div class="msgcontainer">
		<div class="msgs">
			<h2>Outbox</h2>
			<div class="table1">
				<table>
					<tr>
						<th>From</th>
						<th>To</th>
						<th>Subject</th>
						<th>Message</th>
						<th>Response</th>
						<th>Date</th>
						<th>Actions</th>
					</tr>
					<tr>
						<td>You</td>
						<td>ModithaM</td>
						<td>Delevery</td>
						<td>My Product didn't recived yet what should i do now ?</td>
						<td>Order will be recive before next monday</td>
						<td>24/12/10</td>
						<td><input type="submit" value="Delete"></td>
					</tr>
					<tr>
						<td>You</td>
						<td>ModithaM</td>
						<td>Delevery</td>
						<td>My Product didn't recived yet what should i do now ?</td>
						<td>No Response Yet</td>
						<td>24/12/10</td>
						<td><input type="submit" value="Delete"></td>
					</tr>
					<tr>
						<td>You</td>
						<td>ModithaM</td>
						<td>Refund</td>
						<td>My Product didn't recived yet what should i do now ?</td>
						<td>No Response Yet</td>
						<td>24/12/10</td>
						<td><input type="submit" value="Delete"></td>
					</tr>
					<tr>
						<td>You</td>
						<td>ModithaM</td>
						<td>Delevery</td>
						<td>My Product didn't recived yet what should i do now ?</td>
						<td>Order will be recive before next monday</td>
						<td>24/12/10</td>
						<td><input type="submit" value="Delete"></td>
					</tr>
				</table>
			</div>
		</div>
	</div>
	<jsp:include page="./Partials/Footer.jsp" />
</body>
</html>