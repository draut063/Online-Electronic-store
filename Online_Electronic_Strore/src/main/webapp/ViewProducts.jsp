<%@page import="java.util.Iterator"%>
<%@page import="com.OnlineEletronicStore.ProductBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.OnlineEletronicStore.AdminBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit</title>
<style>
    /* Global Styles */
    body {
        font-family: 'Arial', sans-serif;
        background-color: #f4f7fa;
        color: #333;
        margin: 0;
        padding: 0;
    }

    .container {
        width: 80%;
        margin: 50px auto;
        background-color: #fff;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
    }

    h3 {
        color: #4CAF50;
        font-size: 1.8em;
        margin-bottom: 20px;
    }

    .text-center {
        text-align: center;
    }

    .btn {
        display: inline-block;
        padding: 8px 15px;
        font-size: 14px;
        font-weight: 600;
        text-decoration: none;
        border-radius: 5px;
        transition: all 0.3s ease;
    }

    .btn-secondary {
        background-color: #6c757d;
        color: white;
    }

    .btn-warning {
        background-color: #ffbf00;
        color: white;
    }

    .btn-danger {
        background-color: #d9534f;
        color: white;
    }

    .btn:hover {
        opacity: 0.8;
    }

    .table {
        width: 100%;
        margin-top: 30px;
        border-collapse: collapse;
    }

    .table th,
    .table td {
        padding: 12px;
        text-align: left;
        border: 1px solid #ddd;
    }

    .table th {
        background-color: #343a40;
        color: white;
    }

    .table-striped tbody tr:nth-child(odd) {
        background-color: #f9f9f9;
    }

    .table-bordered {
        border: 2px solid #ddd;
        border-radius: 8px;
    }

    .table-dark {
        background-color: #343a40;
    }

    .text-danger {
        color: #e74c3c;
        font-size: 1.2em;
    }

    .logout-btn {
        margin-top: 20px;
    }

    /* Responsive Design */
    @media (max-width: 768px) {
        .container {
            width: 90%;
        }

        h3 {
            font-size: 1.5em;
        }

        .table th,
        .table td {
            font-size: 12px;
            padding: 8px;
        }

        .btn {
            font-size: 12px;
            padding: 6px 12px;
        }
    }
</style>
</head>
<body>
<div class="container">
    <h3 class="text-center">Product Details</h3>
    <div class="text-center">
        <%
            AdminBean abean = (AdminBean) session.getAttribute("abean");
            ArrayList<ProductBean> al = (ArrayList<ProductBean>) session.getAttribute("ProductsList");
        %>
        <p><strong>Hello, <%= abean.getaFname() %>!!! These are available product details:</strong></p>
        
        <% if (al == null || al.size() == 0) { %>
            <p class="text-danger">Products are NOT available!</p>
        <% } else { %>
            <table class="table table-bordered table-striped">
                <thead class="table-dark">
                    <tr>
                        <th>Code</th>
                        <th>Name</th>
                        <th>Company</th>
                        <th>Price</th>
                        <th>Quantity</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <% Iterator<ProductBean> i = al.iterator();
                    while (i.hasNext()) {
                        ProductBean pb = i.next(); %>
                        <tr>
                            <td><%= pb.getpCode() %></td>
                            <td><%= pb.getpName() %></td>
                            <td><%= pb.getpCompany() %></td>
                            <td><%= pb.getpPrice() %></td>
                            <td><%= pb.getpQuantity() %></td>
                            <td>
                                <a href='edit?pcode=<%= pb.getpCode() %>' class="btn btn-warning btn-sm">Edit</a>
                                <a href='delete?pcode=<%= pb.getpCode() %>' class="btn btn-danger btn-sm">Delete</a>
                            </td>
                        </tr>
                    <% } %>
                </tbody>
            </table>
        <% } %>
        
        <a href="logout" class="btn btn-secondary logout-btn">Logout</a>
    </div>
</div>
</body>
</html>
