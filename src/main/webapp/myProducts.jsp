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
<link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/myProducts.css">

<title>My Products</title>
</head>
<body>
	
	<jsp:include page="./Partials/Header.jsp" />
	
    <div class="my-products-container">
        <div class="manage-my-products-container">
            <div class="add-products-container">
                <form action="${pageContext.request.contextPath}/AddProductServlet" method="post">
                    <h3 class="add-product-topic">Add Product</h3>
                    <div class="input-rows">
                        <input type="text" class="product-name input-details" placeholder="Product Name" name="productTitle"><br>
                        <input type="text" class="price input-details" placeholder="Price" name="price">
                        <input type="text" class="quantity input-details" placeholder="Quantity" name="quantity"><br>
                        <label class="category input-details">Category</label>
                        <select name="category" class="input-details">
                            <option value="Electronics">Electronics</option>
                            <option value="Sports">Sports</option>
                            <option value="Health & Beauty">Health & Beauty</option>
                            <option value="Groceries">Groceries</option>
                            <option value="Stationary">Stationary</option>
                            <option value="Fashion">Fashion</option>
                        </select><br>
                        <input type="file" class="add-image input-details" name="productImage"><br>
                        <textarea name="description" class="input-details" cols="55" rows="7"></textarea>
                        
                        <c:if test="${not empty RegisterError}">
                    		<p id="error">${RegisterError}</p>
                		</c:if>
                    </div>
                    <div class="submit-button-container"><input type="submit" value="Submit" class="submit-button"></div>
                </form>
            </div>
            <div class="product-table-container">
                <table>
                    <tr>
                        <th>Product ID</th>
                        <th>Product Title</th>
                        <th>Category</th>
                        <th>Quantity</th>
                        <th>Price</th>
                        <th>Edit</th>
                        <th>Delete</th>
                    </tr>

					<c:forEach var="product" items="${productDetails}">
						
							<c:set var="productId" value="${product.productId}" />
							<c:set var="productTitle" value="${product.productTitle}" />
							<c:set var="productCategory" value="${product.productCategory}" />
							<c:set var="productQuantity" value="${product.productQuantity}" />
							<c:set var="productPrice" value="${product.productPrice}" />
					<tr>
						<td>${product.productId}</td>
						<td>${product.productTitle}</td>
						<td>${product.productCategory}</td>
						<td>${product.productQuantity}</td>
						<td>${product.productPrice}</td>
						<td>
							<form action="#" method="post">
								<input type="button" class="edit" name="edit" value="Edit">
							</form>
						</td>
	                   	<td>
	                   		<form action="${pageContext.request.contextPath}/deleteProductServlet" method="post">
	                   			<input type="hidden" value="${product.productId}" name="prodid">
	                   			<input type="button" class="delete" name="delete" value="Delete">
	                   		</form>
	                   	</td>
	                    
					</tr>
					
					</c:forEach>
                        
                </table>
            </div>
        </div>
    </div>
    
    <jsp:include page="./Partials/Footer.jsp" />
</body>
</html>