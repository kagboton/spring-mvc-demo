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
    <title>Student Confirmation page</title>
</head>
<body>

    The student is : ${student.firstname} ${student.lastname}

    <br><br>
    He/she comes from : ${student.country}

    <br><br>
    Favourite language from : ${student.favouriteLanguage}

    <br><br>
    Prefered IDEs:
    <ul>
        <c:forEach var="item" items="${student.preferedIDEs}">
            <li>${item}</li>
        </c:forEach>
    </ul>

</body>
</html>
