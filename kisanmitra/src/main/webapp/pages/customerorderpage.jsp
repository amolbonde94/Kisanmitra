<%@page import="com.kisanmitra.dto.CurrentStock"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%
    CurrentStock obj = (CurrentStock)request.getAttribute("bill");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="align-content: center;">
           <h2> Order successful.....</h2>  
              
               <form action="bill" method="post">
               <%
               if(obj!=null){
               %>     
               
        <br>
             	
             	
             	
  <table>
  <tr>
    <th>Product</th>
    <th> Buy From</th>
    <th>Price</th>
     <th>Quantity</th>
      <th>Total </th>
  </tr>
  <tr>
    <td><%=obj.getProductName() %></td>
    <td><%=obj.getFirstName()+"  "+obj.getLastName() %></td>
    <td><%=obj.getPrice() %></td>
     <td><%=obj.getCustomerQuantity() %></td>
      <td><%=obj.getPrice()*obj.getCustomerQuantity() %></td>
  </tr>
  
</table>
             	
             	
             	
          <br>   	
       
             	
              <%
               }
              %>
              </form>
              
              <input type="Button" onclick="printReciept()" value="Print Reciept" >
              
              
              
              <form action="customer" method="get">      
              
              <button type="submit" >  <h1>  Back  </h1>   </button>
              </form>
              
             
              
              <a href="signout">Logout</a>
     
 <script type="text/javascript">
 function printReciept() {
	  window.print();
	}
     
</script>
     
              
</body>
</html>