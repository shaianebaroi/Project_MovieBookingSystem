<?php include('header.php');
if(!isset($_SESSION['user']))
{
	header('location:login.php');
}
	$qry2=mysqli_query($con,"select * from movies where movie_id='".$_SESSION['movie']."'");
	$movie=mysqli_fetch_array($qry2);
	?>
<div class="content">
	<div class="wrap">
		<div class="content-top">
				<div class="section group">
					<div class="about span_1_of_2">	
						<h3><?php echo $movie['movie_name']; ?></h3>	
							<div class="about-top">	
								<div class="grid images_3_of_2">
									<img src="<?php echo $movie['poster']; ?>" alt=""/>
								</div>
								<div class="desc span_3_of_2">
									<p class="p-link" style="font-size:15px"><b>Cast : </b><?php echo $movie['cast']; ?></p>
									<p class="p-link" style="font-size:15px"><b>Release Date : </b><?php echo date('d-M-Y',strtotime($movie['release_date'])); ?></p>
									<p style="font-size:15px"><?php echo $movie['plot']; ?></p>
									<a href="<?php echo $movie['trailer']; ?>" target="_blank" class="watch_but">Watch Trailer</a>
								</div>
								<div class="clear"></div>
							</div>
							<table class="table table-hover table-bordered text-center">
							<?php
								$s=mysqli_query($con,"select * from branch where name='".$_SESSION['theatre']."'");
								$t=mysqli_fetch_array($s);
								
									$u=mysqli_query($con,"select name from branch where name='".$t[0]."'");
									$v=mysqli_fetch_array($u);
									?>
									<tr>
										<td class="col-md-6">
											Branch
										</td>
										<td>
											<?php echo $t[0];?>
											<?php echo $t[2];?>
										</td>
										
										
										
										
										</tr>
										<tr>
											<td>
												Hall Number
											</td>

										<?php												
										$ttm=mysqli_query($con,"select * from showtime where showtime_ID='".$_SESSION['show']."'");
												
										$ttme=mysqli_fetch_array($ttm);

											?>
										<td>
										<?php echo $ttme[7];?>
										</td>
									</tr>
									<tr>
										<td>
											Date
										</td>
										<td>
											<?php echo $ttme[1];?> 
											<?php $_SESSION['t_date'] = $ttme[1];?>
							
							
										</td>
									</tr>
									<tr>
										<td>
											Show Time
										</td>
										<td>
											<?php
											 $m=mysqli_query($con,"select start_time from showtime inner join shows on showtime.shows_ID = shows.shows_ID where showtime_ID='".$_SESSION['show']."'");
												
											 $n=mysqli_fetch_array($m);

												?> 
											
											<?php echo $n[0];?>
											
										</td>
									</tr>
									<?php
									   if($ttme[7]!=4 or $ttme[7] !=5){
									   	?>
									<tr>
										<?php												
											$taka=mysqli_query($con,"select * from price where hall_no='".$ttme[7]."'");
												
											$price=mysqli_fetch_array($taka);

											?>

										<td>
											Number of Seats
										</td>
										<td>
											<form  action="pay_process_booking.php" method="post">
												<input type="hidden" name="hall" value="<?php echo $ttme[7];?>"/>
											<input type="number" required tile="Number of Seats" max="<?php echo $ttme['seats'];?>" min="0" name="seats" class="form-control" value="1" style="text-align:center" id="seats"/>
											<input type="hidden" name="r_amount" id="hm" value="<?php echo $price['ticket_price'];?>"/>
											<input type="hidden" name="date" value="<?php echo $date;?>"/>
										</td>
									</tr>
									<?php
										}
										else{
											?>
									<tr>

										<td>
											Number of Seats
										</td>
										<td>
											
											<input type="number" required tile="Number of Seats" max="<?php echo $ttme['seats'];?>" min="0" name="seats" class="form-control" value="1" style="text-align:center" id="seats"/>
											<input type="hidden" name="p_amount" id="p_hm" value="<?php echo $price['ticket_price'];?>"/>
											<input type="hidden" name="date" value="<?php echo $date;?>"/>
										</td>
									</tr>
									<tr>
										<?php 
									    }
									    ?>

										<td>
											Total Amount
										</td>


										<td id="amount" style="font-weight:bold;font-size:18px">
											 <?php echo $price['ticket_price'];?>
											
										</td>
									</tr>
									<tr>
										<td colspan="2"><?php if($ttme[7]==4 or $ttme==5){
											if($ttme['seats'] == 0){?><button type="button" class="btn btn-danger" style="width:100%">House Full</button><?php } else { ?>
										<button class="btn btn-info" style="width:100%">Book Now</button>
										<?php }
										}
										else{
										if($ttme['seats']==0){?><button type="button" class="btn btn-danger" style="width:100%">House Full</button><?php } else { ?>
										<button class="btn btn-info" style="width:100%">Book Now</button>
										<?php
										}
										} ?>
										</form></td>
									</tr>
									
						<table>
							<tr>
								<td></td>
							</tr>
						</table>
					</div>			
			</div>
				<div class="clear"></div>		
			</div>
	</div>
</div>
<?php include('footer.php');?>
<script type="text/javascript">
	$('#seats').change(function(){
		var charge=<?php echo $price['ticket_price'];?>;
		amount=charge*$(this).val();
		$('#amount').html(amount);
		$('#hm').val(amount);
	});
</script>

<!-- <script>
document.getElementById("seats").addEventListener("input", function(){
    document.getElementById("amount").value = this.value*100;
});

</script> -->