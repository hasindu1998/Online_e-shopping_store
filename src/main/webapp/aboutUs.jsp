<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/aboutUs.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/index.css">
	<title>About Us</title>
</head>
<body>
	<jsp:include page="./Partials/Header.jsp" />
	
	<div class="responsive-container-block bigContainer">
		<div class="responsive-container-block Container">
		  <div class="imgContainer">
			<img class="blueDots" src="https://workik-widget-assets.s3.amazonaws.com/widget-assets/images/aw3.svg">
			<img class="mainImg" src="https://workik-widget-assets.s3.amazonaws.com/widget-assets/images/aw2.svg">
		  </div>
		  <div class="responsive-container-block textSide">
			<p class="text-blk heading">
			  About Us
			</p>
			<p class="text-blk subHeading">
				At <b>GlobalGoods Enterprises PVT Ltd</b>, we strive to transform the shopping experience by offering 
				a seamless platform for high-quality, globally sourced products. Based in Colombo, Sri Lanka, we provide 
				a diverse range of goods to meet our customers' unique needs. Our mission is to make premium products 
				accessible and affordable, ensuring satisfaction with every purchase. Whether you're seeking innovative 
				solutions or everyday essentials, GlobalGoods Enterprises is your trusted partner for quality and 
				convenience.
			</p>
			<div class="responsive-cell-block wk-desk-6 wk-ipadp-6 wk-tab-12 wk-mobile-12">
			  <div class="cardImgContainer">
				<img class="cardImg" src="${pageContext.request.contextPath}/Images/Quality.png">
			  </div>
			  <div class="cardText">
				<p class="text-blk cardHeading">
					Quality
				</p>
				<p class="text-blk cardSubHeading">
					Customer satisfaction drives us to maintain uncompromising quality in everything we do.
				</p>
			  </div>
			</div>
			<div class="responsive-cell-block wk-desk-6 wk-ipadp-6 wk-tab-12 wk-mobile-12">
			  <div class="cardImgContainer">
				<img class="cardImg" src="${pageContext.request.contextPath}/Images/Affordability.png">
			  </div>
			  <div class="cardText">
				<p class="text-blk cardHeading">
					Affordability
				</p>
				<p class="text-blk cardSubHeading">
					We believe premium products should be accessible to everyone.
				</p>
			  </div>
			</div>
			<div class="responsive-cell-block wk-desk-6 wk-ipadp-6 wk-tab-12 wk-mobile-12">
			  <div class="cardImgContainer">
				<img class="cardImg" src="${pageContext.request.contextPath}/Images/Reliability.png">
			  </div>
			  <div class="cardText">
				<p class="text-blk cardHeading">
					Reliability
				</p>
				<p class="text-blk cardSubHeading">
					You can count on us to deliver exceptional service and products, consistently and dependably.
				</p>
			  </div>
			</div>
			<div class="responsive-cell-block wk-desk-6 wk-ipadp-6 wk-tab-12 wk-mobile-12">
			  <div class="cardImgContainer">
				<img class="cardImg" src="${pageContext.request.contextPath}/Images/Delivery.png">
			  </div>
			  <div class="cardText">
				<p class="text-blk cardHeading">
					Delivery
				</p>
				<p class="text-blk cardSubHeading">
					We value prompt and efficient delivery services, ensuring your orders arrive on time and in perfect condition.
				</p>
			  </div>
			</div>
			<a>
			  <button class="explore">
				Explore our Services
			  </button>
			</a>
		  </div>
		  <img class="redDots" src="https://workik-widget-assets.s3.amazonaws.com/widget-assets/images/cw3.svg">
		</div>
	  </div>
	 
	<jsp:include page="./Partials/Footer.jsp" />
</body>
</html>