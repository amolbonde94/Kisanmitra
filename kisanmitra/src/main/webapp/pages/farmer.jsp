
<%@page import="java.util.List"%>
<%@page import="com.kisanmitra.dto.User"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
  
    
 
<%
List<User> list = (List<User>)request.getAttribute("list");
int i=1;
%>   
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Farmer Home Page</title>
</head>
<body>
   hello farmer
   
   <a href="farmerlist">Farmer List</a><br>
   <a href="signout">Logout</a>
   
    
	<div class="row">
		<div class="row" style="height:80px">Farmer List</div>
		<div class="col-12 ">
			 	<div class="row ">
				<table class="table-sm table-bordered table-dark" >
					  <thead>
					    <tr>
					      <th scope="col">No.</th>
					      <th scope="col">Name</th>
					      <th scope="col">City</th>
					      
					    </tr>
					  </thead>
					  <% 
					 if(list!=null){
					  for(User p : list){ %>
					    <tr>
					      <th scope="row"><%= i %></th>
					      <td><%= p.getUserId()%></td>
					      <td><%=p.getCity() %></td>
					     
					      
					    </tr>
					    <%i=i+1;%>
					   <%} 
					 }
					   %>
					    
					  </tbody>
					</table>		
	 </div>
		
		</div>
   
   
  
</body>
</html>