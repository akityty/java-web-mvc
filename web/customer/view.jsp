<%--
  Created by IntelliJ IDEA.
  User: konkon
  Date: 03/09/2019
  Time: 08:28
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>View Customer</title>
</head>
<body>
<h1>View Customer</h1>
<p><a href="customers">Black to customer list</a></p>
<fieldset>
    <legend>Customer Information</legend>
    <table>
        <tr><td>Id: </td>   <td><input type="text" name="id" id="id" value="${requestScope['customer'].getId()}"></td></tr>
        <tr><td>name: </td>  <td><input type="text" name="name" id="name" value="${requestScope['customer'].getName()}"></td></tr>
        <tr><td>email: </td>  <td><input type="text" name="email" id="email" value="${requestScope['customer'].getEmail()}"></td></tr>
        <tr><td><p><a href="customers">Black to customer list</a></p></td></tr>
    </table>
</fieldset>
</body>
</html>
