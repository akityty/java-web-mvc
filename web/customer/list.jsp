<%--
  Created by IntelliJ IDEA.
  User: konkon
  Date: 03/09/2019
  Time: 09:20
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>List Customer</title>
</head>
<body>
<h2>Customers</h2>
<p><a href="customers?action=create">Create new Customer</a></p>
<table border="2">
    <tr>
        <td>id</td>
        <td>name</td>
        <td>email</td>
        <td>address</td>
        <td>edit</td>
        <td>delete</td>
    </tr>
    <c:forEach items="${requestScope['customers']}" var="customer">
        <tr>
            <td><a href="customers?action=view&id=${customer.getId()}">${customer.getId()}</a></td>
            <td>${customer.getName()}</td>
            <td>${customer.getEmail()}</td>
            <td>${customer.getAddress()}</td>
            <td><a href="customers?action=edit&id=${customer.getId()}">edit</a></td>
            <td><a href="customers?action=delete&id=${customer.getId()}">delete</a></td>
        </tr>
    </c:forEach>

</table>
</body>
</html>
