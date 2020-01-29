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
 background: url(https://www.thebetterindia.com/wp-content/uploads/2016/05/9421742217_fe6f84e4fe_k-768x434.jpg) no-repeat;
  background-size: cover;
  height: 100vh;
}

h1 {
  text-align: center;
  font-family: Tahoma, Arial, sans-serif;
  color: #06D85F;
  margin: 80px 0;
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




a.one:link, a:visited {
  background-color: #f44336;
  color: white;
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

input[type=submit] {
    width: 20em;  height: 2em;
}

body {
  font-family: Arial;
  color: white;
}

.split {
 
  height: 70%;
  width: 50%;
  position: fixed;
  z-index: 1;
  top: 1;
  overflow-x: hidden;
  padding-top: 20px;
}

.left {
  left: 0;
  background-color: #111;
}

.right {
  right: 0;
  background-color: #111;
}

.centered {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  text-align: center;
}

.centered img {
  width: 150px;
  border-radius: 50%;



}

#txtbox {
    font-size: 20pt;
    height: 60px;
    width : 600px;
}


#btn{
  font-size: 25pt;
  height: 50px;
  width: 600px;
  color: darkgreen;
  background-color: aquamarine;
}

#select{
  font-size: 15pt;
  height: 60px;
  width: 600px;
}

.Abc{
  height: 150px;
}

.Bbc{
  height: 100px;
  margin-top: 70px;
}

.Ccc{
  height: 100px;
}

.Dcc{
  height: 100px;
}

</style>
</head>
<body>
<div class="row">
  <div class="column" align="left" >
    <a class ="one" href="farmerhomepage">Home</a>
   
  </div>
  <div align="center" style="height: 50px;" class="column" >
    <form action="addproduct" method="post">
       <h2> Add Product : </h2>
      
   
  </div>
  <div class="column" align="right">
    <a class ="one" href="signout">Logout</a>
   
  </div>

  
<pre>

</pre>

<div>
<form action="addproduct" method="post">
<div   class="Abc"><p align="center">

  <select name="productName" id="select">
    <option value=-1>Select Product </option>
    <option value=Wheat>Wheat </option>
    <option value=Potato>Potato </option>
    <option value=Tomato>Tomato</option>
    <option value=Banana>Banana</option>
    <option value=Onion>Onion</option>
    
    </select></p>

   

</div>
<div class="Bbc">
  <p align="center"><input type="text" name="quantity"  placeholder="Enter Quantity" id="txtbox" ></p>
  </div>


  
  <div class="Ccc">
    <p align="center"><input type="text" name="price" placeholder="Enter Price" id="txtbox" ></p>
    </div>


    

<div class="Dcc">
  <p align="center"><input type="submit" value="Add Product" id="btn"></p>
  
<input type="hidden" name="productJ" value="addproduct">

<br>
</form>
</div>

  </div>
     
</body>
</html>