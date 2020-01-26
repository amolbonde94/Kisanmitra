<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" 
integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" 
crossorigin="anonymous">
</head>
<body>
	<div class="container">
        <div class="row" style="height:100px"></div>

		<div class="row" >
			<div class="col-3"></div>
			<div class="col-6 ">

				<form method="post" action="forget">
                        <div class="form-group,input-group">
                                <h2 class="text-center">Forgotten Password?</h2>
                                <p>You can reset your password here...</p>
                </div>
                  
				   <div class="form-group">       
				    <label for="exampleInputPassword1">UserName</label>
				    <input type="text" name="userId" class="form-control" id="exampleInputPassword1">
				  </div>
				  <div class="form-group">
				    <label for="exampleInputPassword1">Password</label>
				    <input type="password" name="password" class="form-control" id="exampleInputPassword1">
                  </div>
                  <div class="form-group">
				    <label for="exampleInputPassword1">Confirm Password</label>
				    <input type="password" name="confirmPassword" class="form-control" id="exampleInputPassword1">
				  </div>
				  <button type="submit" class="btn btn-primary">Reset</button>
				  <a href="/">Back</a><br>
				</form>
		</div>
		<div class="col-3"></div>
	</div>
	</div>
</body>
</html>