<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<?php
session_start();
if(!isset($_SESSION['user']))
{
	header('location:login.php');
}
include('config.php');
extract($_POST);

//OTP Code
if($otp=="123456")
{
    //$bookid="BKID".rand(1000000,9999999);

    $sql = "UPDATE user SET membership = 1 WHERE u_id = '".$_SESSION['user']."'";

    //mysqli_query($con,"INSERT into booking values(NULL,'$bookid','".$_SESSION['theatre']."','".$_SESSION['user']."','".$_SESSION['show']."','".$_SESSION['screen']."','".$_SESSION['seats']."','".$_SESSION['amount']."','".$_SESSION['date']."',CURDATE(),'1')");
    mysqli_query($con,$sql);
    $_SESSION['success']="Membership Registration Successfull!";
}
else
{
    $_SESSION['error']="Membership Registration Failed";

}
?>
<body><table align='center'><tr><td><STRONG>Membership is being processed,</STRONG></td></tr><tr><td><font color='blue'>Please Wait <i class="fa fa-spinner fa-pulse fa-fw"></i>
<span class="sr-only"></font></td></tr><tr><td>(Do not 'RELOAD' this page or 'CLOSE' this page)</td></tr></table><h2>
<script>
    setTimeout(function(){ window.location="profile.php"; }, 3000);
</script>