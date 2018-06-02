<?php

    define('DB_HOST','localhost');
	define('DB_USER','root');
	define('DB_PASS','');
	define('DB_NAME','crimes');
	define('UPLOAD_PATH', 'uploads/');
//connecting to database 
	$con = mysqli_connect(DB_HOST,DB_USER,DB_PASS,DB_NAME) or die('Unable to connect');
	

    $attachment ="";// $_POST['attachment'];
    $type = $_POST['type'];
    $description = $_POST['description'];
	 $lat = $_POST['lati'];
	 $longi = $_POST['longi'];
    $status = "pending for response";
$file=$_FILES['pic']['name'];


    $sql = "INSERT INTO crimes
            (type,description,imagelink,lat,longi) 
        VALUES ('$type','$description','$file',".$lat .",". $longi.")";
 
	
	
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