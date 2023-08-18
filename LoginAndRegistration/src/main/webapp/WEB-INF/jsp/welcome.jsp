<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Welcome</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 0;
        }
        
        .welcome-container {
            max-width: 600px;
            margin: 0 auto;
            padding: 20px;
            background-color: #ffffff;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            border-radius: 5px;
        }
        
        .welcome-title {
            text-align: center;
            margin-bottom: 20px;
            color: #333333;
        }
        
        .welcome-message {
            text-align: center;
            margin-bottom: 20px;
            color: #555555;
        }
        
        .welcome-link {
            display: inline-block;
            margin-right: 10px;
            color: #007bff;
            text-decoration: none;
        }
        
        .logout-form {
            text-align: center;
        }
        
        .logout-button {
            background-color: #007bff;
            color: #ffffff;
            border: none;
            padding: 10px 20px;
            border-radius: 3px;
            cursor: pointer;
        }
        
        .logout-button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="welcome-container">
        <h1 class="welcome-title">Welcome to our application, ${username}!</h1>
        <p class="welcome-message">What would you like to do next?</p>
        <a href="/changepassword" class="welcome-link">Change Password</a>
        
        <div class="logout-form">
            <form action="/logout" method="GET">
                <input type="submit" value="Logout" class="logout-button">
            </form>
        </div>
    </div>
</body>
</html>
