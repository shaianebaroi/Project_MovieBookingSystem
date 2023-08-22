<?php

    require_once("config.php");

    if(isset($_POST['u_name']) && isset($_POST['age']) && isset($_POST['gender']) && isset($_POST['phone']) && isset($_POST['email']) && isset($_POST['password'])){

    	$u = $_POST['u_name'];
    	$a = $_POST['age'];
    	$g = $_POST['gender'];
        $pas = $_POST['password'];
    	$p = $_POST['phone'];
    	$e = $_POST['email'];
        $m = 0;
        $type = 1;
    
    	$sql = "SELECT* FROM user WHERE u_name = '$u'";


		$result = mysqli_query($con,$sql);

		//check if it returns an empy set
		if(mysqli_num_rows($result) != 0){
		//echo "\nUsername already taken";
			$_SESSION['error']="Username Taken!";
			header("location:login.php");
		}
		else{

    		$sql = "INSERT INTO user values(NULL,'$u','$pas','$e','$a','$p','$g','$m','$type',0)";

    		$result = mysqli_query($con,$sql);

    		if(mysqli_affected_rows($con)){
    			header('location:index.php');

    		}	
    		else{
    			echo "Failed";
    		}
    	}
    }
?>