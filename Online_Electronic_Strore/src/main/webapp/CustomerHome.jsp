<%@page import="com.CustomerLogin.CustomerBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome</title>
<style>
    @import url('https://fonts.googleapis.com/css2?family=Space+Grotesk:wght@300;400;600&display=swap');

    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
    }

    body {
        font-family: "Space Grotesk", sans-serif;
        background: #E8F5E9 url('./welcome.jpg') no-repeat center center/cover;
        text-align: center;
        height: 100vh;
        display: flex;
        align-items: center;
        justify-content: center;
        backdrop-filter: blur(5px);
    }

    .container {
        background: rgba(255, 255, 255, 0.95);
        width: 320px;
        padding: 25px;
        border-radius: 12px;
        box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
        text-align: center;
    }

    h1 {
        color: #2E7D32;
        font-size: 24px;
        font-weight: 600;
        margin-bottom: 15px;
    }

    a {
        display: inline-block;
        text-decoration: none;
        color: white;
        background-color: #66BB6A; /* Light Green */
        padding: 12px 20px;
        border-radius: 6px;
        transition: 0.3s ease-in-out;
        font-size: 16px;
        font-weight: bold;
        margin: 10px;
    }

    a:hover {
        background-color: #81C784; /* Softer Green */
    }

    .logout {
        background-color: #ff6f61; /* Soft Red */
    }

    .logout:hover {
        background-color: #e53935;
    }
</style>
</head>
<body>
    <div class="container">
        <h1>
            <%
                CustomerBean cb = (CustomerBean) session.getAttribute("cbean"); 
                if (cb != null) {
                    out.println("Welcome, " + cb.getcFname() + "!");
                } else {
                    out.println("Welcome, Guest!");
                }
            %>
        </h1>
        <br>
        <a href="view2">View Products</a>
        <br><br>
        <a href="logout" class="logout">Logout</a>
    </div>
</body>
</html>
