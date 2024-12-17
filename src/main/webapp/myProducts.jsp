<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
                <form action="#" method="post" enctype="multipart/form-data">
                    <h3 class="add-product-topic">Add Product</h3>
                    <div class="input-rows">
                        <input type="text" class="product-name input-details" placeholder="Product Name" name="roductTitle"><br>
                        <input type="number" class="price input-details" placeholder="Price" name="price">
                        <input type="number" class="quantity input-details" placeholder="Quantity" name="quantity"><br>
                        <label class="category input-details">Category</label>
                        <select name="category" class="input-details">
                            <option value="Electronics">Electronics</option>
                            <option value="Sports">Sports</option>
                            <option value="Health & Beauty">Health & Beauty</option>
                            <option value="Groceries">Groceries</option>
                            <option value="Stationary">Stationary</option>
                            <option value="Fashion">Fashion</option>
                        </select><br>
                        <input type="file" class="add-image input-details"><br>
                        <textarea name="" class="input-details" cols="55" rows="7"></textarea>
                    </div>
                    <div class="submit-button-container"><input type="Submit" value="add-product" class="submit-button"></div>
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

                    <tr>
                        <td>001</td>
                        <td>Iphone 16 pro max</td>
                        <td>Electronics</td>
                        <td>20</td>
                        <td>400000.00</td>
                        <td><button class="edit">Edit</button></td>
                        <td><button class="delete">Delete</button></td>
                    </tr>
                    
                    <tr>
                        <td>002</td>
                        <td>Iphone 16 pro max</td>
                        <td>Electronics</td>
                        <td>20</td>
                        <td>400000.00</td>
                        <td><button class="edit">Edit</button></td>
                        <td><button class="delete">Delete</button></td>
                    </tr>
                    <tr>
                        <td>003</td>
                        <td>Iphone 16 pro max</td>
                        <td>Electronics</td>
                        <td>20</td>
                        <td>400000.00</td>
                        <td><button class="edit">Edit</button></td>
                        <td><button class="delete">Delete</button></td>
                    </tr>
                    <tr>
                        <td>004</td>
                        <td>Iphone 16 pro max</td>
                        <td>Electronics</td>
                        <td>20</td>
                        <td>400000.00</td>
                        <td><button class="edit">Edit</button></td>
                        <td><button class="delete">Delete</button></td>
                    </tr>
                    <tr>
                        <td>005</td>
                        <td>Iphone 16 pro max</td>
                        <td>Electronics</td>
                        <td>20</td>
                        <td>400000.00</td>
                        <td><button class="edit">Edit</button></td>
                        <td><button class="delete">Delete</button></td>
                    </tr>
                    <tr>
                        <td>006</td>
                        <td>Iphone 16 pro max</td>
                        <td>Electronics</td>
                        <td>20</td>
                        <td>400000.00</td>
                        <td><button class="edit">Edit</button></td>
                        <td><button class="delete">Delete</button></td>
                    </tr>
                    <tr>
                        <td>007</td>
                        <td>Iphone 16 pro max</td>
                        <td>Electronics</td>
                        <td>20</td>
                        <td>400000.00</td>
                        <td><button class="edit">Edit</button></td>
                        <td><button class="delete">Delete</button></td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
    
    <jsp:include page="./Partials/Footer.jsp" />
</body>
</html>