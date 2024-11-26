<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/index.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/logIn.css">
    <title>Login</title>
</head>
<body>
    <div class="logincontainer">
        <div class="contentbox">
            <div class="contentbox2">
                <div class="imagebox">
                    <p id="tagline" >Quality, Convenience, Savings – All in One!</p>
                    <p id="tagline2">Shop with ease and enjoy premium products at great prices, all in just a few clicks!</p>
                    <img src="${pageContext.request.contextPath}/Images/pngwing.com.png" alt="login page">
                </div>
                <div class="inputbox">
                    <img src="${pageContext.request.contextPath}/Images/company-logo.png" alt="login page">
                    <h2>Welcome Back</h2>
                    <p>Please login to your account</p>
                    <form action="" method="POST" >
                        <input class="inputs" type="text" name="username" id="username" placeholder="Username" required>
                        <input class="inputs" type="password" name="password" id="password" placeholder="Password" required>
                        <p id="error">Error !</p>
                        <input class="submit" type="submit" value="Login">
                    </form>
                    <button class="regbtn" id="register">Register</button>
                </div>
            </div>
        </div>
    </div>
</body>
</html>