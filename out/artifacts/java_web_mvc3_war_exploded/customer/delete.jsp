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
    <title>Delete Customer</title>
</head>
<body>
<h1>Delete Customer</h1>
<c:if test="${requestScope['message'] != null}">
    <span style="color: green">${requestScope['message']}</span>
</c:if>
<p><a href="${pageContext.request.contextPath}/customers">back to customer list</a></p>
<form method="post">
    <fieldset>
        <legend>Customer Information</legend>
        <table>
            <tr><td>Id: </td>   <td><input type="text" name="id" id="id" value="${requestScope['customer'].getId()}"></td></tr>
            <tr><td>name: </td>  <td><input type="text" name="name" id="name" value="${requestScope['customer'].getName()}"></td></tr>
            <tr><td>email: </td>  <td><input type="text" name="email" id="email" value="${requestScope['customer'].getEmail()}"></td></tr>
            <tr><td>address: </td>  <td><input type="text" name="address" id="address" value="${requestScope['customer'].getAddress()}"></td></tr>
            <tr><td><input type="submit" value="Delete Customer"></td></tr>
        </table>
    </fieldset>
</form>
</body>
</html>
