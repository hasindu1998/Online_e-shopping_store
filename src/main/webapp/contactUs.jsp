<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">

<link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/contactUs.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/index.css">

<title>Contact Us</title>
</head>
<body>
	<jsp:include page="./Partials/Header.jsp" />
	
	<div class="contact-us-container">
		<div class="contact-us-image">
			<img src="${pageContext.request.contextPath}/Images/contactUs.png" alt="" class="main-image">
		</div>
		<div class="contact-us-form">
			<form action="" method="post" enctype="multipart/form-data">
				<h3 class="contact-us-heading">Contact Us</h3>
				<input type="text" class="name" placeholder="Name">
				<input type="email" class="email" placeholder="Email"><br>
				<textarea name="" class="description" cols="90" rows="15"></textarea>

				<div class="button-container">
					<button class="submit">Sumbit</button>
				</div>
			</form>
		</div>
	</div>
	
	 
	<jsp:include page="./Partials/Footer.jsp" />
</body>
</html>