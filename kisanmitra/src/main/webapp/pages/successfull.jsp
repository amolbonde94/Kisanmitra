<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
Thank You for Registration...

<br>

Your UserName is 
<%=request.getAttribute("name") %>

<br>
   Registration Successfull
<br>
<a href="/">        Login here</a>
</body>
</html>