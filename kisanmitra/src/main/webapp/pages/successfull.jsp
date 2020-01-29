<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Succesfull</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" 
        integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<link rel="stylesheet" href="/pages/successfull.css">
</head>
<body>
<pre>





</pre>
<center style="font-size:50px;">Thank You for Registration...</center>

<center style="font-size:60px;">Your UserName is 
<%=request.getAttribute("name") %></center>
<br>
  <center style="font-size:50px; color:green"> <b>Registration Successfull!!!</b></center>
<br>
	<center><a style="color:blue" href="/"><h1>Login here</h1></a></center>
</center>
</body>
</html>