<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
	<title>Online e-commerce Site</title>
	<link rel="icon" type="image/png" sizes="32x32" href="">
    <link rel="icon" type="image/png" sizes="16x16" href="">

	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/CSS/index.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/home.css">
</head>
<body>
	<jsp:include page="./Partials/Header.jsp" />
	
	<div class="home-container">
		<div class="landing-page-container">
			<div class="landing-page-content">
				<h1 class="landing-page-heading">Your One-Stop Shop for <br> Every Wish Every Need!</h1>
				<button class="shop-now-button">Shop Now</button>
			</div>
			<div class="main-image-container">
				<img src="${pageContext.request.contextPath}/Images/main-image.png" alt="" class="main-image">
			</div>
		</div>

		<div class="categories-container">
			<div class="categories-heading">Categories</div>
			<div class="categories">
				<div class="category-details">
					<h3 class="category-heading">Electronics</h3>
					<img src="${pageContext.request.contextPath}/Images/electronic-category.png" alt="" class="category-image">
					<div class="overlay"></div>
					<div class="button-container"><button class="shop-now">Shop Now</button></div>
				</div>
				<div class="category-details">
					<h3 class="category-heading">Sports</h3>
					<img src="${pageContext.request.contextPath}/Images/sports-category.png" alt="" class="category-image">
					<div class="overlay"></div>
					<div class="button-container"><button class="shop-now">Shop Now</button></div>
				</div>
				<div class="category-details">
					<h3 class="category-heading">Health & Beauty</h3>
					<img src="${pageContext.request.contextPath}/Images/health_beauty-categiry.jpg" alt="" class="category-image">
					<div class="overlay"></div>
					<div class="button-container"><button class="shop-now">Shop Now</button></div>
				</div>
				<div class="category-details">
					<h3 class="category-heading">Groceries</h3>
					<img src="${pageContext.request.contextPath}/Images/groceries-category.jpg" alt="" class="category-image">
					<div class="overlay"></div>
					<div class="button-container"><button class="shop-now">Shop Now</button></div>
				</div>
				<div class="category-details">
					<h3 class="category-heading">Stationary</h3>
					<img src="${pageContext.request.contextPath}/Images/stationary-category.jpeg" alt="" class="category-image">
					<div class="overlay"></div>
					<div class="button-container"><button class="shop-now">Shop Now</button></div>
				</div>
				<div class="category-details">
					<h3 class="category-heading">Fashion</h3>
					<img src="${pageContext.request.contextPath}/Images/fashion-category.jpeg" alt="" class="category-image">
					<div class="overlay"></div>
					<div class="button-container"><button class="shop-now">Shop Now</button></div>
				</div>
			</div>
		</div>

		<div class="promotion-page-container">
			<div class="promotion-image-container">
				<img src="${pageContext.request.contextPath}/Images/sales-image.jpg" alt="" class="promotion-image">
			</div>
			<div class="promotion-page-content">
				<h1 class="promotion-page-heading">Your One-Stop Shop for <br> Every Wish Every Need!</h1>
				<button class="shop-now-button">Shop Now</button>
			</div>
		</div>

	</div>
	
	 
	<jsp:include page="./Partials/Footer.jsp" />
</body>
</html>
