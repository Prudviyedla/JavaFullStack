<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Change Password</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 0;
        }
        
        .change-password-container {
            max-width: 400px;
            margin: 0 auto;
            padding: 20px;
            background-color: #ffffff;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            border-radius: 5px;
        }
        
        .change-password-title {
            text-align: center;
            margin-bottom: 20px;
            color: #333333;
        }
        
        .change-password-form label {
            display: block;
            margin-bottom: 8px;
            color: #555555;
        }
        
        .change-password-form input[type="password"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #dddddd;
            border-radius: 3px;
        }
        
        .change-password-button {
            background-color: #007bff;
            color: #ffffff;
            border: none;
            padding: 10px 20px;
            border-radius: 3px;
            cursor: pointer;
        }
        
        .change-password-button:hover {
            background-color: #0056b3;
        }
        
        .error-message {
            color: red;
            margin-top: 10px;
        }
        
        .success-message {
            color: green;
            margin-top: 10px;
        }
    </style>
</head>
<body>
    <div class="change-password-container">
        <h1 class="change-password-title">Change Password</h1>
        <form class="change-password-form" action="/changepassword" method="post">
            <label for="oldPassword">Old Password:</label>
            <input type="password" id="oldPassword" name="oldPassword" required>
            <label for="newPassword">New Password:</label>
            <input type="password" id="newPassword" name="newPassword" required>
            <input type="submit" class="change-password-button" value="Change Password">
        </form>
        
        <c:if test="${not empty errorMessage}">
            <p class="error-message">${errorMessage}</p>
        </c:if>
        
        <c:if test="${not empty successMessage}">
            <p class="success-message">${successMessage}</p>
        </c:if>
    </div>
</body>
</html>
