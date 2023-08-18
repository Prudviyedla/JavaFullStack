<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .login-container {
            background-color: #fff;
            border-radius: 5px;
            padding: 20px;
            box-shadow: 0 2px 6px rgba(0, 0, 0, 0.1);
            width: 300px;
        }
        .login-title {
            margin: 0 0 20px;
            text-align: center;
            color: #333;
        }
        .login-form label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }
        .login-form input[type="text"],
        .login-form input[type="password"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 3px;
        }
        .login-form input[type="submit"] {
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 3px;
            padding: 10px 20px;
            cursor: pointer;
            width: 100%;
        }
        .forgot-password {
            text-align: center;
            margin-top: 10px;
        }
    </style>
</head>
<body>
    <div class="login-container">
        <h1 class="login-title">Login</h1>
        
        <form class="login-form" action="/login" method="post">
            <label for="username">Username:</label>
            <input type="text" id="username" name="username" required><br>
            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required><br>
            
            <!-- Move the error message display here -->
            <input type="submit" value="Login">
            
            <%-- <c:if test="${param.error != null}">
                <p style="color: red; text-align: center;">Login failed. Please check your username and password.</p>
            </c:if> --%>
        </form>
        <div class="forgot-password">
            <a href="/forgotpassword">Forgot Password</a>
        </div>
    </div>
</body>
</html>
