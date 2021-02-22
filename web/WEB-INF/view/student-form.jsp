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
    <title>Student Form</title>
</head>
<body>
    <form:form action="processStudentForm" modelAttribute="student">
        Firstname : <form:input path="firstname"/>
        <br><br>
        Lastname : <form:input path="lastname" />
        <br><br>

        Country :
        <%--<form:select path="country">
            <form:option value="Benin" label="Benin"/>
            <form:option value="Togo" label="Togo"/>
            <form:option value="Senegal" label="Senegal"/>
            <form:option value="Nigeria" label="Nigeria"/>
        </form:select>--%>
        <%-- Dropdown using values fron countries.propertie file that are passed to controler via @Value --%>
        <form:select path="country">
            <form:options items="${theCountryOptions}"/>
        </form:select>

        <br><br>

        Favorite language :
        <%--Java <form:radiobutton path="favouriteLanguage" value="Java"/>
        Python <form:radiobutton path="favouriteLanguage" value="Python"/>
        C# <form:radiobutton path="favouriteLanguage" value="C#"/>--%>
        <%-- Radio buttons populated by values present in student object via the getFavouriteLanguageOptions method --%>
        <form:radiobuttons path="favouriteLanguage" items="${student.favouriteLanguageOptions}" />

        <br><br>

        Prefered IDE:
        IntelliJ <form:checkbox path="preferedIDEs" value="IntelliJ"/>
        Eclipse <form:checkbox path="preferedIDEs" value="Eclipse"/>
        Visual Code <form:checkbox path="preferedIDEs" value="Visual Code"/>
        Sublim Text <form:checkbox path="preferedIDEs" value="Sublim Text"/>

        <br><br>
        <input type="submit" value="Submit"/>
    </form:form>
</body>
</html>
