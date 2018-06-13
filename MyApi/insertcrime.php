<?php

    define('DB_HOST','localhost');
	define('DB_USER','root');
	define('DB_PASS','');
	define('DB_NAME','crimedb');
	define('UPLOAD_PATH', 'uploads/');
//connecting to database 
	$con = mysqli_connect(DB_HOST,DB_USER,DB_PASS,DB_NAME) or die('Unable to connect');
	

    $attachment ="";// $_POST['attachment'];
    $type = $_POST['type'];
    $description = $_POST['description'];
	 $location = $_POST['loc'];
	 $phone_number = $_POST['phone'];
    $status = "pending for response";
$file=$_FILES['pic']['name'];


    $sql = "INSERT INTO crimes
            (title,description,image,location,phone_number) 
        VALUES ('$type','$description','$file','".$location ."','". $phone_number."')";
 
	
	
					//uploading file and storing it to database as well 
					try{
						move_uploaded_file($_FILES['pic']['tmp_name'], UPLOAD_PATH . $_FILES['pic']['name']);
						mysqli_query($con, $sql);
					}catch(Exception $e){
						$response['error'] = true;
						$response['message'] = 'Could not upload file';
					}
					
				
				
	
if(mysqli_error($con))
	echo "Error: ".mysqli_error($con);
else
    echo json_encode("query posted successfully");

?>