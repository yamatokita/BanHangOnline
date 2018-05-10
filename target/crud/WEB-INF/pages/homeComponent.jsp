<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Product Management Screen</title>
</head>
<body>
    <div align="center">
        <h1>Product List</h1>
        <h3>
            <a href="newProduct">New Product</a>
        </h3>
        <table border="1">
 
            <th>Product Code</th>
            <th>Product Name</th>
            <th>Price</th>
            <th>Product Detail</th>
            <th>Action</th>
 
            <c:forEach var="product" items="${listProduct}">
                <tr> 
                    <td>${product.productCode}</td>
                    <td>${product.productName}</td>
                    <td>${product.price}</td>
                    <td>${product.productDetail}</td>
                    <td>
	                    <a href="editProduct?productid=${product.productId}">Edit</a>
	                    <a href="deleteProduct?productid=${product.productId}">Delete</a>
                    </td>
 
                </tr>
            </c:forEach>
        </table>
    </div>
</body>
</html>