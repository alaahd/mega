<?php

require_once('../config.php');

/* - DO NOT EDIT BELOW THIS - */
/* - Establish DB Connection - */

$return = array();
$questions = array();
/* - Get all questions - */
$dbs = $dbh->prepare("SELECT * FROM voters;");
$dbs->execute();
if($dbs->errorCode() == 0) 
{
	$krows=$dbs->fetchAll(PDO::FETCH_ASSOC);	
	echo '<ol>';
	foreach($krows as $kr) {
		echo '<li><b>'.$kr['name'].'</b></br>';
		echo ''.$kr['email'].'</br>';
		echo ''.$kr['mobile'].'</br>';
		echo 'Location : '.$kr['location'].'</br>';
		$dbs = $dbh->prepare("SELECT * FROM questions;");
		$dbs->execute();
		if($dbs->errorCode() == 0) 
		{
			$rows=$dbs->fetchAll(PDO::FETCH_ASSOC);	
			echo '<ol>';
			foreach($rows as $r) {
				echo '<li><b>'.$r['question'].'</b> | ';
				$qid = $r['qid'];
				$fkid = $kr['id'];
				$votes = $dbh->prepare("SELECT option_id FROM vote WHERE qid = '$qid' AND fk_voter_id = '$fkid';");
				$votes->execute();
				$votes=$votes->fetchAll(PDO::FETCH_ASSOC);	
				foreach($votes as $v){
					$xid = $v['option_id'];
					$options = $dbh->prepare("SELECT * FROM options WHERE option_id = '$xid';");
					$options->execute();
					$options=$options->fetchAll(PDO::FETCH_ASSOC);	
					echo '<em> Voted : '.$options[0]['choice'].'</em></li>';
				};	
			}
			echo '</ol>';
		}
		echo '</li><br/><br/>';
	}
	echo '</ol>';
}	
else {				
	$return['error'] = true;
	$errors = $dbh->errorInfo();
	$return['msg'] = 'Database Error: ' . $errors[2];												
}	
if($debug)  echo json_encode($return);

?>