<?php

require_once('config.php');
foreach($_POST['qid'] as $qid=>$option_id) {
	$sth = $dbh->prepare("INSERT INTO `vote` (`qid`, `option_id`, `name`, `email`, `phone`) VALUES (?, ?, ?, ?, ?);"); 
	$sth_data = array($qid, $option_id, $_POST['name'], $_POST['email'], $_POST['mobile']);	
	$sth->execute($sth_data);
	if($sth->errorCode() == 0) {
		$return['error'] = false;
		$return['msg'] ="Added vote to database";				
	}
	else {				
		$return['error'] = true;
		$errors = $sth->errorInfo();
		$return['msg'] = 'Database Error: ' . $errors[2];											
	}
}	
echo json_encode($return);

?>