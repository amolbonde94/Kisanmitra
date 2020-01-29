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

				<form method="post" action="forget"  onsubmit="return validation()">
                        <div class="form-group,input-group">
                                <h2 class="text-center">Forgotten Password?</h2>
                                <p>You can reset your password here...</p>
                </div>
                  
				   <div class="form-group">       
				    <label for="exampleInputPassword1">UserName</label>
				    <input type="text" name="userId" class="form-control" id="uId" autocomplete="off">
				 	<span id="uname" class="text-danger font-weight-bold"></span>
				  </div>
				 
				  <div class="form-group">
				    <label for="exampleInputPassword1">Password</label>
				    <input type="password" name="password" class="form-control" id="upass" autocomplete="off">
                  <span id="pwd" class="text-danger font-weight-bold"></span>
                  </div>
                  
                  <div class="form-group">
				    <label for="cpass">Confirm Password</label>
				    <input type="password" name="cpassword" class="form-control" id="cpass" autocomplete="off">
				  <span id="cpwd" class="text-danger font-weight-bold"></span>
				  </div>
				 
				  <button type="submit" class="btn btn-primary">Reset</button>
				  <a href="/">Back</a><br>
				</form>
		</div>
		<div class="col-3"></div>
	</div>
	</div>
	
	 
  <script>
    function validation(){
        var unames=document.getElementById('uId').value;
        var pass=document.getElementById('upass').value;
        var cpass=document.getElementById('cpass').value;
 
        if(unames==""){
            document.getElementById('uname').innerHTML ="*Required";
            return false;
        }   
        if(pass==""){
            document.getElementById('pwd').innerHTML ="*Required";
            return false;
        }
        if(pass.length<=5 || pass.length>=20){
            document.getElementById('pwd').innerHTML ="*password must be between 5 and 20";
            return false;
        }
        if(pass!=cpass){
            document.getElementById('cpwd').innerHTML ="*Required password is not matching";
            return false;
        }
        if(cpass==""){
            document.getElementById('cpwd').innerHTML ="*Required";
            return false;
        }

    }
</script>
	
	
	
</body>
</html>