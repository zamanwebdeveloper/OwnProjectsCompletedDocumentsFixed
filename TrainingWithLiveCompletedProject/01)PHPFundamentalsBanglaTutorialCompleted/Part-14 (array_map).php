<?php
	include_once 'header.php';
?>
		<section class="maincontent">
		<hr>
		 Part-14 (array_map)
		<span style="float:right">
		<?php
			date_default_timezone_set('Asia/Dhaka');
			echo "Bangladesh Time is ".date("h:i:sa")."<br />";
		?>
		</span>
		<hr />
		<?php
			function myfunction($value)
			{
				return ($value+$value);
			}
			$arr = array(1,2,3,4,5);
			
			$result = array_map("myfunction", $arr);
						
			print("<pre>");
			print_r($result);
			print("</pre>");
			
			
		?>
				
				
		<br /><a href="Part-14 (array_map)02.php">Part-14 (array_map)02</a>
		</section>
<?php include_once 'footer.php';?>
