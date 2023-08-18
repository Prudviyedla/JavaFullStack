<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Register</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 0;
        }
        
        .register-container {
            max-width: 400px;
            margin: 0 auto;
            padding: 20px;
            background-color: #ffffff;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            border-radius: 5px;
        }
        
        .register-title {
            text-align: center;
            margin-bottom: 20px;
            color: #333333;
        }
        
        .form-label {
            display: block;
            margin-bottom: 5px;
            color: #555555;
        }
        
        .form-input {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 3px;
        }
        
        .form-input[type="submit"] {
            background-color: #007bff;
            color: #ffffff;
            border: none;
            cursor: pointer;
        }
        
        .form-input[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="register-container">
        <h1 class="register-title">Register</h1>
        <form action="/register" method="post">
            <label for="username" class="form-label">Username:</label>
            <input type="text" id="username" name="username" class="form-input" required>
            
            <label for="password" class="form-label">Password:</label>
            <input type="password" id="password" name="password" class="form-input" required>
            
            <label for="number" class="form-label">Number:</label>
            <input type="text" id="number" name="number" class="form-input" required>
            
            <label for="emailId" class="form-label">Email ID:</label>
            <input type="email" id="emailId" name="emailId" class="form-input" required>
            
            <input type="hidden" id="dobString" name="dobString" value="<%= new java.text.SimpleDateFormat("yyyy-MM-dd").format(new java.util.Date()) %>" />
            
            <label for="dob" class="form-label">Date of Birth:</label>
            <input type="date" id="dob" name="dob" class="form-input" required>
            
            <input type="submit" value="Register" class="form-input">
        </form>
    </div>
</body>
</html>
