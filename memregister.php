<?php include('header.php');?>
<link rel="stylesheet" href="validation/dist/css/bootstrapValidator.css"/>
    
<script type="text/javascript" src="validation/dist/js/bootstrapValidator.js"></script>
  <!-- =============================================== -->
  <?php
    include('form.php');
    $frm=new formBuilder;      
  ?> 
<?php 
if(isset($_SESSION['user'])){
$u = $_SESSION['user'];
$q = mysqli_query($con,"SELECT membership from user where u_id = '$u'");
$qq = mysqli_fetch_array($q)[0];
?>


<div class="content">
  <?php
  if($qq==1){
  ?>
    <h3>ALREADY A MEMBER</h3>
  </div>
  <?php
  }  
  else{
  ?>
	<div class="wrap">
		<div class="content-top" style="min-height:300px;padding:50px">
			<div class="col-md-4 col-md-offset-4">
				<div class="panel panel-default">
				  <div class="panel-heading">Membership Registration</div>
				  <div class="panel-body">
				<form action="process_member_booking.php" method="post" id="form1">
				    <div class="form-group has-feedback">
        <input name="user" type="text" size="25" placeholder="User Name" class="form-control"/>
        <?php $frm->validate("u_name",array("required","label"=>"Name","regexp"=>"name"));?>
        <span class="glyphicon glyphicon-user form-control-feedback"></span>
      </div>
      
      <div class="form-group has-feedback">
        <input name="email" type="text" size="25" placeholder="Email" class="form-control"/>
        <?php $frm->validate("email",array("required","label"=>"Email","email"));?>
        <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
      </div>
      <div class="form-group has-feedback">
        <input name="password" type="password" size="25" placeholder="Password" class="form-control" placeholder="Password" />
        <?php $frm->validate("password",array("required","label"=>"Password","min"=>"7"));?>
        <span class="glyphicon glyphicon-lock form-control-feedback"></span>
      </div>
      <div class="form-group">
          <button type="submit" class="btn btn-primary">Continue</button>
      </div>
      </form>
      </div>
    
    </div>
    
			</div>
		</div>
		<div class="clear"></div>	
	</div>

</div>
<?php }
}
else{
?>
<div>
<h3 style="color:#fff;"> Please Login First</h3>
</div>
<?php
}
?>
<?php include('footer.php');?>

<script>
        <?php $frm->applyvalidations("form1");?>
    </script>
