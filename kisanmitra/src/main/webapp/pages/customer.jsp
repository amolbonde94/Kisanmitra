
<%@page import="java.util.List"%>

<%@page import="com.kisanmitra.dto.Product"%>
<%@page import="com.kisanmitra.dto.CurrentStock"%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
	@SuppressWarnings("checked")
	List<Product> list = (List<Product>) request.getAttribute("productList");
	List<CurrentStock> stockList = (List<CurrentStock>) request.getAttribute("farmerOrderList");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Page</title>
</head>
<body>
	hello
	<%=session.getAttribute("UserName")%>
	<br>
	<br>

	<form action="displayFarmerList">
		<select name="productId">
			<option value=-1>Select products</option>
			<%
				if (list != null) { //mandatory
					for (Product p : list) {
			%>
			<option value=<%=p.getProductId()%>><%=p.getProductName()%></option>
			<%
				}
				}
			%>
		</select> <input type="submit" value="submit">

	</form>

	<br>
	<br>

	<%
		if (stockList != null) {
			for (CurrentStock c : stockList) {
	%>
	<div style="background-color: blue;">
		<form action="buy" method="post">
		<div>
			<input type="text" hidden="true" value="<%=c.getFarmerUserId()%>" name="farmerUserId"> 
			<input type="text" readonly="readonly" value="<%=c.getFirstName()%>" name="firstName"> 
			<input type="text" readonly="readonly" value="<%=c.getLastName()%>" name="lastName"> 
			<input type="text" readonly="readonly" value="<%=c.getPhone()%>" name="phone"> 
			<input type="text" readonly="readonly" value="<%=c.getProductName()%>" name="productName"> 
			<input type="text" readonly="readonly" value="<%=c.getQuantity()%>" name="quantity"> 
			<input type="text" readonly="readonly" value="<%=c.getPrice()%>" name="price"> 
			
		</div>
				<div>
					<input type="number" name="customerQuantity">
				</div>
				<div>
					<input type="hidden" name="phone" value=<%=c.getPhone()%>>
					<input type="submit" value="buy">
				</div>
			</form>
		</div>
	<%
		}
		}
	%>

	<a href="signout">Logout</a>
</body>
</html>
