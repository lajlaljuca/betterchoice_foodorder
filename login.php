<!DOCTYPE html>
<html lang="en" >

<head>
  <meta charset="UTF-8">
  <title>Login</title>
  
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">

  <link rel='stylesheet prefetch' href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900|RobotoDraft:400,100,300,500,700,900'>
<link rel='stylesheet prefetch' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css'>

      
	  <link rel="stylesheet" href="css/login.css">

	  <style type="text/css">
	  #buttn{
		  color:#050606;
		  background-color: #ff9500;
		  display: inline-block;
  		  padding: 10px 20px;
		  font-size: 15px;
		  cursor: pointer;
		  text-align: center;
		  text-decoration: none;
		  outline: none;
		  color: #fff;
		  background-color: #4CAF50;
		  border: none;
		  border-radius: 15px;
		  box-shadow: 0 9px #999;
			  }
	  </style>
  
</head>

<body>
	<style>
body {
          background-image: url('https://static.vecteezy.com/system/resources/previews/001/885/070/large_2x/top-view-of-tomatoes-on-right-side-and-wooden-background-with-copy-space-free-photo.jpg');
          background-repeat: no-repeat;
          background-attachment: fixed;
          background-size: 100% 100%;
        }

    </style>
<?php
include("connection/connect.php"); //INCLUDE CONNECTION
error_reporting(0); // hide undefine index errors
session_start(); // temp sessions
if(isset($_POST['submit']))   // if button is submit
{
	$username = $_POST['username'];  //fetch records from login form
	$password = $_POST['password'];
	
	if(!empty($_POST["submit"]))   // if records were not empty
     {
	$loginquery ="SELECT * FROM users WHERE username='$username' && password='".md5($password)."'"; //selecting matching records
	$result=mysqli_query($db, $loginquery); //executing
	$row=mysqli_fetch_array($result);
	
	                        if(is_array($row))  // if matching records in the array & if everything is right
								{
                                    	$_SESSION["user_id"] = $row['u_id']; // put user id into temp session
										 header("refresh:1;url=index.php"); // redirect to index.php page
	                            } 
							else
							    {
                                      	$message = "Invalid Username or Password!"; // throw error
                                }
	 }
	
	
}
?>
  
<!-- Form Mixin-->
<!-- Input Mixin-->
<!-- Button Mixin-->
<!-- Pen Title-->
<div class="pen-title">

  <h1 style="color:black;text-align:left;padding-left:170px;">Hi Guest</h1>

 
</div>
<!-- Form Module-->
<div class="module form-module">
  <div class="toggle">
   
  </div>
  <div class="form">
    <h2 style="color:black;font-size:20px;padding-left:240px;">Login</h2><br><br>
	<span style="color:#ff9500;"><?php echo $message; ?></span> 
   <span style="color:green;"><?php echo $success; ?></span>
    <form action="" method="post">
   	  <label style="color:black;font-size:15px;" for="exampleInputName">User name</label>
      <input type="text" placeholder="Username"  name="username"/>
      <label style="color:black;font-size:15px;"for="exampleInputName">Password</label>
      <input type="password" placeholder="Password" name="password"/>
      <input type="submit" id="buttn" name="submit" value="LOGIN" />
    </form>
  </div>
  <br>
  <br>
  <div style="color:black;padding-left:160px;"class="cta">Not registered?<a href="registration.php" style="color:#ff9500"> Create an account</a></div>
</div>
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
 

  

   



</body>

</html>
