<?php
session_start();
error_reporting(0);
include('includes/dbconnection.php');

if(isset($_POST['submit']))
  {
    $username=$_POST['username'];
    $password=md5($_POST['password']);
	$emailid=$_POST['emailid'];
	$mobileno=$_POST['mobileno'];
     $ret=mysqli_query($con, "select ID from tbluser where Email='$emailid' || Mobile='$mobileno'");
    $result=mysqli_fetch_array($ret);
    if($result>0){
$msg="This email or Contact Number already associated with another account";
    }
    else{
		
			$query=mysqli_query($con,"INSERT INTO tbluser(Username, Password,Email,Mobile) VALUES('$username','$password','$emailid','$mobileno')");
    if ($query) {
    $msg="You have successfully registered";
	
  }
  else
    {
      $msg="Something Went Wrong. Please try again";
    }
}
  }
  ?>
<!DOCTYPE HTML>
<html>
<head>
<title>Theme Park Management System || Login Page</title>

<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
 <!-- Bootstrap Core CSS -->
<link href="css/bootstrap.min.css" rel='stylesheet' type='text/css' />
<!-- Custom CSS -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<link href="css/font-awesome.css" rel="stylesheet"> 
<!-- jQuery -->
<script src="js/jquery.min.js"></script>
<!----webfonts--->
<link href='http://fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900' rel='stylesheet' type='text/css'>
<!---//webfonts--->  
<!-- Bootstrap Core JavaScript -->
<script src="js/bootstrap.min.js"></script>
</head>
<body id="login">
  <div class="login-logo">
    <a href="index.php"><strong style="color: black">Theme Park Management System</strong></a>
  </div>
  <h2 class="form-heading">login</h2>
  <div class="app-cam">
	  <form method="post">
		<p style="font-size:16px; color:red" align="center"> <?php if($msg){
    echo $msg;
  }  ?> </p>
    <input type="text" class="text" name="username" placeholder="Username" required="true">
		<input type="password" name="password" class="text" placeholder="Password" required="true">
		<input type="text" class="text" name="emailid" placeholder="Email" required="true">
		<input type="text" class="text" name="mobileno" placeholder="Mobileno" required="true">
		<div class="submit"><input type="submit"  value="submit" name="submit"></div>
		
		<ul class="new">
      <li class="new_left"><p><a href="../index.html"><i class="fa fa-home"></i>Back to home
</a></p></li>
      </li>
    
		
	</form>
  </div>
   
</body>
</html>
