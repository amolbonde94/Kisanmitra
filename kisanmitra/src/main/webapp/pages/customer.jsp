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
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
        integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
        crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
        integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
        crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
        integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
        crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
        integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
        crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <title>
            KisanMitra
        </title>
    </head>
<body>
<!-- new -->
<nav class="navbar navbar-dark bg-dark">
            <a class="navbar-brand" href="#">KisanMitra</a>
            <form class="form-inline my-2 my-lg-0">
                <i class="fa fa-power-off text-white mr-2"></i>
                <a class="text-white" href="signout">Logout</a>
              </form>
     </nav>
     
      <div class="mt-2">
           <h3 style="display: grid; align-content: center;justify-content: center;">Welcome
<%=session.getAttribute("UserName")%></h3>  
      </div>
     
<!-- new -->

<div class="container mt-4 bg-light p-3">
            <h6 class="text-uppercase">List of farmers</h6>
            <div class="row" class="mb-4">
                <div class="col-12 mt-4">
                    <label>Select Product</label>
                    <div class="input-group mb-3">
                        <form action="displayFarmerList">
<select name="productId" class="form-control">
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
</select>
       
         <div class="input-group-append">
             <button class="btn btn-primary" type="submit">Submit</button>
         </div>
   </form>
    </div>
</div></div>
            <hr>
           
           <!-- new -->
<%
if (stockList != null) {
for (CurrentStock c : stockList) {
%>
<form action="buy" method="post">
            <div class="row">
                <div class="col-6">
                    <div class="card mb-3">
                        <div class="card-body">
                          <label class="card-text">First Name:<input type="text" readonly="readonly" value="<%=c.getFirstName()%>" name="firstName" class="form-control"></label><br>
                          <input type="text" hidden="true" value="<%=c.getFarmerUserId()%>" name="farmerUserId">
                          <label class="card-text">Last Name:<input type="text" readonly="readonly" value="<%=c.getLastName()%>" name="lastName" class="form-control"></label><br>
                          <label class="card-text">Phone:<input type="text" readonly="readonly" value="<%=c.getPhone()%>" name="phone" class="form-control"> </label><br>
                          <label class="card-text">Product Name:<input type="text" readonly="readonly" value="<%=c.getProductName()%>" name="productName" class="form-control"></label><br>
                          <label class="card-text">Quantity:<input type="text" readonly="readonly" value="<%=c.getQuantity()%>" name="quantity" class="form-control"></label><br>
                          <label class="card-text">Price:<input type="text" readonly="readonly" value="<%=c.getPrice()%>" name="price" class="form-control"></label><br>
                          </div>
                      </div>
                </div>
                <div class="col-6">
                    <label>Enter Quantity (Kg):<input type="number" name="customerQuantity"></label>
                    <input type="hidden" name="phone" value=<%=c.getPhone()%>><br>
                    <button class="btn btn-outline-primary mt-2" type="submit">BUY</button>
                </div>
            </div>
    </form>
    <hr>
   
    <%
}
}
%>
</div>
</body>
</html>
