<?php 
$font = "verdana";
$bgcolor = "#444";//E06C1D
$fontcolor = "#fff"; 
?>
<!DOCTYPE HTML>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<title>PHP Syntax</title>
	<style type="text/css">
	body{font-family:<?php echo $font;?>}
	.phpcoding{width:900px; margin:0 auto; background:<?php echo "#ddd";?>; }
	.headeroption, .footeroption{background:<?php echo $bgcolor;?>; color:<?php echo $fontcolor;?>;text-align:center; padding:20px;}
	.headeroption h2, .footeroption h2{margin:0px}
	.maincontent{min-height:400px; padding:20px}
	</style>
</head>
<body>
	<div class="phpcoding">
		<section class="headeroption">
			<h2><?php echo "PHP Fundamental Training";?></h2>
		</section>
		<section class="maincontent">
		PHP Variable Scope		
		<hr />
		<?php
			$x=15;
			function test1()
			{
				global $x;
				$a=5;
				echo $a;
				echo "<br />";
				echo "Access from function test1 ".$x;
				echo "<br />";
			}
			function test2()
			{
				global $x;
				$b=10;
				echo $b;
				echo "<br />";
				echo "Access from function test2 ".$x;
				
			}
			test1();
			test2();
			
		?>
		<br /><a href="Part-25 (Superglobals).php">Part-25 (Superglobals)</a>
		</section>
		<section class="footeroption">
			<h2><?php echo "www.trainingwithliveproject.com";?></h2>
		</section>
		
	</div>
	
</body>
</html>