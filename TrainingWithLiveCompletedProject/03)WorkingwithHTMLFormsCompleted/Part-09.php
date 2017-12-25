<?php include_once 'header.php'; ?>
	<hr>
		Get data from a data table in JavaScript (Part-09)
		<span style="float:right">
		<?php
			date_default_timezone_set('Asia/Dhaka');
			echo "Bangladesh Time is ".date("h:i:sa")."<br />";
		?>
		</span>
	<hr />	
	<script>
		function clickHere()
		{
			var getname = document.myform.name.value;
			document.getElementById('showName').innerHTML = getname;
			
			var genderLength = document.myform.gender.length;
			for(i=0; i<genderLength; i++)
			{
				var checkGender = document.myform.gender[i].checked;
				if(checkGender)
				{
					gendValue = document.myform.gender[i].value;
				}
			}
			document.getElementById('showGender').innerHTML = gendValue;
			
			var depLength = document.myform.dep.length;
			for(i=0; i<depLength; i++)
			{
				var checkDep = document.myform.dep[i].checked;
				if(checkDep)
				{
					depValue = document.myform.dep[i].value;
				}
			}
			document.getElementById('showDep').innerHTML = depValue;
			
			var index = document.myform.coder.selectedIndex;
			coderValue = document.myform.coder.options[index].value;
			document.getElementById('showCoder').innerHTML = coderValue;
		}
	</script>	
	<table class="tblone">
		<tr>
			<td colspan="2" align="center">Output</td>
		</tr>
		<tr>
			<td>Name</td>
			<td><span id="showName"></span></td>
		</tr>
		<tr>
			<td>Gender</td>
			<td><span id="showGender"></span></td>
		</tr>
		<tr>
			<td>Department</td>
			<td><span id="showDep"></span></td>
		</tr>
		<tr>
			<td>Coder</td>
			<td><span id="showCoder"></span></td>
		</tr>
	</table>
	<form action="" name="myform" id="myform" onsubmit="clickHere(); return false;" >
			<table>
				<tr>
					<td>Name</td>
					<td><input type="text" name="name" required="1" /></td>
				</tr>
				<tr>
					<td>Gender</td>
					<td>
						<input type="radio" name="gender" value="Male" />Male
						<input type="radio" name="gender" value="Female" />Female
					</td>
				</tr>
				<tr>
					<td>Department</td>
					<td>
						<input type="checkbox" name="dep" value="CSE" />CSE
						<input type="checkbox" name="dep" value="Physics" />Physics
						<input type="checkbox" name="dep" value="Maths" />Maths
					</td>
				</tr>
				<tr>
					<td>Coder</td>
					<td>
						<select name="coder" required="1">
							<option value="">Select One</option>
							<option value="JAVA">JAVA</option>
							<option value="PHP">PHP</option>
							<option value="C#">C#</option>
						</select>
					</td>
				</tr>
				
				<tr>
					<td></td>
					<td>
						<input type="submit" name="submit" value="Submit" />
						<input type="reset" value="Clear" />
					</td>
				</tr>
			</table>
		</form>
		<br /><a href="Part-10.php">92/92 Get data from a data table in PHP (Part-10)</a>
	
<?php include_once 'footer.php';?>
