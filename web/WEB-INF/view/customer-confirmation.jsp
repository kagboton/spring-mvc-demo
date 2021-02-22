<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Kilian Agboton
  Date: 16/02/2021
  Time: 12:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Customer Confirmation page</title>
</head>
<body>

    The customer is : ${customer.firstname} ${customer.lastname}
    <br><br>
    Free passes : ${customer.freepasses}
    <br><br>
    Postal code : ${customer.postalCode}

    <br><br>
    Course code : ${customer.courseCode}
    <br><br>


</body>
</html>
