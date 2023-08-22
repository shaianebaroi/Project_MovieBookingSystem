<?php
include('header.php');
?>
<link rel="stylesheet" href="../../validation/dist/css/bootstrapValidator.css"/>
    
<script type="text/javascript" src="../../validation/dist/js/bootstrapValidator.js"></script>
  <!-- =============================================== -->
  <?php
    include('../../form.php');     
  ?> 
  <!-- =============================================== -->

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Show Booking
      </h1>
      <ol class="breadcrumb">
        <li><a href="index.php"><i class="fa fa-home"></i> Home</a></li>
        <li class="active"></li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">

      <!-- Default box --> 
      <div class="box">
         <div class="box-header with-border">
              <h3 class="box-title">Booking History</h3>
            </div>
        <div class="box-body">
          <?php
          $sw = mysqli_query($con,"SELECT * FROM (((showtime inner join booking on showtime.showtime_ID = booking.showtime_ID) inner join shows on shows.shows_ID = showtime.shows_ID) inner join movies on showtime.movie_id = movies.movie_id)");
          if(mysqli_num_rows($sw))
          {?>
            <table class="table">
              <th class="col-md-1">
                Sl.no
              </th>
              <th class="col-md-2">
                Ticket ID
              </th>
              <th class="col-md-3">
                Theatre Branch
              </th>
              <th class="col-md-3">
                Movie Name
              </th>
              <th class="col-md-3">
                No of Tickets
              </th>
              <th class="col-md-3">
                Showtime
              </th>
              <th class="col-md-3">
                Hall No
              </th>
              <th class="col-md-3">
                Movie Type
              </th>
              <th class="col-md-3">
                Show Date
              </th>
              <th class="col-md-3">
                Booking Date
              </th>

              <?php
              while($book=mysqli_fetch_array($sw))
              {
                ?>
                <tr>
                  
                  <td>
                    <?php echo $book['booking_id'];?>
                  </td>
                  <td>
                    <?php echo $book['ticket_id'];?>
                  </td>
                  <td>
                    <?php echo $book['theatre_name'];?>
                  </td>
                  <td>
                    <?php echo $book['movie_name'];?>
                  </td>
                  <td>
                    <?php echo $book['ticket_quantity'];?>
                  </td>
                  <td>
                    <?php echo $book['start_time'];?>
                  </td>
                  <td>
                    <?php echo $book['hall_no'];?>
                  </td>
                  <td>
                    <?php echo $book['movie_type'];?>
                  </td>
                  <td>
                    <?php echo $book['ticket_date'];?>
                  </td>
                  <td>
                    <?php echo $book['date'];?>
                  </td>
                </tr>
                <?php
              }
              ?>
            </table>
            <?php
          }
          else
          {
            ?>
            <h3>No Shows Added</h3>
            <?php
          }
          ?>
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