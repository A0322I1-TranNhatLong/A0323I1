<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<h1><%= "Product discount calculator" %>
</h1>
<hr>
<form method="post" action="product">
    <input name="description" type="text" placeholder="Product descriptions">
    <input name="price" type="number" placeholder="Listed Price">
    <input name="discountRate" type="number" placeholder="Discount Percent">
    <input type="submit" id="submit" value="Calculate!"/>
</form>
</body>
</html>