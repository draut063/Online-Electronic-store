<%@ page import="com.OnlineEletronicStore.AdminBean" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Dashboard</title>
<style>
    /* Reset default margin and padding */
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        font-family: Arial, sans-serif;
    }

    body {
        background: url('./wlcadmin.jpg') no-repeat center center/cover;
        height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .container {
        background-color: rgba(255, 255, 255, 0.9); /* Light background with transparency */
        padding: 30px;
        width: 400px;
        text-align: center;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
    }

    h1 {
        color: #333;
        margin-bottom: 20px;
    }

    .btn {
        display: block;
        text-decoration: none;
        font-size: 18px;
        color: white;
        background: #007bff;
        padding: 12px;
        margin: 10px 0;
        border-radius: 8px;
        transition: background 0.3s ease;
    }

    .btn:hover {
        background: #0056b3;
    }

    /* Responsive Design */
    @media (max-width: 500px) {
        .container {
            width: 90%;
            padding: 20px;
        }
    }
</style>
</head>
<body>
    <div class="container">
        <h1>
            <% 
                AdminBean abean = (AdminBean) session.getAttribute("abean");
                if (abean != null) {
                    out.println("Welcome, Mr. " + abean.getaFname() + "!");
                } else {
                    out.println("Welcome, Admin!");
                }
            %>
        </h1>
        <a href="Addproduct.html" class="btn">Add Product</a>
        <a href="view1" class="btn">View Product</a>
        <a href="logout" class="btn">Logout</a>
    </div>
</body>
</html>
