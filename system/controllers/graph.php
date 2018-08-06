<?php
/**
* FULL FEATURED CREATED / ADDED BY : 
* WEBSITE	: HTTP://HIJAUNET.ID
* EMAIL		: OWNER.HIJAUN3T@GMAIL.COM
* FACEBOOK	: HTTPS://WWW.FACEBOOK.COM/HIJAUNETPCT
* MOBILE	: +62 877 0229 9005
**/

require 'routeros_api.class.php';
$API = new RouterosAPI();
		$API->debug = false;
		$API->connect($_SESSION['ip_address'], $_SESSION['port'], $_SESSION['username'], $_SESSION['password']);

if($API->connect($_SESSION['ip_address'], $_SESSION['port'], $_SESSION['username'], $_SESSION['password'])){
		$rows = array(); $rows2 = array();	
		$API->write('/interface/monitor-traffic', false);
		$API->write('=interface=aggregate', false);  
		$API->write('=once=',true);
		$READ = $API->read(false);
		$ARRAY = $API->parseResponse($READ);
		if(count($ARRAY)>0){  
			$rx = $ARRAY[0]['rx-bits-per-second'];
			$tx = $ARRAY[0]['tx-bits-per-second'];
			$rows['name'] = 'Tx';
			$rows['data'][] = $tx;
			$rows2['name'] = 'Rx';
			$rows2['data'][] = $rx;
		}else{  
			echo $ARRAY['!trap'][0]['message'];	 
		} 
	}else{
		
	}
	$API->disconnect();

	$result = array();
	array_push($result,$rows);
	array_push($result,$rows2);
	print json_encode($result, JSON_NUMERIC_CHECK);

?>
