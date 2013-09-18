<?php
 function clean_string($str) {
	$str = @strip_tags($str);
	$str = @stripslashes($str);
	$str = mysql_real_escape_string($str);
	return $str;
}
require_once('config.php');
foreach($_POST['qid'] as $qid=>$option_id) {
	$sth = $dbh->prepare("INSERT INTO `vote` (`qid`, `option_id`, `name`, `email`, `phone`, `location`) VALUES (?, ?, ?, ?, ?, ?);"); 
	$sth_data = array($qid, $option_id, clean_string($_POST['name']), clean_string($_POST['email']), clean_string($_POST['mobile']), clean_string($_POST['location']));	
	$sth->execute($sth_data);
	if($sth->errorCode() == 0) {
		$return['error'] = false;
		$return['msg'] ="Added vote to database";				
		/*
		- Send Results via email.		
		*/
		$dbs = $dbh->prepare("SELECT * FROM questions WHERE qid = '$qid';");
		$dbs->execute();
		$rows=$dbs->fetchAll(PDO::FETCH_ASSOC);	
		$rows=$rows[0];	
		$email_message .= '<h3>'.$rows['question'].'</h3>';
		$options = $dbh->prepare("SELECT * FROM options WHERE option_id = '$option_id';");
		$options->execute();
		$options=$options->fetchAll(PDO::FETCH_ASSOC);	
		$email_message .= 'VOTED : '.$options[0]['choice'].'<br/><br/>';
	}
	else {				
		$return['error'] = true;
		$errors = $sth->errorInfo();
		$return['msg'] = 'Database Error: ' . $errors[2];											
	}
}	
// create email headers
$email_message .= "Name: ".clean_string($_POST['name'])."<br/>";    
$email_message .= "Email: ".clean_string($_POST['email'])."<br/>";
$email_message .= "Telephone: ".clean_string($_POST['mobile'])."<br/>";
$email_message .= "Location: ".clean_string($_POST['location'])."<br/>";
  
$headers = 'From: '.$email_from."\r\n".
'Reply-To: '.$email_from."\r\n" .
"MIME-Version: 1.0" . "\r\n".
"Content-type:text/html;charset=iso-8859-1" . "\r\n".
'X-Mailer: PHP/' . phpversion();
@mail($email_to, $email_subject, $email_message, $headers);  
		
echo json_encode($return);

?>