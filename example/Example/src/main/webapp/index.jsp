<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<h1><%= "Hello World!" %>
</h1>
<br/>
<a href="Submit">Hello Servlet</a>
<form action="example" method="post">
    <input type="text" name="data" />
    <input type="submit" value="Submit" />
</body>
</html>