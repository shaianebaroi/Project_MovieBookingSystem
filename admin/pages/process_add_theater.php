<?php
	session_start();
    require_once('../../config.php');
    extract($_POST);
    mysqli_query($con,"insert into branch values('$name','$city','$street','$email','$phone')");

    $_SESSION['success']="Theatre Added";
    header('location:add_theatre.php');
?>