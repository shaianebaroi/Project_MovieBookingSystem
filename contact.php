<?php
include('header.php');
require_once('config.php');
?>
  <!-- =============================================== -->

  <!-- Content Wrapper. Contains page content -->
<div>
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header" style="color:#fff;">
      <h1>
        Theatres
      </h1>
      <ol class="breadcrumb">
        <li><a href="index.php"><i class="fa fa-home"></i> Home</a></li>
        <li class="active" >Theatre Details</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <!-- Default box --> 
      <div class="box">
         <div class="box-header with-border">
              <h3 class="box-title">All Branches</h3>
            </div>
        <div class="box-body">
          <?php include('msgbox.php');?>
          <?php
          $sw=mysqli_query($con,"select * from branch");
          if(mysqli_num_rows($sw))
          {?>
            <table class="table">
              <th class="col-md-1">
                Name
              </th>
              <th class="col-md-2">
                City
              </th>
              <th class="col-md-2">
                Street
              </th>
              <th class="col-md-3">
                Email
              </th>
              <th class="col-md-3">
                Phone
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
                    <?php echo $shows[1];?>
                    
                  </td>
                  <td>
                    <?php echo $shows[2];?>
                  </td>
                  <td>
                    <?php echo $shows[3];?>
                  </td>
                  <td>
                    
                    <?php echo $shows[4];?>
                  </td>
                    
                  <?php 
                  }
                }

                  ?>

                    
                </tr>
            </table>
        </div> 
        <!-- /.box-footer-->
      </div>
      <!-- /.box -->
    </section>
    <!-- /.content -->
  </div>
</div>
  <?php
include('footer.php');
?>