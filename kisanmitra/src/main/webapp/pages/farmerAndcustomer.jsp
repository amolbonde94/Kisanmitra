   
    
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
 background: lightblue;
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
  background-color: white;
}

.right {
  right: 0;
  background-color: white;
}

.centered {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  text-align: center;
}

.centered img {
  width: 300px;
  border-radius: 50%;
}
.button {
  background-color: #4CAF50; /* Green */
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
}

</style>
</head>
<body>
<div class="row">
  <div class="column" align="left" >
    <a class ="one" href="signout">Home</a>
    
  </div>
  <div align="center" class="column" >
    <h2>Kisan Mitra</h2>
    
  </div>
  <div class="column" align="right">
    <a class ="one" href="signout">Logout</a>
    
  </div>
</div>

<center>

 <a href="farmerhomepage"><h1>Farmer</h1></a><br>
 <a href="customerhomepage"><h1>Customer </h1></a>
</center>
    
     
     
</body>
</html>