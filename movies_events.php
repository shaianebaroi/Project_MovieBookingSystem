<?php include('header.php');?>
</div>
<div class = "content">
	<div class = "now_showing">
		<div class = "container">
			<div class = "row">
				<h2 style="color:#555;">Films in Theater</h2>
			</div>
			<div class="row">
			<?php
          	$qry2=mysqli_query($con,"select * from  movies where status='0'");
						
          	while($m=mysqli_fetch_array($qry2))
       		{
            ?>
				<div class="col-md-3"style = "margin-bottom: 10px;" >
				<a href="about_book.php?id=<?php echo $m['movie_id'];?>"><img src="<?php echo $m['poster'];?>" style = "height: 60%; width: 100%;"></a>
				</div>

				<?php
				}

				?>
				
			</div>
		</div>
	</div>
</div>

		  		
  	    
			
			</div>
				<div class="clear"></div>		
			</div>
			<?php include('footer.php');?>