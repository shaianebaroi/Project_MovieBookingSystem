<?php include('header.php');
require_once("config.php");
	$qry2=mysqli_query($con,"select * from movies where movie_id='".$_GET['id']."'");
	$movie=mysqli_fetch_array($qry2);
	?>
<div class="content">
	<div class="wrap">
		<div class="content-top">
				<div class="section group">
					<div class="about span_1_of_2">	
						<h3 style="color:#444; font-size:23px;" class="text-center"><?php echo $movie['movie_name']; ?></h3>	
							<div class="about-top">	
								<div class="grid images_3_of_2">
									<img src="<?php echo $movie['poster']; ?>" alt=""/>
								</div>
								<div class="desc span_3_of_2">
									<p class="p-link" style="font-size:15px"><b>Cast : </b><?php echo $movie['cast']; ?></p>
									<p class="p-link" style="font-size:15px"><b>Release Date : </b><?php echo date('d-M-Y',strtotime($movie['release_date'])); ?></p>
									<p style="font-size:15px"><?php echo $movie['plot']; ?></p>
									<a href="<?php echo $movie['video_url']; ?>" target="_blank" class="watch_but" style="text-decoration:none;">Watch Trailer</a>
								</div>
								<div class="clear"></div>
							</div>
							<?php $s=mysqli_query($con,"select * from showtime where movie_id='".$movie['movie_id']."'");
							if(mysqli_num_rows($s))
							{?>
							<table class="table table-hover table-bordered text-center">
								<h3 style="color:#444;" class="text-center">Available Shows</h3>

								<thead>
										<tr>
											<th class="text-center" style="font-size:16px;"><b>Date</b></th>
											<th class="text-center" style="font-size:16px;"><b>Show Timings</b></th>
											<th class="text-center" style="font-size:16px;"><b>Branch</b></th>
										</tr>
									</thead>
									<?php
									while($row = mysqli_fetch_array($s)){
										?>
									<tbody>
										<?php 
											$time_query = mysqli_query($con, "select start_time from shows where shows_id = $row[4]");
											$time = mysqli_fetch_array($time_query); ?>
									<tr>
										<td >
											<?php echo $row[1];?>
										</td>
										<td>
											<?php echo substr($time[0],0,5);?>
										</td>
										<td>	
											<button class="btn btn-default"><?php echo substr($row[2],0,5);?></button>
										</td>
									</tr>
									</tbody>
									<?php
								}
							
							?>
						</table>
							<?php
							}
						
							else
							{
								?>
								<h3 style="color:#444; font-size:23px;" class="text-center">Currently there are no any shows available!</h3>
								<p class="text-center">Please check back later!</p>
								<?php
							}
							?>
						
					</div>			
			</div>
				<div class="clear"></div>		
			</div>
	</div>
</div>
<?php include('footer.php');?>