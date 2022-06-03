<?php  
session_start();

# If the admin is logged in
if (isset($_SESSION['user_id']) &&
    isset($_SESSION['user_email'])) {

	# Database Connection File
	include "../db_conn.php";

	if (isset($_POST['author_name'])) {
	
		$name = $_POST['author_name'];

		if (empty($name)) {
			$em = "The author name is required";
			header("Location: ../add-author.php?error=$em");
            exit;
		}else {
			# Insert Into Database
			$sql  = "INSERT INTO authors (name)
			         VALUES (?)";
			$stmt = $conn->prepare($sql);
			$res  = $stmt->execute([$name]);

			
		     
		     if ($res) {
		     	
		     	$sm = "Successfully created!";
				header("Location: ../add-author.php?success=$sm");
	            exit;
		     }else{
		     
		     	$em = "Unknown Error Occurred!";
				header("Location: ../add-author.php?error=$em");
	            exit;
		     }
		}
	}else {
      header("Location: ../admin.php");
      exit;
	}

}else{
  header("Location: ../login.php");
  exit;
}