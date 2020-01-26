<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
    Add Stock
   
   <form action="addproduct">
                       Add Product :
					<select name="productName">
					<option value=-1>Select City </option>
					<option value=Wheat>Wheat </option>
					<option value=Potato>Potato </option> 
					<option value=Tomato>Tomato</option>
					<option value=Banana>Banana</option>
					<option value=Onion>Onion</option> 
					
					</select>
					
					<input
							type="text" name="userId" id="exampleInputPassword1" >
					
					
					
					<input type="submit" value="Add Product">
					<input type="hidden" name="productJ" value="addproduct">
					<br>
					</form>
   
   <a href="farmerhomepage"> Farmer Home</a>
   <a href="signout"> Sign Out</a>
   
   
   
</body>
</html>