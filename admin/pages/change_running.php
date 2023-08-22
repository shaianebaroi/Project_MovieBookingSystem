<?php
session_start();
include('../../config.php');

$mid=$_GET['mid'];
mysqli_query($con,"UPDATE movies SET status = 0 WHERE movie_id='$mid'");
 $_SESSION['success']="Movie Status Updated";
header("location:index.php");
?>