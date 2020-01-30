
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
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>

html {
    overflow: hidden;
}

body {
  font-family: Arial, sans-serif;
 background:lightblue;
  background-size: cover;
  height: 100vh;
}

h1 {
  text-align: center;
  font-family: Tahoma, Arial, sans-serif;
  color: #06D85F;
  margin: 80px 0;
}

.box {
  width: 40%;
  margin: 0 auto;
  background: rgba(255,255,255,0.2);
  padding: 35px;
  border: 2px solid #fff;
  border-radius: 20px/50px;
  background-clip: padding-box;
  text-align: center;
  
}

.button {
  font-size: 1em;
  padding: 10px;
  color: #fff;
  border: 2px solid #06D85F;
  border-radius: 20px/50px;
  text-decoration: none;
  cursor: pointer;
  transition: all 0.3s ease-out;
}
.button:hover {
  background: #06D85F;
}

.overlay {
  position: fixed;
  top: 0;
  bottom: 0;
  left: 0;
  right: 0;
  background: rgba(0, 0, 0, 0.7);
  transition: opacity 500ms;
  visibility: hidden;
  opacity: 0;
}
.overlay:target {
  visibility: visible;
  opacity: 1;
}

.popup {
  margin: 70px auto;
  padding: 20px;
  background: #fff;
  border-radius: 5px;
  width: 30%;
  position: relative;
  transition: all 5s ease-in-out;
}

.popup h2 {
  margin-top: 0;
  color: #333;
  font-family: Tahoma, Arial, sans-serif;
}
.popup .close {
  position: absolute;
  top: 20px;
  right: 30px;
  transition: all 200ms;
  font-size: 30px;
  font-weight: bold;
  text-decoration: none;
  color: #333;
}
.popup .close:hover {
  color: #06D85F;
}
.popup .content {
  max-height: 30%;
  overflow: auto;
}

@media screen and (max-width: 700px){
  .box{
    width: 70%;
  }
  .popup{
    width: 70%;
  }
}

table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: #dddddd;
}


a.one:link, a:visited {
  background-color: #f44336;
  color: black;
  padding: 14px 25px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
}

a.one:hover, a:active {
  background-color: red;
}

.name{
color:White;
font-family: Tahoma, Arial, sans-serif;

}

* {
  box-sizing: border-box;
  
}

.column {
 
  float: left;
  width: 33.33%;
  padding: 10px;
  height: 100px; 
}


.row:after {
  content: "";
  display: table;
  clear: both;
}

h2 { 
  display: block;
  font-size: 3.0em;
  margin-top: 0.15em;
  margin-bottom: 0.83em;
  margin-left: 0;
  margin-right: 0;
  font-weight: bold;
  color:white;
  font-family:Impact, Charcoal, sans-serif;
}

h3 { 
  display: block;
  font-size: 1.5em;
  margin-top: 0.15em;
  margin-bottom: 0.83em;
  margin-left: 0;
  margin-right: 0;
  font-weight: bold;
  color:white;
}



</style>
</head>
<body>
<div class="row">
  <div class="column" align="left" >
    <h3 >Hello <%=session.getAttribute("UserName")%></h3>
    
  </div>
  <div align="center" class="column" >
    <h2>Kisan Mitra</h2>
    
  </div>
  <div class="column" align="right">
    <a class ="one" href="signout">Logout</a>
    
  </div>
</div>
<pre>



</pre>
<div class="box">
	<a class="button" href="#popup1">Top 10 Prices</a>
</div>

<div id="popup1" class="overlay">
	<div class="popup">
		<h2>Farmer List</h2>
		<form action="productlist">
                        select product : 
					<select name="productName">
					<option value=-1>Select Product </option>
					<option value=Wheat>Wheat </option>
					<option value=Potato>Potato </option> 
					<option value=Tomato>Tomato</option>
					<option value=Banana>Banana</option>
					<option value=Onion>Onion</option> 
				
					</select>
					
					<input type="submit" value="Show Top 10 Farmer">
					
					<input type="hidden" name="productJ" value="producName">
					<br>
					</form>
					<br>   
		<a class="close" href="#">&times;</a>
		<div class="content">
			<table class="table-sm table-bordered table-dark" >
					  <thead>
					  <% if(list!=null){%>
					    <tr>
					      <th scope="col">Sr No</th>
					      <th scope="col">Product Name</th>
					      <th scope="col">Quantity</th>
					      <th scope="col">Price</th>          
					      
					    </tr>
					  </thead>
					  <% 
					 
					  for(SavedItems p : list){ %>
					    <tr>
					      <th scope="row"><%= i %></th>
					      <td><%= p.getProductName()%></td>
					      <td><%=p.getQuantity() %></td>
					     <td><%=p.getPrice() %></td>
					     
					      
					    </tr>
					    <%i=i+1;%>
					   <%} 
					 }
					   %>
					    
					  </tbody>
					</table>
		</div>
	</div>
</div>

<br>


<div class="box">
	<a class="button" 
	href="farmeraccountpage">Account Information</a>
</div>




<br>


<div class="box">
	<a class="button" href="stock">Add Stock</a>
</div>


</center>



<script type = "text/javascript">
   function preventBack(){window.history.forward();}
    setTimeout("preventBack()", 0);
    window.onunload=function(){null};
</script>
</body>
</html>
