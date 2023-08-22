<?php
session_start();
include('../../config.php');

$sid=$_GET['sid'];
mysqli_query($con,"DELETE FROM showtime WHERE showtime_id='$sid'");
 $_SESSION['success']="Movie Status Updated";
header("location:view_shows.php");
?>