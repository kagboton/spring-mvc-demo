<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: Kilian Agboton
  Date: 16/02/2021
  Time: 12:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Customer Form</title>
    <style>
        .error {
            color: red;
        }
    </style>
</head>
<body>
    <form:form action="processForm" modelAttribute="customer">
        Firstname : <form:input path="firstname"/>
        <br><br>
        Lastname (*) : <form:input path="lastname" />
        <form:errors path="lastname" cssClass="error"/>
        <br><br>
        Freepasses : <form:input path="freepasses" />
        <form:errors path="freepasses" cssClass="error" />
        <br><br>
        Postal code : <form:input path="postalCode" />
        <form:errors path="postalCode" cssClass="error" />
        <br><br>
        Course code : <form:input path="courseCode" />
        <form:errors path="courseCode" cssClass="error" />
        <br><br>
        <input type="submit" value="Submit"/>
    </form:form>
</body>
</html>
