<?php
    session_start();
    require_once('../../config.php');
    extract($_POST);
    
    $target_dir = "../../posters/";
    $target_file = $target_dir . basename($_FILES["image"]["name"]);
    
    $flname="posters/".basename($_FILES["image"]["name"]);
    
    $date = substr($rdate,6)."-".substr($rdate,3,2)."-".substr($rdate,0,2);
    
    mysqli_query($con,"insert into  movies values(NULL,'$name','$cast','$plot','$genre','$category','$video','$lang','0','$rating','$flname','$dir','$date','$duration')");
    
    move_uploaded_file($_FILES["image"]["tmp_name"], $target_file);
    
    $_SESSION['success']="Movie Added";
    header('location:add_movie.php');
?>