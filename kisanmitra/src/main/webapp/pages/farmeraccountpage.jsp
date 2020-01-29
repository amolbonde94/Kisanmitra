   
    
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


</style>
</head>
<body>
<div class="row">
  <div class="column" align="left" >
    <a class ="one" href="farmerhomepage">Home</a>
    
  </div>
  <div align="center" class="column" >
    <h2>Account Details</h2>
    
  </div>
  <div class="column" align="right">
    <a class ="one" href="signout">Logout</a>
    
  </div>
</div>



<pre>

</pre>

<div class="split left">
  <div class="centered">
  <h1>Expected Earnings</h1>
    <img src="https://img.etimg.com/thumb/width-640,height-480,imgsize-186055,resizemode-1,msid-70740347/rupee-skids-29-paise-hits-over-6-month-low-of-71-43.jpg" alt="Avatar woman">
    <h2><%=request.getAttribute("sum").toString()%>/-</h2>
    
  </div>
</div>

<div class="split right">
  <div class="centered">
    <h1>Current Earning</h1>
    <img src="https://img.etimg.com/thumb/width-640,height-480,imgsize-186055,resizemode-1,msid-70740347/rupee-skids-29-paise-hits-over-6-month-low-of-71-43.jpg" alt="Avatar man">
    <h2><%=request.getAttribute("sum1").toString()%>/-</h2>
    
  </div>
</div>
     
</body>
</html>