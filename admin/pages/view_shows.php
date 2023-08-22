<?php
include('header.php');
?>
  <!-- =============================================== -->

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        View Shows
      </h1>
      <ol class="breadcrumb">
        <li><a href="index.php"><i class="fa fa-home"></i> Home</a></li>
        <li class="active">View Shows</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <!-- Default box --> 
      <div class="box">
         <div class="box-header with-border">
              <h3 class="box-title">Available Shows</h3>
            </div>
        <div class="box-body">
          <?php include('../../msgbox.php');?>
          <?php
          $sw=mysqli_query($con,"select * from showtime");
          if(mysqli_num_rows($sw))
          {?>
            <table class="table">
              <th class="col-md-1">
                Sl.no
              </th>
              <th class="col-md-2">
                Movie
              </th>
              <th class="col-md-2">
                Theatre
              </th>
              <th class="col-md-3">
                Date
              </th>
              <th class="col-md-3">
                Show Time
              </th>
              <th class="col-md-3">
                Options
              </th>
              <?php
              while($shows=mysqli_fetch_array($sw))
              {
                ?>
                <tr>
                  <td>
                    <?php echo $shows[0];?>
                  </td>
                  <td>
                    <?php
                    $m = mysqli_query($con,"Select movie_name from movies where movie_id = $shows[3]");
                    $movie = mysqli_fetch_array($m)[0];
                    echo $movie;?>
                  </td>
                  <td>
                    <?php echo $shows[2];?>
                    
                  </td>
                  <td>
                    <?php echo $shows[1];?>
                  </td>
                  <td>
                    <?php
                    $s = mysqli_query($con,"Select start_time from shows where shows_id = $shows[4]");
                    $show = mysqli_fetch_array($s)[0];
                    echo $show;?>
                  </td>
                  <td>
                    
                    <button class="btn btn-danger" onclick="del_show(<?php echo $shows[0];?>)">Stop Running</button>
                    
                  <?php 
                  }
                }

                  ?>

                    
                  </td>
                </tr>
            </table>
        </div> 
        <!-- /.box-footer-->
      </div>
      <!-- /.box -->
    </section>
    <!-- /.content -->
  </div>
  <?php
include('footer.php');
?>

<script>
function del_show(s)
    {
        if (confirm("Do you want to delete this show") == true) 
        {
            window.location="del_show.php?sid="+s;
        } 
    }
    </script>