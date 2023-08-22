<?php
session_start();
require_once('config.php');

$rid=$_GET['rid'];
$uid = $_SESSION['user'];
$d = mysqli_query($con,"SELECT description,points from coupon where coupon_id = '$rid'");
$de = mysqli_fetch_array($d);
$desc = $de[0];
$p = $de[1];
mysqli_query($con,"INSERT INTO  redeem VALUES(NULL,'$uid','$desc')");
mysqli_query($con,"UPDATE user SET points = points-'$p' where u_id = '$uid'");
 $_SESSION['success']="Coupon Redeemed";
header("location:profile.php");
?>