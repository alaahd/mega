<?php

require_once('../config.php');

/* - DO NOT EDIT BELOW THIS - */
/* - Establish DB Connection - */

$return = array();
$questions = array();
/* - Get all questions - */
$dbs = $dbh->prepare("SELECT * FROM questions;");
$dbs->execute();
if($dbs->errorCode() == 0) 
{
	$rows=$dbs->fetchAll(PDO::FETCH_ASSOC);	
	echo '<ol>';
	foreach($rows as $r) {
		echo '<li>'.$r['question'].'</li><br/>';
		$qid = $r['qid'];
		$votes = $dbh->prepare("SELECT option_id, count(option_id) as votes FROM vote GROUP BY qid, option_id HAVING qid = '$qid';");
		$votes->execute();
		$votes=$votes->fetchAll(PDO::FETCH_ASSOC);	
		echo '<ol>';
		foreach($votes as $v){
			$xid = $v['option_id'];
			$options = $dbh->prepare("SELECT * FROM options WHERE option_id = '$xid';");
			$options->execute();
			$options=$options->fetchAll(PDO::FETCH_ASSOC);	
			echo '<li>'.$options[0]['choice'].' :: <b>'.$v['votes'].' VOTES </b><br/></li>';
		};	
		echo '<br/>';
		echo '</ol>';
	}
	echo '</ol>';
}
else {				
	$return['error'] = true;
	$errors = $dbh->errorInfo();
	$return['msg'] = 'Database Error: ' . $errors[2];												
}	
if($debug)  echo json_encode($return);
			/*
$questions = array(
	array(
		'question' => 'Golf course of the Year above 400 AED',
		'options' => array(
			'a'	=> array(
				'choice' => 'ABU DHABI CITY GOLF 9TH HOLE',
				'file_name' => 'img/op1.png'
			),
			'b'	=> array(
				'choice' => 'JEBEL ALI GOLF RESORT & SPA 4TH HOLE',
				'file_name' => 'img/op1.png'
			),
			'c'	=> array(
				'choice' => 'SAADIYAT BEACH GOLF CLUB 11TH HOLE',
				'file_name' => 'img/op1.png'
			),
			'd'	=> array(
				'choice' => 'THE ELS CLUB 17TH HOLE',
				'file_name' => 'img/op1.png'
			)
		)
	),
	array(
		'question' => 'Golf course of the Year above 400 AED',
		'options' => array(
			'a'	=> array(
				'choice' => 'ABU DHABI CITY GOLF 9TH HOLE',
				'file_name' => 'img/op1.png'
			),
			'b'	=> array(
				'choice' => 'JEBEL ALI GOLF RESORT & SPA 4TH HOLE',
				'file_name' => 'img/op1.png'
			),
			'c'	=> array(
				'choice' => 'SAADIYAT BEACH GOLF CLUB 11TH HOLE',
				'file_name' => 'img/op1.png'
			),
			'd'	=> array(
				'choice' => 'THE ELS CLUB 17TH HOLE',
				'file_name' => 'img/op1.png'
			)
		)
	),
	array(
		'question' => 'Golf course of the Year above 400 AED',
		'options' => array(
			'a'	=> array(
				'choice' => 'ABU DHABI CITY GOLF 9TH HOLE',
				'file_name' => 'img/op1.png'
			),
			'b'	=> array(
				'choice' => 'JEBEL ALI GOLF RESORT & SPA 4TH HOLE',
				'file_name' => 'img/op1.png'
			),
			'c'	=> array(
				'choice' => 'SAADIYAT BEACH GOLF CLUB 11TH HOLE',
				'file_name' => 'img/op1.png'
			),
			'd'	=> array(
				'choice' => 'THE ELS CLUB 17TH HOLE',
				'file_name' => 'img/op1.png'
			)
		)
	),
	array(
		'question' => 'Golf course of the Year above 400 AED',
		'options' => array(
			'a'	=> array(
				'choice' => 'ABU DHABI CITY GOLF 9TH HOLE',
				'file_name' => 'img/op1.png'
			),
			'b'	=> array(
				'choice' => 'JEBEL ALI GOLF RESORT & SPA 4TH HOLE',
				'file_name' => 'img/op1.png'
			),
			'c'	=> array(
				'choice' => 'SAADIYAT BEACH GOLF CLUB 11TH HOLE',
				'file_name' => 'img/op1.png'
			),
			'd'	=> array(
				'choice' => 'THE ELS CLUB 17TH HOLE',
				'file_name' => 'img/op1.png'
			)
		)
	),
	array(
		'question' => 'Golf course of the Year above 400 AED',
		'options' => array(
			'a'	=> array(
				'choice' => 'ABU DHABI CITY GOLF 9TH HOLE',
				'file_name' => 'img/op1.png'
			),
			'b'	=> array(
				'choice' => 'JEBEL ALI GOLF RESORT & SPA 4TH HOLE',
				'file_name' => 'img/op1.png'
			),
			'c'	=> array(
				'choice' => 'SAADIYAT BEACH GOLF CLUB 11TH HOLE',
				'file_name' => 'img/op1.png'
			),
			'd'	=> array(
				'choice' => 'THE ELS CLUB 17TH HOLE',
				'file_name' => 'img/op1.png'
			)
		)
	),
	array(
		'question' => 'Golf course of the Year above 400 AED',
		'options' => array(
			'a'	=> array(
				'choice' => 'ABU DHABI CITY GOLF 9TH HOLE',
				'file_name' => 'img/op1.png'
			),
			'b'	=> array(
				'choice' => 'JEBEL ALI GOLF RESORT & SPA 4TH HOLE',
				'file_name' => 'img/op1.png'
			),
			'c'	=> array(
				'choice' => 'SAADIYAT BEACH GOLF CLUB 11TH HOLE',
				'file_name' => 'img/op1.png'
			),
			'd'	=> array(
				'choice' => 'THE ELS CLUB 17TH HOLE',
				'file_name' => 'img/op1.png'
			)
		)
	),
	array(
		'question' => 'Golf course of the Year above 400 AED',
		'options' => array(
			'a'	=> array(
				'choice' => 'ABU DHABI CITY GOLF 9TH HOLE',
				'file_name' => 'img/op1.png'
			),
			'b'	=> array(
				'choice' => 'JEBEL ALI GOLF RESORT & SPA 4TH HOLE',
				'file_name' => 'img/op1.png'
			),
			'c'	=> array(
				'choice' => 'SAADIYAT BEACH GOLF CLUB 11TH HOLE',
				'file_name' => 'img/op1.png'
			),
			'd'	=> array(
				'choice' => 'THE ELS CLUB 17TH HOLE',
				'file_name' => 'img/op1.png'
			)
		)
	),
	array(
		'question' => 'Golf course of the Year above 400 AED',
		'options' => array(
			'a'	=> array(
				'choice' => 'ABU DHABI CITY GOLF 9TH HOLE',
				'file_name' => 'img/op1.png'
			),
			'b'	=> array(
				'choice' => 'JEBEL ALI GOLF RESORT & SPA 4TH HOLE',
				'file_name' => 'img/op1.png'
			),
			'c'	=> array(
				'choice' => 'SAADIYAT BEACH GOLF CLUB 11TH HOLE',
				'file_name' => 'img/op1.png'
			),
			'd'	=> array(
				'choice' => 'THE ELS CLUB 17TH HOLE',
				'file_name' => 'img/op1.png'
			)
		)
	),
	array(
		'question' => 'Golf course of the Year above 400 AED',
		'options' => array(
			'a'	=> array(
				'choice' => 'ABU DHABI CITY GOLF 9TH HOLE',
				'file_name' => 'img/op1.png'
			),
			'b'	=> array(
				'choice' => 'JEBEL ALI GOLF RESORT & SPA 4TH HOLE',
				'file_name' => 'img/op1.png'
			),
			'c'	=> array(
				'choice' => 'SAADIYAT BEACH GOLF CLUB 11TH HOLE',
				'file_name' => 'img/op1.png'
			),
			'd'	=> array(
				'choice' => 'THE ELS CLUB 17TH HOLE',
				'file_name' => 'img/op1.png'
			)
		)
	),
	array(
		'question' => 'Golf course of the Year above 400 AED',
		'options' => array(
			'a'	=> array(
				'choice' => 'ABU DHABI CITY GOLF 9TH HOLE',
				'file_name' => 'img/op1.png'
			),
			'b'	=> array(
				'choice' => 'JEBEL ALI GOLF RESORT & SPA 4TH HOLE',
				'file_name' => 'img/op1.png'
			),
			'c'	=> array(
				'choice' => 'SAADIYAT BEACH GOLF CLUB 11TH HOLE',
				'file_name' => 'img/op1.png'
			),
			'd'	=> array(
				'choice' => 'THE ELS CLUB 17TH HOLE',
				'file_name' => 'img/op1.png'
			)
		)
	),
	array(
		'question' => 'Golf course of the Year above 400 AED',
		'options' => array(
			'a'	=> array(
				'choice' => 'ABU DHABI CITY GOLF 9TH HOLE',
				'file_name' => 'img/op1.png'
			),
			'b'	=> array(
				'choice' => 'JEBEL ALI GOLF RESORT & SPA 4TH HOLE',
				'file_name' => 'img/op1.png'
			),
			'c'	=> array(
				'choice' => 'SAADIYAT BEACH GOLF CLUB 11TH HOLE',
				'file_name' => 'img/op1.png'
			),
			'd'	=> array(
				'choice' => 'THE ELS CLUB 17TH HOLE',
				'file_name' => 'img/op1.png'
			)
		)
	),
	array(
		'question' => 'Golf course of the Year above 400 AED',
		'options' => array(
			'a'	=> array(
				'choice' => 'ABU DHABI CITY GOLF 9TH HOLE',
				'file_name' => 'img/op1.png'
			),
			'b'	=> array(
				'choice' => 'JEBEL ALI GOLF RESORT & SPA 4TH HOLE',
				'file_name' => 'img/op1.png'
			),
			'c'	=> array(
				'choice' => 'SAADIYAT BEACH GOLF CLUB 11TH HOLE',
				'file_name' => 'img/op1.png'
			),
			'd'	=> array(
				'choice' => 'THE ELS CLUB 17TH HOLE',
				'file_name' => 'img/op1.png'
			)
		)
	),
)	
*/
?>