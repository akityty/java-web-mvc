<%--
  Created by IntelliJ IDEA.
  User: konkon
  Date: 03/09/2019
  Time: 08:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Edit Customer</title>
</head>
<body>
<h1>Edit Customer</h1>
<p>
    <c:if test="${requestScope['message'] != null}">
        <span style="color: green">${requestScope['message']}</span>
    </c:if>
</p>
<p>
    <a href="${pageContext.request.contextPath}/customers">Back to list Customer</a>
</p>
<form method="post">
    <fieldset>
        <legend>Customer Information</legend>
        <table>
            <tr><td>name: </td><td><input type="text" id="name" name="name" value="${requestScope['customer'].getName()}"></td></tr>
            <tr><td>email: </td><td><input type="text" id="email" name="email" value="${requestScope['customer'].getEmail()}"></td></tr>
            <tr><td>address: </td><td><input type="text" id="address" name="address" value="${requestScope['customer'].getAddress()}"></td></tr>
            <tr><td><input type="submit"  value="Edit Customer"></td></tr>
        </table>
    </fieldset>
</form>
</body>
</html>
