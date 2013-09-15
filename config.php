<?php
$db_name  = 'mega';
$db_host = 'localhost';
$db_user = 'root';
$db_password = '';
$host_url = 'http://localhost/mega/';

$email_from = 'mail@aghoshb.com';
$email_to = 'aghoshx@gmail.com';
$email_subject = 'MEGA VOTE NOTIFICATION';
$email_message = '';

$debug = false; //set this to true to show errors
try {
	$dbh = @new PDO("mysql:dbname=$db_name;host=$db_host", "$db_user", "$db_password");
}
catch (PDOException $e) {
	$return['error'] = true;
	$return['msg'] = 'Connection failed: ' . $e->getMessage();	
	if($debug) echo json_encode($return);		
	exit();
}
?>