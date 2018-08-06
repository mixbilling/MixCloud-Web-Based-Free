<?php

// get router
if($admin['user_type'] != 'Admin'){
	if(!empty($_SESSION['r_id']) AND !empty($admin['router_name'])){
		$router_id = $_SESSION['r_id'];
		$router_name = $admin['router_name'];
	}
}else{
	if(!empty($_SESSION['s-id']) AND !empty($_SESSION['s-name'])){
		$router_id = $_SESSION['s-id'];
		$router_name = $_SESSION['s-name'];
	}
}

// report modal
if($admin['user_type'] == 'Admin'){	
	$user = ORM::for_table('tbl_users')
		->where_not_equal('username', "demo")
		->where_not_equal('username', "monitor")
		->find_array();		
}else{	
	$user = ORM::for_table('tbl_users')
		->where('id',$_SESSION['aid'])
		->where_not_equal('username', "demo")
		->where_not_equal('username', "monitor")
		->find_array();
}
$ui->assign('user',$user);

// pppoe expire
if($admin['user_type'] != 'Admin'){
	$pppoe_expire = ORM::for_table('tbl_customers')
		->join('tbl_user_recharges', array('tbl_customers.id', '=', 'tbl_user_recharges.customer_id'))
		->select('tbl_user_recharges.customer_id')
		->select('tbl_user_recharges.username')
		->select('tbl_user_recharges.owner_name')
		->select('tbl_user_recharges.expiration')
		->select('tbl_user_recharges.time')
		->where('tbl_user_recharges.owner_name',$admin['username'])
		->where('tbl_user_recharges.routers',$admin['router_name'])
		->where('tbl_customers.type','PPPOE')
		->where_not_equal('tbl_user_recharges.expiration', "0000:00:00")
		->where_lte('tbl_user_recharges.expiration', $mdate)
		->find_array();
}else{
	$pppoe_expire = ORM::for_table('tbl_customers')
		->join('tbl_user_recharges', array('tbl_customers.id', '=', 'tbl_user_recharges.customer_id'))
		->select('tbl_user_recharges.customer_id')
		->select('tbl_user_recharges.username')
		->select('tbl_user_recharges.owner_name')
		->select('tbl_user_recharges.expiration')		
		->select('tbl_user_recharges.time')
		->where('tbl_customers.type','PPPOE')
		->where('tbl_user_recharges.routers',$router_name)
		->where_not_equal('tbl_user_recharges.expiration', "0000:00:00")
		->where_lte('tbl_user_recharges.expiration', $mdate)
		->find_array();
}
$ui->assign('pppoe_expire',$pppoe_expire);

// hotspot expire
if($admin['user_type'] != 'Admin'){
	$hotspot_expire = ORM::for_table('tbl_customers')
		->join('tbl_user_recharges', array('tbl_customers.id', '=', 'tbl_user_recharges.customer_id'))
		->select('tbl_user_recharges.customer_id')
		->select('tbl_user_recharges.username')
		->select('tbl_user_recharges.owner_name')
		->select('tbl_user_recharges.expiration')		
		->select('tbl_user_recharges.time')
		->where('tbl_user_recharges.owner_name',$admin['username'])
		->where('tbl_user_recharges.routers',$admin['router_name'])
		->where('tbl_customers.type','Hotspot')
		->where_not_equal('tbl_user_recharges.expiration', "0000:00:00")
		->where_lte('tbl_user_recharges.expiration', $mdate)
		->find_array();
}else{
	$hotspot_expire = ORM::for_table('tbl_customers')
		->join('tbl_user_recharges', array('tbl_customers.id', '=', 'tbl_user_recharges.customer_id'))
		->select('tbl_user_recharges.customer_id')
		->select('tbl_user_recharges.username')
		->select('tbl_user_recharges.owner_name')
		->select('tbl_user_recharges.expiration')		
		->select('tbl_user_recharges.time')
		->where('tbl_customers.type','Hotspot')
		->where('tbl_user_recharges.routers',$router_name)
		->where_not_equal('tbl_user_recharges.expiration', "0000:00:00")
		->where_lte('tbl_user_recharges.expiration', $mdate)
		->find_array();
}
$ui->assign('hotspot_expire',$hotspot_expire);
