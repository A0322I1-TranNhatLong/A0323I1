<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Title</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="bootstrap/css/bootstrap.css">
</head>
</head>
<body>
<h1 style="">Danh sách khách hàng</h1>
<table class="table">
    <thead>
    <tr>
        <th>Tên</th>
        <th>Ngày sinh</th>
        <th>Địa chỉ</th>
        <th>Ảnh</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${list}" var="customer">
        <tr>
            <td><c:out value="${customer.name}"/></td>
            <td><c:out value="${customer.dateOfBirth}"/></td>
            <td><c:out value="${customer.addreess}"/></td>
            <td>
                <img src="img/${customer.image}" width="50px">
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>