<!DOCTYPE html>
<html>
<head>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</head>
<body>
    <div class="container-fluid " >
        <div class="row sticky-top">
            <div class="col-12  bg-secondary  text-white sticky-top" style="height: 60px; display: grid; justify-content: center; font-size: 30px; " >
              KisanMitra 
            </div>
          </div>
    <h2 class="text-success text-center">Registration Page</h2><br>
        <div class="col-lg-5 m-auto d-block">
            <form action="signup" onsubmit="return validation()" method="post"  class="bg-light">
               
           <div class="form-group">
                    <label>First Name:</label>
                    <input type="text" name="firstName" class="form-control" id="firstName" autocomplete="off">
                    <span id="fname" class="text-danger font-weight-bold"></span>
                </div>

                <div class="form-group">
                    <label>Last Name:</label>
                    <input type="text" name="lastName" class="form-control" id="lastName" autocomplete="off">
                    <span id="lname" class="text-danger font-weight-bold"></span>
                </div>
                

                <div class="form-group">
                    <label>UserName:</label>
                    <input type="text" name="userId" class="form-control" id="user" autocomplete="off">
                    <span id="uId" class="text-danger font-weight-bold"></span>
                </div>

                <div class="form-group">
                    <label>Password:</label>
                    <input type="password" name="password" class="form-control" id="pass" autocomplete="off">
                    <span id="pwd" class="text-danger font-weight-bold"></span>
                </div>

                <div class="form-group">
                    <label>Confirm Password:</label>
                    <input type="password" name="cpassword" class="form-control" id="cpass" autocomplete="off">
                    <span id="confirmpass" class="text-danger font-weight-bold"></span>
                </div>

                <div class="form-group">
                    <label>Address:</label>
                    <input type="text" name="address" class="form-control" id="address" autocomplete="off">
                    <span id="addr" class="text-danger font-weight-bold"></span>
                </div>

                <div class="form-group">
                    <label>Mobile no:</label>
                    <input type="number" name="phone" class="form-control" id="mobile" autocomplete="off">
                    <span id="mobiles" class="text-danger font-weight-bold"></span>
                </div>

                <div class="form-group">
                    <label>Email:</label>
                    <input type="email" name="emailId" class="form-control" id="email" autocomplete="off">
                    <span id="emails" class="text-danger font-weight-bold"></span>
                </div>
                
                <div class="form-group">
                    <label>UserType:</label>
                  
                    <select class="text-center" name="roleId" id="usertype"> 
                        <option value="">Select Type of user</option>
                        <option value="1">Farmer</option>
                        <option value="2">Customer</option>
                 
                        <option value="4">Farmer and Customer</option>
                      </select>
                      <span id="usertypes" class="text-danger font-weight-bold"></span>

                      <label>Select City:</label>

                      <select class="text-center" name="cityId" id="city"> 
                        <option value="">Select City </option>
                        <option value="101">Mumbai </option>
                        <option value="102">Pune </option> 
                        <option value="103">Nashik</option>                   
                      </select>
                      <span id="citys" class="text-danger font-weight-bold"></span>
                </div>

                <input type="submit" name="submit" value="Register" class="btn btn-success" autocomplete="off">
 				<a href="/" style="color:red;font-size:20px">Login Here?</a><br>

            </form>

        </div>

    </div>

<script>
    function validation(){
        var firstName=document.getElementById('firstName').value;
        var lastName=document.getElementById('lastName').value;
        var user=document.getElementById('user').value;
        var pass=document.getElementById('pass').value;
        var cpass=document.getElementById('cpass').value;
        var mobile=document.getElementById('mobile').value;
        var address=document.getElementById('address').value;
        var utype=document.getElementById('usertype').value;
        var ucity=document.getElementById('city').value

        if(firstName==""){
            document.getElementById('fname').innerHTML ="*Required";
            return false;
        }
        if(!isNaN(firstName)){
            document.getElementById('fname').innerHTML ="*only characters are allowed";
            return false;
        }

        if(lastName==""){
            document.getElementById('lname').innerHTML ="*Required";
            return false;
        }
        if(!isNaN(lastName)){
            document.getElementById('lname').innerHTML ="*only characters are allowed";
            return false;
        }

        if(user==""){
            document.getElementById('uId').innerHTML ="*Required";
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
            document.getElementById('confirmpass').innerHTML ="*password not matching";
            return false;
        }

        if(cpass==""){
            document.getElementById('confirmpass').innerHTML ="*Required";
            return false;
        }
        
        if(address==""){
            document.getElementById('addr').innerHTML ="*Required";
            return false;
        }

        if(mobile==""){
            document.getElementById('mobiles').innerHTML ="*Required";
            return false;
        }
        if(isNaN(mobile)){
            document.getElementById('mobiles').innerHTML ="*must be digits only";
            return false;
        }

        if(mobile.length!=10){
            document.getElementById('mobiles').innerHTML ="*only 10 digit number";
            return false;
        }
        if(utype==""){
            document.getElementById('usertypes').innerHTML ="*Please select the type of user";
            return false;
        }

        if(ucity==""){
            document.getElementById('cityssss').innerHTML ="*Please select the city";
            return false;
        }
      

    }
</script>

</body>
</html>
