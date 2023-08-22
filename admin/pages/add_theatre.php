<?php
include('header.php');
?>
<link rel="stylesheet" href="../../validation/dist/css/bootstrapValidator.css"/>
    
<script type="text/javascript" src="../../validation/dist/js/bootstrapValidator.js"></script>
  <!-- =============================================== -->
  <?php
    include('../../form.php');
    $frm=new formBuilder;      
  ?> 
  <!-- =============================================== -->

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Add Theatre
      </h1>
      <ol class="breadcrumb">
        <li><a href="index.php"><i class="fa fa-home"></i> Home</a></li>
        <li class="active">Add Theatre</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">

      <!-- Default box --> 
      <div class="box">
        <div class="box-body">
          <?php include('../../msgbox.php');?>
          <form action="process_add_theater.php" method="post" enctype="multipart/form-data" id="form1">
            <div class="form-group">
              <label class="control-label">Theatre Name</label>
              <input type="text" name="name" class="form-control"/>

            </div>

            <div class="form-group">
              <label class="control-label">City</label>
              <input type="text" name="city" class="form-control"/>
            </div>
            
            <div class="form-group">
              <label class="control-label">Street</label>
              <textarea name="street" class="form-control"></textarea>
              
            </div>
            
            <div class="form-group">
              <label class="control-label">Email</label>
              <input type="text" name="email" class="form-control"/>
              
            </div>

              <div class="form-group">
              <label class="control-label">Phone</label>
              <textarea name="phone" class="form-control"></textarea>
              </div>

            <div class="form-group">
              <button type="submit" class="btn btn-success">Add Theatre</button>
            </div>
          </form>
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
        <?php $frm->applyvalidations("form1");?>
    </script>