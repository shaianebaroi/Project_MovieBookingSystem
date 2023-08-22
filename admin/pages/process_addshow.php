<?php
    session_start();
    include('../../config.php');
    extract($_POST);
    
    $show = mysqli_query($con,"Select shows_id from shows where start_time = '$stime'");
    $show_id = mysqli_fetch_array($show)[0];

    $t = mysqli_query($con,"Select category from movies where movie_id = '$movie'");
    $type = mysqli_fetch_array($t)[0];

    mysqli_query($con,"insert into  showtime values(NULL,'$sdate','$branch','$movie','$show_id','$type',100,100,'$hall')");
    
    $_SESSION['success']="Show Added";
    header('location:add_show.php');
    ?>
    