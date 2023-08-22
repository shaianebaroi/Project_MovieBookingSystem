<?php
include('../../config.php');
session_start();
$email = $_POST["Email"];
$pass = $_POST["Password"];
$qry=mysqli_query($con,"select * from user where email='$email' and pass='$pass' and type=0");
if(mysqli_num_rows($qry) !=0)
{
	$info=mysqli_fetch_array($qry);
	$_SESSION['admin']=$info['u_id'];
	header('location:index.php');

	
}
else
{
	$_SESSION['error']="Login Failed!";
	header("location:../index.php");
}
?>