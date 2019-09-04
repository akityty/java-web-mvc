<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: konkon
  Date: 03/09/2019
  Time: 11:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create Customer</title>
</head>
<body>
<h1>Create new Customer</h1>
<p>
    <a href="${pageContext.request.contextPath}/customers">Back to List Customer</a>
</p>
<p>
    <c:if test="${requestScope['message']!=null}">
        <span style="color: green">${requestScope['message']}</span>
    </c:if>
</p>
<form method="post">
    <fieldset>
        <legend>Customer Information</legend>
        <table>
            <tr><td>Id: </td><td><input type="text" name="id" id="id"></td></tr>
            <tr><td>name: </td><td><input type="text" name="name" id="name"></td></tr>
            <tr><td>email: </td><td><input type="text" name="email" id="email"></td></tr>
            <tr><td>address: </td><td><input type="text" name="address" id="address"></td></tr>
            <tr><td><input type="submit" value="Create Customer"></td></tr>
        </table>
    </fieldset>
</form>
</body>
</html>
