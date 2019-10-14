<?php header("Content-Type: text/html; charset=UTF-8"); ?>
<?php
	$user_id = '';
	$user_pw = '';

	if (isset($_POST['user_id'])) {
		$user_id = $_POST['user_id'];
	}

	if (isset($_POST['user_pw'])) {
		$user_pw = $_POST['user_pw'];
	}

	if ( $user_id == "ajax" && $user_pw == "123qwe!@#" ) {
		echo("<h1 class='text-success'>Access success</h1>");
	} else {
		echo("<h1 class='text-danger'>Access denied</h1>");
	}
?>