<!DOCTYPE html>
<html>
<head>
<!-- 	<link rel="stylesheet" type="text/css" href="bootstrap-5.1.3-dist/css/bootstrap.min.css"> -->
	<link rel="stylesheet" href="css/style1.css">

	<script type="text/javascript" src="bootstrap.min.css/js/bootstrap.min.js"></script>
</head>


<body>
<?php
include('header.php');
?>

<?php
	require_once("config.php");						
?>

<div class = "content">
	<div class = "now_showing">
		<div class = "container">
			<div class = "row">
				<h2 style="color:#555;">Films in Theater</h2>
			</div>
			<div class="row">
			<?php
          	$qry2=mysqli_query($con,"select * from  movies where status='0' order by rand() limit 4");
						
          	while($m=mysqli_fetch_array($qry2))
       		{
            ?>
				<div class="col-md-3">
				<a href="about_book.php?id=<?php echo $m['movie_id'];?>"><img src="<?php echo $m['poster'];?>" style = "height: 60%; width: 100%;"></a>
				</div>
				<?php
				}
				?>
			</div>
		</div>
	</div>

	<div class = "content">
	<div class = "upcoming">
		<div class = "container">
			<div class = "row">
				<h2 style="color:#fff;">Upcoming Films</h2>
			</div>
			<div class="row">
			<?php
          	$qry2=mysqli_query($con,"select * from  movies where status='1' order by rand() limit 4");
						
          	while($m=mysqli_fetch_array($qry2))
       		{
            ?>
				<div class="col-md-3">
				<a href="about.php?id=<?php echo $m['movie_id'];?>"><img src="<?php echo $m['poster'];?>"></a>
				</div>
				<?php
				}
				?>
			</div>
		</div>
	</div>
		</div>
	</div>
	<div class = "break">
	</div>
</div>
<?php include('footer.php');?>
</body>