<?php
	if(isset($_POST['submit']))
	{
		$file = $_FILES['file'];
		//print_r($file);
		$fileName = $_FILES['file']['name'];
		$fileTmpName = $_FILES['file']['tmp_name'];
		$fileSize = $_FILES['file']['size'];
		$fileError = $_FILES['file']['error'];
		$fileType = $_FILES['file']['Type'];
		
		$fileExt = explode('.', $fileName);
		
		$fileActualExt = strtolower(end($fileExt));
		
		$allowed = array('jpg', 'jpeg', 'png', 'pdf');
		
		if(in_array($fileActualExt, $allowed))
		{
			if($fileError === 0)
			{
				if($filesize < 1000000)
				{
					$fileNameNew = uniqid('', true).".".$fileActualExt;
					$fileDestination = 'uploads/'.$fileNameNew;
					move_uploaded_file($fileTmpName, $fileDestination);
					header("Location: test.php?uploadsuccess");
				}
				else{
					echo "Your file is too big.";
				}
				
			}
			else{
				echo "there was an Error uploading a file.";
			}
		}
		else
		{
			echo "You cannot upload file of this type.";
		}
		
		
	}
?>