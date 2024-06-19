<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Sign In Page</title>
    <style>
        body {
            font-family: Arial, Helvetica, sans-serif;
            background-image: url("picture/popcorn.jpg");
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-size: cover;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 120vh;
        }
        .signin-form {
            width: 300px;
            padding: 50px;
            background-color: rgba(79, 74, 74, 0.5); 
            box-shadow: #D3D3D3;
            border-radius: 10px;
            color: white; 
        }
        .signin-form input[type="text"],
        .signin-form input[type="password"] {
            width: 100%;
            padding: 12px;
            margin-bottom: 10px;
            margin-top: 10px;
            border-radius: 5px;
            border: 1px solid #ddd;
        }
        .signin-form button {
            width: 100%;
            padding: 10px;
            background-color: black;
            color: #ffffff;
            border: none;
            border-radius: 5px;
        }
    </style>
</head>
<body>
    <div class="signin-form">
        <h2 style="text-align: center;"><span style="color: black;"> Welcome to TicketFlick</span></h2>
        <h3 style="text-align: center;">Sign In</h3>
        <form  action="Signin" method="post">
            <label for="username">Username:</label>
            <input type="text" id="username" name="username" placeholder="Username" required>
            <label for="password">Password:</label>
            <input type="password" name="password" id="password" placeholder="Password" required>
          
            <br>
            <button type="submit">Sign In</button>
            <p style="text-align: center;">Don't have an account? <a href="signup.jsp">Sign Up</a></p>
            
        </form>
    </div>
</body>
</html>
