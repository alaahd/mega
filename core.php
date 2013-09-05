<?php

require_once('config.php');

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
	foreach($rows as $r) {		
		$qid = $r['qid'];
		$options = $dbh->prepare("SELECT * FROM options WHERE qid = '$qid';");
		$options->execute();
		$options=$options->fetchAll(PDO::FETCH_ASSOC);	
		$op = array();
		foreach($options as $o) {
			$op[] = array(
				'option_id' => $o['option_id'],
				'choice' => $o['choice'],
				'file_name' => $o['file_name']
			);
		}		
		$op = array(
			'question' => $r['question'],
			'qid' => $r['qid'],			
			'options' => $op
		);	
		array_push($questions, $op);
	}	
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