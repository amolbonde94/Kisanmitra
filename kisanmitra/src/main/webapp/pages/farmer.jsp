
<%@page import="java.util.List"%>

<%@page import="com.kisanmitra.dto.SavedItems"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
  
    
 
<%
List<SavedItems> list = (List<SavedItems>)request.getAttribute("list");
int i=1;
%>   
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Farmer Home Page</title>
</head>
<body>
   hello <%=session.getAttribute("UserName")%>
   <br>
   
   					<form action="productlist">
                        select product : 
					<select name="productName">
					<option value=-1>Select Product </option>
					<option value=Wheat>Wheat </option>
					<option value=Potato>Potato </option> 
					<option value=Tomato>Tomato</option>
					<option value=Banana>Banana</option>
					<option value=Onion>Onion</option> 
					
					</select><!-- <a href="productlist"> Show Top 10 Farmer List</a> -->
					<input type="submit" value="Show Top 10 Farmer">
					<input type="hidden" name="productJ" value="producName">
					<br>
					</form>
   
  
  
    
	<div class="row">
	<!-- 	<div class="row" style="height:80px">Farmer List</div> -->
		<div class="col-12 ">
			 	<div class="row ">
				<table class="table-sm table-bordered table-dark" >
					  <thead>
					  <% if(list!=null){%>
					    <tr>
					      <th scope="col">Product Name</th>
					      <th scope="col">Quantity</th>
					      <th scope="col">Price</th>          
					      <th scope="col">Data added</th> 
					    </tr>
					  </thead>
					  <% 
					 
					  for(SavedItems p : list){ %>
					    <tr>
					      <th scope="row"><%= i %></th>
					      <td><%= p.getProductName()%></td>
					      <td><%=p.getQuantity() %></td>
					     <td><%=p.getPrice() %></td>
					     <td><%=p.getDateAdded() %></td>
					      
					    </tr>
					    <%i=i+1;%>
					   <%} 
					 }
					   %>
					    
					  </tbody>
					</table>		
	 </div>
		
		</div>
		
   <a href="farmeraccountpage"> Account Page</a><br>
   <a href="stock"> Add Stock</a>
   
   <br>
  
  <a href="signout">Logout</a>
</body>
</html>