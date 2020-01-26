
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">

</head>


<body>

	<div class="container-fluid">
		<div class="row">
			<div class="col-3"></div>
			<div class="col-6">

				<form method="post" action="signup">
					
				<label for="exampleInputPassword1">First Name</label> 
				<input type="text" name="firstName" class="form-control" id="exampleInputPassword1" placeholder="Enter First Name" >
					
					
				<label for="exampleInputPassword1">Last Name</label> 
				<input type="text" name="lastName" class="form-control" id="exampleInputPassword1" placeholder="Enter Last Name">
					
					 
						<label for="exampleInputPassword1">User Name</label> 
						<input
							type="text" name="userId" class="form-control" id="exampleInputPassword1" placeholder="Enter Username">
					
					
					
				
					
						<label for="exampleInputPassword1">Password</label> 
						<input
							type="password" name="password" class="form-control" id="exampleInputPassword1" placeholder="Enter Password">
					
					
				
						<label for="exampleInputPassword1">Confirm Password</label> 
						<input
							type="password" name="cpassword" class="form-control" id="exampleInputPassword1" placeholder="Enter Confirm Password">
					
					
					
					
						<label for="exampleInputEmail1">Email address</label> <input
							type="email" name="emailId" class="form-control" id="exampleInputEmail1" placeholder="Enter Email Id"
							aria-describedby="emailHelp"> 
					
					
				
						<label for="exampleInputPassword1">Mobile</label> 
						<input
							type="text" name="phone" class="form-control" id="exampleInputPassword1" placeholder="Enter Mobile Number">
					
					
						<label for="exampleInputPassword1">Address</label> 
						<input
							type="text" name="address" class="form-control" id="exampleInputPassword1" placeholder="Enter Address">
					
					
					
					<select name="city">
					<option value=-1>Select City </option>
					<option value=mumbai>Mumbai </option>
					<option value=pune>Pune </option> 
					<option value=nashik>Nashik</option> 
					
					</select>
					
					
					
					
					<select name="roleId">
					<option value=-1>type </option>
					<option value=1>Farmer </option>
					<option value=2>Customer </option> 
					<option value=4>Farmer And Customer</option> 
					
					</select>
					
					
					<br>
					
					<button type="submit" class="btn btn-primary">Submit</button>
					<a href="/">        Login here</a>
				</form>
			</div>
		</div>
	</div>


</body>
</html>