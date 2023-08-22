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
        Add Upcoming Movie
      </h1>
      <ol class="breadcrumb">
        <li><a href="index.php"><i class="fa fa-home"></i> Home</a></li>
        <li class="active">Add Upcoming Movie</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">

      <!-- Default box --> 
      <div class="box">
        <div class="box-body">
          <?php include('../../msgbox.php');?>
          <form action="process_add_news.php" method="post" enctype="multipart/form-data" id="form1">
            <div class="form-group">
              <label class="control-label">Movie Name</label>
              <input type="text" name="name" class="form-control"/>
              <?php $frm->validate("name",array("required","label"=>"Movie Name")); // Validating form using form builder written in form.php ?>
            </div>
            <div class="form-group">
              <label class="control-label">Cast</label>
              <input type="text" name="cast" class="form-control"/>
              <?php $frm->validate("cast",array("required","label"=>"Cast","regexp"=>"text")); // Validating form using form builder written in form.php ?>
            </div>
            <div class="form-group">
              <label class="control-label">Plot</label>
              <textarea name="plot" class="form-control"></textarea>
              <?php $frm->validate("desc",array("required","label"=>"Description")); // Validating form using form builder written in form.php ?>
            </div>
              <div class="form-group">
              <label class="control-label">Genre</label>
              <textarea name="genre" class="form-control"></textarea>
              
            </div>

              <div class="form-group">
              <label class="control-label">Category</label>
              <textarea name="category" class="form-control"></textarea>
              
            </div>

              <div class="form-group">
              <label class="control-label">Language</label>
              <textarea name="lang" class="form-control"></textarea>
              
            </div>

              <div class="form-group">
              <label class="control-label">Rating</label>
              <textarea name="rating" class="form-control"></textarea>
              
            </div>

              <div class="form-group">
              <label class="control-label">Direct</label>
              <textarea name="dir" class="form-control"></textarea>
              
            </div>

            <div class="form-group">
              <label class="control-label">Release Date</label>
              <input type="date" name="rdate" class="form-control"/>
              <?php $frm->validate("rdate",array("required","label"=>"Release Date")); // Validating form using form builder written in form.php ?>
            </div>

              <div class="form-group">
              <label class="control-label">Duration</label>
              <textarea name="duration" class="form-control"></textarea>
              
            </div>

            <div class="form-group">
              <label class="control-label">Image</label>
              <input type="file" name="image" class="form-control"/>
              <?php $frm->validate("image",array("required","label"=>"Image")); // Validating form using form builder written in form.php ?>
            </div>
            <div class="form-group">
              <label class="control-label">Trailer Youtube Link</label>
              <input type="text" name="video" class="form-control"/>
              <?php $frm->validate("video",array("label"=>"Image","max"=>"500")); // Validating form using form builder written in form.php ?>
            </div>
            <div class="form-group">
              <button type="submit" class="btn btn-success">Add Movie</button>
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