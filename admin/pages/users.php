<?php
include('header.php');
?>
  <!-- =============================================== -->

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Users Details
      </h1>
      <ol class="breadcrumb">
        <li><a href="index.php"><i class="fa fa-home"></i> Home</a></li>
        <li class="active">User Details</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">

      <!-- Default box --> 
      <div class="box">
         <div class="box-header with-border">
              <h3 class="box-title">User Details</h3>
            </div>
        <div class="box-body">
          <?php
          $sw = mysqli_query($con,"select * from user where type = 1");
          if(mysqli_num_rows($sw))
          {?>
            <table class="table">
              <th class="col-md-1">
                Sl.no
              </th>
              <th class="col-md-2">
                User Name
              </th>
              <th class="col-md-3">
                Password
              </th>
              <th class="col-md-3">
                Email
              </th>
              <th class="col-md-3">
                Age
              </th>
              <th class="col-md-3">
                Phone
              </th>
              <th class="col-md-3">
                Gender
              </th>
              <?php
              while($users=mysqli_fetch_array($sw))
              {
                ?>
                <tr>
                  
                  <td>
                    <?php echo $users[0];?>
                  </td>
                  <td>
                    <?php echo $users[1];?>
                  </td>
                  <td>
                    <?php echo $users[2];?>
                  </td>
                  <td>
                    <?php echo $users[3];?>
                  </td>
                  <td>
                    <?php echo $users[4];?>
                  </td>
                  <td>
                    <?php echo $users[5];?>
                  </td>
                  <td>
                    <?php echo $users[6];?>
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