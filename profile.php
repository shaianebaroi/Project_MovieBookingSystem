<?php include('header.php');
if(!isset($_SESSION['user']))
{
	header('location:login.php');
}
	?>
<div class="content">
	<div class="wrap">
		<div class="content-top">
				<div class="section group">
					<div class="about span_1_of_2">	
						<?php
            $qry = mysqli_query($con,"SELECT membership,points from user WHERE u_id='".$_SESSION['user']."'");
            $mem = mysqli_fetch_array($qry);
            if($mem[0] == 1){
            ?>
            <h4 style="color:black;" class="text-center">USER IS A REGISTERED MEMBER</h4>
            <h4 style="color:black;" class="text-center">Available Coupons</h4>
            <?php
            $coup = mysqli_query($con,"SELECT description,coupon_id from coupon where points <= '$mem[1]'");
            ?>
            <?php
             
              if(mysqli_num_rows($coup)){
             ?>
             
              <table class="table">
              <th class="col-md-1">
                Coupon Description
              </th>
              
              <?php 
              while($coupon = mysqli_fetch_array($coup)){
                ?>
                <tr>
                  
                  <td>
                    <?php echo $coupon['description'];?>
                  </td>
                  <td>
                    <a href="redeem.php?rid=<?php echo $coupon['coupon_id'];?>"><button type="submit" class="btn btn-primary">Redeem</button>
                  </td>
                </tr>
                <?php 
              }
              ?>
              </table>
            <?php
            }
            ?>
            <h4 style="color:black;" class="text-center">Redeemed Coupons</h4>
            <?php 
            $q = mysqli_query($con,"SELECT * FROM redeem where u_id = '".$_SESSION['user']."'");

            if(mysqli_num_rows($q)){
             ?>
              <table class="table">
              <th class="col-md-1">
                Available Redeemed Coupons
              </th>
              
              <?php 
              while($redeem = mysqli_fetch_array($q)){
                ?>
                <tr>
                  
                  <td>
                    <?php echo $redeem['coupon_id'];?>
                  </td>
                  <td>
                    <?php echo $redeem['description'];?>
                  </td>
                </tr>
            <?php
            }
            ?>
          </table>
            <?php
            }
            else{
              ?>
              <table class="table">
              <th class="col-md-1">
                No Redeemed Coupons
              </th>
            </table>
            <?php

            }
          }
            ?>
            
            

            <h3 style="color:black;" class="text-center">BOOKING HISTORY</h3>

						<?php include('msgbox.php');?>
						<?php
				$sw = mysqli_query($con,"SELECT * FROM (((showtime inner join booking on showtime.showtime_ID = booking.showtime_ID) inner join shows on shows.shows_ID = showtime.shows_ID) inner join movies on showtime.movie_id = movies.movie_id) where u_id='".$_SESSION['user']."'");
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
					<h3 style="color:red;" class="text-center">No Previous Bookings Found!</h3>
					<p>Once you start booking movie tickets with this account, you'll be able to see all the booking history.</p>
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
<script type="text/javascript">
	$('#seats').change(function(){
		var charge=<?php echo $screen['charge'];?>;
		amount=charge*$(this).val();
		$('#amount').html("Rs "+amount);
		$('#hm').val(amount);
	});
</script>