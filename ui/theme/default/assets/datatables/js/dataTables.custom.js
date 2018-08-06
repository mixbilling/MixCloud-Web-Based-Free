// function for expiration calculation

var now = new Date();
var day = ("0" + now.getDate()).slice(-2);
var month = ("0" + (now.getMonth() + 1)).slice(-2);
var today = now.getFullYear() + "-" + (month) + "-" + (day);

function mktime(month,day,year){
	a=new Date()
	a.setMonth(month)
	a.setDate(day)
	a.setYear(year)
	return a.getTime()/1000
}

function timeConverter(UNIX_timestamp){
	var a = new Date(UNIX_timestamp * 1000);
	var months = ['01','02','03','04','05','06','07','08','09','10','11','12'];
	var year = a.getFullYear();
	var month = months[a.getMonth()];
	var date = ("0" + a.getDate()).slice(-2);
	var hour = a.getHours();
	var min = a.getMinutes();
	var sec = a.getSeconds();
	var result = year + '-' + month + '-' + date;
	return result;
}

$(document).ready(function() {
	$(function () {

		//global
    	$('#dynamic-table').dataTable({
	        "aaSorting": [[ 1, "desc" ]],
			"deferRender": true,
			"fnFormatNumber": function ( toFormat ) {
				return toFormat.toString().replace(
					/\B(?=(\d{3})+(?!\d))/g,
					this.oLanguage.sThousands
				);
			},

			'columnDefs': [
				{'targets': 0,'searchable':false,'orderable':false,},
	      		{'type': 'ip-address', 'targets': 1} 
	      	],        	
    	});

    	// report daily
    	$('#report_daily').dataTable({
	    	"aaSorting": [[ 0, "desc" ]],
			"deferRender": true,
			"fnFormatNumber": function ( toFormat ) {
				return toFormat.toString().replace(
					/\B(?=(\d{3})+(?!\d))/g,
					this.oLanguage.sThousands
				);
			}	
    	});

    	// asc-sort-col-0
    	$('#asc-sort-col-0').dataTable({
      		"aaSorting": [[ 0, "asc" ]],
    	});

    	// asc-sort-col-1
    	$('#asc-sort-col-1').dataTable({
			"aaSorting": [[ 1, "asc" ]],
			"deferRender": true,
			'columnDefs': [{
		        'targets': 0,
		        'searchable':false,
		        'orderable':false,
	      	}],
    	});

    	// desc-sort-col-1
    	$('#desc-sort-col-1').dataTable({
      		"aaSorting": [[ 1, "desc" ]]
    	});

    	// desc-sort-col-4
    	$('#desc-sort-col-4').dataTable({
	      	"aaSorting": [[ 4, "desc" ]],
			"deferRender": true,
			"fnFormatNumber": function ( toFormat ) {
				return toFormat.toString().replace(
					/\B(?=(\d{3})+(?!\d))/g,
					this.oLanguage.sThousands
				);
			}	
    	});

    	// desc-sort-col-6
    	$('#desc-sort-col-6').dataTable({
      		"aaSorting": [[ 6, "desc" ]]		
    	});

    	// existing
    	$('#existing').dataTable( {
	      	"aaSorting": [[ 0, "desc" ]],
			"deferRender": true,
			"info":     false,
			"lengthChange": false,
			"iDisplayLength": 10,
			"pagingType": "simple",
	        "columnDefs": [
	         	{ 'type': 'ip-address', 'targets': 1 }
	        ]		
	    });

/* json table */

	// report period
	   $('#report_period').dataTable({
			"ajax": "index.php?page=get-data/reports-period",
			"deferRender": true,  		
			"aaSorting": [[ 5, "desc" ]],
			"columns": [ 
				{ 'data': 'owner_name' },
				{ 'data': 'username' }, 
				{ 'data': 'type' }, 
				{ 'data': 'plan_name' }, 
				{ 'data': 'price',"className": "text-right" }, 
				{ 'data': 'recharged_on',"className": "text-center" }, 
				{ 'data': 'method' },
				{ 'data': 'routers' }
			]		
	   });
	

		// voucher
	   $('#voucher-list').dataTable({
	      	"ajax": "index.php?page=get-data/voucher",
			"deferRender": true,
			"aaSorting": [[ 1, "desc" ]],		
			'columnDefs': [
				{
			        'targets': 0,
			        'searchable':false,
			        'orderable':false,
			        'render': function (data, type, full, meta){
			             return '<center><input type="checkbox" name="checked[]" value="' 
			                + $('<div/>').text(data).html() + '"></center>';
			        }
	      		},
	      		{
	      			type: 'num-html', targets: 1 
	      		}
	      	],

			"columns": [
				{ 'data': 'id' },
				{ 'data': 'id','render': function (data, type, full, meta){
					return '<span>' +full["id"]+ '</span';
	         	}},				 
				{ 'data': 'owner_name' },
				{ 'data': 'type' }, 
				{ 'data': 'routers' }, 
				{ 'data': 'name_plan' }, 
				{ 'data': 'code' }, 
				{ 'data': 'secret' }, 
				{ 'data': 'created_date'},
				{ 'data': 'id','render': function (data, type, full, meta){
					if ( full["status"] == 0) {
						return '<span title="NEW VOUCHER" style="color:#fff;font-size:17px;width:30px;height:30px;" class="btn btn-primary btn-sm fa fa-check-circle" aria-hidden="true"></span><a onclick="json_remove_db()" href="index.php?page=manage-voucher/voucher-delete/' + $('<div/>').text(data).html() + '" title="REMOVE THIS VOUCHER" style="color:#fff;font-size:17px;width:30px;height:30px;" class="btn btn-warning btn-sm fa fa-trash" aria-hidden="true"></a>';
					}else{	
						return '<span title="OLD VOUCHER" style="color:#fff;font-size:17px;width:30px;height:30px;" class="btn btn-danger btn-sm fa fa-minus-circle" aria-hidden="true"></span><a onclick="json_remove_db()" href="index.php?page=manage-voucher/voucher-delete/' + $('<div/>').text(data).html() + '" title="REMOVE THIS VOUCHER" style="color:#fff;font-size:17px;width:30px;height:30px;" class="btn btn-warning btn-sm fa fa-trash" aria-hidden="true"></a>';
					}
	         	}}
			]		
	   });
	
	
		// customers-hotspot
	   $('#customers-hotspot').dataTable({
	      "ajax": "index.php?page=get-data/customers-hotspot",
			"deferRender": true,
			"aaSorting": [[ 6, "desc" ]],		
			'columnDefs': [{
		         'targets': 0,
		         'searchable':false,
		         'orderable':false,
		         'render': function (data, type, full, meta){
		             return '<center><input type="checkbox" name="checked[]" value="' 
		                + $('<div/>').text(data).html() + '"></center>';
		         }
	      	}],

			"columns": [
				{ 'data': 'id' }, 
				{ 'data': 'username' },
				{ 'data': 'phonenumber' }, 
				{ 'data': 'remote_address','type': 'ip-address' }, 
				{ 'data': 'type' }, 
				{ 'data': 'routers' }, 
				{ 'data': 'created_at'}, 
				{ 'data': 'owner_name'},
				{ 'data': 'id','render': function (data, type, full, meta){
						return '<a style="width:80px" href="index.php?page=prepaid/recharge-user/' + $('<div/>').text(data).html() + '" title="RECHARGE THIS HOTSPOT MEMBER" class="btn btn-primary btn-sm">' + recharge + '</a>';			 
	         	}},			
				{ 'data': 'id','render': function (data, type, full, meta){				
						return '<a href="index.php?page=customers/edit/' + $('<div/>').text(data).html() + '" title="EDIT THIS HOTSPOT MEMBER" style="color:#fff;font-size:17px;width:30px;height:30px;" class="btn btn-info btn-sm fa fa-pencil-square-o" aria-hidden="true"></a><a onclick="json_remove_db()" href="index.php?page=customers/delete/' + $('<div/>').text(data).html() + '" title="REMOVE THIS HOTSPOT MEMBER" style="color:#fff;font-size:17px;width:30px;height:30px;" class="btn btn-warning btn-sm fa fa-trash" aria-hidden="true"></a>';
	         	}}
			]		
	   });	
	
	
		// customers-pppoe
	   $('#customers-pppoe').dataTable({
	        "ajax": "index.php?page=get-data/customers-pppoe",
			"deferRender": true,
			"aaSorting": [[ 6, "desc" ]],		
			'columnDefs': [{
		        'targets': 0,
		        'searchable':false,
		        'orderable':false,
		        'render': function (data, type, full, meta){
		             return '<center><input type="checkbox" name="checked[]" value="' 
		                + $('<div/>').text(data).html() + '"></center>';
		         }
	      	}],

			"columns": [
				{ 'data': 'id' }, 
				{ 'data': 'username' },
				{ 'data': 'phonenumber' }, 
				{ 'data': 'remote_address','type': 'ip-address' }, 
				{ 'data': 'type' }, 
				{ 'data': 'routers' }, 
				{ 'data': 'created_at'}, 
				{ 'data': 'owner_name'},
				{ 'data': 'id','render': function (data, type, full, meta){
						return '<a style="width:80px" href="index.php?page=prepaid/recharge-user/' + $('<div/>').text(data).html() + '" title="RECHARGE THIS PPPOE MEMBER" class="btn btn-primary btn-sm">' + recharge + '</a>';			 
	         	}},			
				{ 'data': 'id','render': function (data, type, full, meta){				
						return '<a href="index.php?page=customers/edit/' + $('<div/>').text(data).html() + '" title="EDIT THIS PPPOE MEMBER" style="color:#fff;font-size:17px;width:30px;height:30px;" class="btn btn-info btn-sm fa fa-pencil-square-o" aria-hidden="true"></a><a onclick="json_remove_db()" href="index.php?page=customers/delete/' + $('<div/>').text(data).html() + '" title="REMOVE THIS PPPOE MEMBER" style="color:#fff;font-size:17px;width:30px;height:30px;" class="btn btn-warning btn-sm fa fa-trash" aria-hidden="true"></a>';
	         	}}
			]		
	   });
	

		// prepaid-hotspot	
	   $('#prepaid-hotspot').dataTable({
	      "ajax": "index.php?page=get-data/prepaid-hotspot",
			"deferRender": true,
			"aaSorting": [[ 4, "desc" ]],		
			'columnDefs': [{
		        'targets': 0,
		        'searchable':false,
		        'orderable':false,
		        'render': function (data, type, full, meta){
		             return '<center><input type="checkbox" name="checked[]" value="' 
		                + $('<div/>').text(data).html() + '"></center>';
		         }
	      	}],
			"columns": [
				{ 'data': 'id' }, 
				{ 'data': 'username' },
				{ 'data': 'namebp' }, 
				{ 'data': 'type' }, 
				{ 'data': 'recharged_on','render': function (data, type, full, meta){
					if ( full["recharged_on"] == "0000-00-00") {
						return '<span style="font-weight:bold" class="text-red">Since Created</span>';
					}else{
						return '<span style="font-weight:bold" class="text-aqua">' +full["recharged_on"]+ '</span>';
					}				
	         	}},			
				{ 'data': 'expiration','render': function (data, type, full, meta){
					if ( full["expiration"] == "0000-00-00") {
						return '<span style="font-weight:bold" class="text-aqua">Unlimited</span>';
					}else if ( full["expiration"] <= today) {
						return '<span style="font-weight:bold" class="text-red">' +full["expiration"]+ '</span>';
					}else{
						return '<span style="font-weight:bold" class="text-aqua">' +full["expiration"]+ '</span>';
					}				
	         	}},
				{ 'data': 'owner_name' }, 
				{ 'data': 'routers'}, 
				{ 'data': 'customer_id','render': function (data, type, full, meta){
					
					var expiration = full['expiration'];
					var dateExp = new Date(expiration);
					var dayExp = ("0" + dateExp.getDate()).slice(-2) - 5;
					var monthExp = ("0" + (dateExp.getMonth())).slice(-2);
					var yearExp = dateExp.getFullYear();
					var minRecharge = timeConverter(mktime(monthExp,dayExp,yearExp));

					if ( full["expiration"] == "0000-00-00") {
						return '<a style="width:80px" href="#" style="color:red;font-weight:bold" class="btn btn-default btn-sm disabled">' + recharge + '</a>';
					}else if(today < minRecharge)	{
						return '<a style="width:80px" href="#" onclick="json_remove_recharge();" style="color:red;font-weight:bold" class="btn btn-default btn-sm">' + recharge + '</a>';					
					}else{
						return '<a style="width:80px" href="index.php?page=prepaid/recharge-user/' + $('<div/>').text(data).html() + '" title="RECHARGE THIS HOTSPOT MEMBER" class="btn btn-primary btn-sm">' + recharge + '</a>';	
					}		
	         	}},			
				{ 'data': 'customer_id','render': function (data, type, full, meta){				
						return '<a href="index.php?page=prepaid/hotspot-edit/' + full['id'] + '" title="EDIT THIS PREPAID HOTSPOT MEMBER" style="color:#fff;font-size:17px;width:30px;height:30px;" class="btn btn-info btn-sm fa fa-pencil-square-o" aria-hidden="true"></a><a href="index.php?page=prepaid/print-invoice/' + $('<div/>').text(data).html() + '" title="PRINT MEMBER INVOICE" target="_blank" style="color:#fff;font-size:17px;width:30px;height:30px;" class="btn btn-success btn-sm fa fa-print" aria-hidden="true"></a><a onclick="json_remove_db()" href="index.php?page=prepaid/delete/' + full['id'] + '" title="REMOVE THIS HOTSPOT MEMBER" style="color:#fff;font-size:17px;width:30px;height:30px;" class="btn btn-warning btn-sm fa fa-trash" aria-hidden="true"></a>';
	         	}}
			]
	   });	
	
	
		// prepaid-pppoe
	   $('#prepaid-pppoe').dataTable({
	      	"ajax": "index.php?page=get-data/prepaid-pppoe",
			"deferRender": true,
			"aaSorting": [[ 4, "desc" ]],		
			'columnDefs': [{
		        'targets': 0,
		        'searchable':false,
		        'orderable':false,
		        'render': function (data, type, full, meta){
		             return '<center><input type="checkbox" name="checked[]" value="' 
		                + $('<div/>').text(data).html() + '"></center>';
		         }
	      	}],

			"columns": [
				{ 'data': 'id' }, 
				{ 'data': 'username' },
				{ 'data': 'namebp' }, 
				{ 'data': 'type' }, 
				{ 'data': 'recharged_on','render': function (data, type, full, meta){
					if ( full["recharged_on"] == "0000-00-00") {
						return '<span style="font-weight:bold" class="text-red">Since Created</span>';
					}else{
						return '<span style="font-weight:bold" class="text-aqua">' +full["recharged_on"]+ '</span>';
					}				
	         	}},			
				{ 'data': 'expiration','render': function (data, type, full, meta){
					if ( full["expiration"] == "0000-00-00") {
						return '<span style="font-weight:bold" class="text-aqua">Unlimited</span>';
					}else if ( full["expiration"] <= today) {
						return '<span style="font-weight:bold" class="text-red">' +full["expiration"]+ '</span>';
					}else{
						return '<span style="font-weight:bold" class="text-aqua">' +full["expiration"]+ '</span>';
					}				
	         	}},
				{ 'data': 'owner_name' }, 
				{ 'data': 'routers'}, 
				{ 'data': 'customer_id','render': function (data, type, full, meta){
					
					var expiration = full['expiration'];
					var dateExp = new Date(expiration);
					var dayExp = ("0" + dateExp.getDate()).slice(-2) - 5;
					var monthExp = ("0" + (dateExp.getMonth())).slice(-2);
					var yearExp = dateExp.getFullYear();
					var minRecharge = timeConverter(mktime(monthExp,dayExp,yearExp));

					if ( full["expiration"] == "0000-00-00") {
						return '<a style="width:80px" href="#" style="color:red;font-weight:bold" class="btn btn-default btn-sm disabled">' + recharge + '</a>';
					}else if(today < minRecharge)	{
						return '<a style="width:80px" href="#" onclick="json_remove_recharge();" style="color:red;font-weight:bold" class="btn btn-default btn-sm">' + recharge + '</a>';					
					}else{	
						return '<a style="width:80px" href="index.php?page=prepaid/recharge-user/' + $('<div/>').text(data).html() + '" title="RECHARGE THIS PPPOE MEMBER" class="btn btn-primary btn-sm">' + recharge + '</a>';	
					}		
	         	}},			
				{ 'data': 'customer_id','render': function (data, type, full, meta){
						return '<a href="index.php?page=prepaid/pppoe-edit/' + full['id'] + '" title="EDIT THIS PREPAID PPPOE MEMBER" style="color:#fff;font-size:17px;width:30px;height:30px;" class="btn btn-info btn-sm fa fa-pencil-square-o" aria-hidden="true"></a><a href="index.php?page=prepaid/print-invoice/' + $('<div/>').text(data).html() + '" title="PRINT MEMBER INVOICE" target="_blank" style="color:#fff;font-size:17px;width:30px;height:30px;" class="btn btn-success btn-sm fa fa-print" aria-hidden="true"></a><a onclick="json_remove_db()" href="index.php?page=prepaid/delete/' + full['id'] + '" title="REMOVE THIS PPPOE MEMBER" style="color:#fff;font-size:17px;width:30px;height:30px;" class="btn btn-warning btn-sm fa fa-trash" aria-hidden="true"></a>';
	         	}}
			]		
	   });	


		// hotspot-list
	   $('#hotspot-list').dataTable({
	      	"ajax": "index.php?page=get-data/hotspot-list",
			"deferRender": true,
			"aaSorting": [[ 4, "desc" ]],		
			'columnDefs': [{
		        'targets': 0,
		        'searchable':false,
		        'orderable':false,
		        'render': function (data, type, full, meta){
		             return '<center><input type="checkbox" name="checked[]" value="' 
		                + full['.id'] + '"></center>';
		         }
	      	}],

			"columns": [
				{ 'data': '.id' },
				{ 'data': 'name' },
				{ 'data': 'profile','render': function (data, type, full, meta){
					if ( !full["profile"]) {
						return '<span style="font-weight:bold" class="text-aqua">Empty</span>';					
					}else{
						return '<span>' +full["profile"]+ '</span>';
					}			 
	        	}},
				{ 'data': 'uptime' },
				{ 'data': 'limit-uptime','render': function (data, type, full, meta){
					if ( full["limit-uptime"] == '00:00:05') {
						return '<span style="width:65px;color:red;font-weight:bold" class="btn btn-default btn-sm disabled">Expire</span>';
					}else if ( !full["limit-uptime"]) {
						return '<span style="font-weight:bold" class="text-aqua">Unlimited</span>';					
					}else{
						return '<span>' +full["limit-uptime"]+ '</span>';
					}			 
	        	}},
				{ 'data': 'bytes-out','render': function formatBytes(bytes,decimals) {
					if(bytes == 0) return '0 Bytes';
					var k = 1024,
					dm = decimals || 2,
					sizes = ['Bytes', 'KB', 'MB', 'GB', 'TB', 'PB', 'EB', 'ZB', 'YB'],
					i = Math.floor(Math.log(bytes) / Math.log(k));
					return parseFloat((bytes / Math.pow(k, i)).toFixed(dm)) + ' ' + sizes[i];
				}},	
				{ 'data': 'bytes-in','render': function formatBytes(bytes,decimals) {
					if(bytes == 0) return '0 Bytes';
					var k = 1024,
					dm = decimals || 2,
					sizes = ['Bytes', 'KB', 'MB', 'GB', 'TB', 'PB', 'EB', 'ZB', 'YB'],
					i = Math.floor(Math.log(bytes) / Math.log(k));
					return parseFloat((bytes / Math.pow(k, i)).toFixed(dm)) + ' ' + sizes[i];
				}},	
				{ 'data': 'limit-bytes-total','render': function (data, type, full, meta){
					if ( full["limit-bytes-total"] == '1024') {
						return '<span style="width:65px;color:red;font-weight:bold" class="btn btn-default btn-sm disabled">Expire</span>';
					}else if ( !full["limit-bytes-total"]) {
						return '<span style="font-weight:bold" class="text-aqua">Unlimited</span>';					
					}else{
						return '<span>' +full["limit-bytes-total"]+ '</span>';
					}
	        	}},			
				{ 'data': 'disabled','render': function (data, type, full, meta){
					if ( full["profile"] == 'profile.expire' || full["limit-uptime"] == '00:00:05') {
						return '<span style="width:65px;color:red;font-weight:bold" class="btn btn-default btn-sm disabled">Expire</span>';
					}else if ( full["disabled"] == 'false') {
						return '<a href="index.php?page=mikrotik/hotspot-disable-user&id=' + full['.id'] + '&name=' + full['name'] + '" title="DISABLE THIS USER" style="color:#fff;font-size:17px;width:30px;height:30px;"><span style="width:65px;" class="btn btn-primary btn-sm cdelete">Enable</span></a>';
					}else{
						return '<a href="index.php?page=mikrotik/hotspot-enable-user&id=' + full['.id'] + '&name=' + full['name'] + '" title="ENABLE THIS USER" style="color:#fff;font-size:17px;width:30px;height:30px;"><span style="width:65px;" class="btn btn-danger btn-sm cdelete">Disable</span></a>';			 
					}			 
	        	}},
				{ 'data': 'comment','render': function (data, type, full, meta){
					if ( !full["comment"]) {
						return '<span></span>';					
					}else{
						return '<span>' +full["comment"]+ '</span>';
					}			 
	        	}},		 
				{ 'data': '.id','render': function (data, type, full, meta){				
						return '<a href="index.php?page=mikrotik/hotspot-edit-user&id=' + full['.id'] + '&name=' + full['name'] + '" title="EDIT THIS USER" style="color:#fff;font-size:17px;width:30px;height:30px;" class="btn btn-info btn-sm fa fa-pencil-square-o" aria-hidden="true"></a><a onclick="json_remove_api()" href="index.php?page=mikrotik/hotspot-remove-user&id=' + full['.id'] + '&name=' + full['name'] + '" title="REMOVE THIS USER" style="color:#fff;font-size:17px;width:30px;height:30px;" class="btn btn-warning btn-sm fa fa-trash" aria-hidden="true"></a>';
	        	}}
			]		
	   });
	
	
		// hotspot-online
	    $('#hotspot-online').dataTable({
	      	"ajax": "index.php?page=get-data/hotspot-online",
			"deferRender": true,
			"aaSorting": [[ 2, "desc" ]],		
			'columnDefs': [{
		         'targets': 0,
		         'searchable':false,
		         'orderable':false,
		         'render': function (data, type, full, meta){
		             return '<center><input type="checkbox" name="checked[]" value="' 
		                + full['.id'] + '"></center>';
		         }
	      	}],

			"columns": [
				{ 'data': '.id' },
				{ 'data': 'user' },
				{ 'data': 'address','type': 'ip-address' },
				{ 'data': 'mac-address' },
				{ 'data': 'uptime' },
				{ 'data': 'limit-uptime','render': function (data, type, full, meta){
					if ( !full["session-time-left"]) {
						return '<span style="font-weight:bold" class="text-aqua">Unlimited</span>';					
					}else{
						return '<span>' +full["session-time-left"]+ '</span>';
					}			 
	         	}},
				{ 'data': 'limit-bytes-total','render': function (data, type, full, meta){
					if ( !full["limit-bytes-total"]) {
						return '<span style="font-weight:bold" class="text-aqua">Unlimited</span>';					
					}else{
						return '<span>' +full["limit-bytes-total"]+ '</span>';
					}
	        	 }},
				{ 'data': 'server' },			
				{ 'data': '.id','render': function (data, type, full, meta){				
						return '<a onclick="json_remove_api()" href="index.php?page=mikrotik/hotspot-end-session&id=' + full['.id'] + '&name=' + full['user'] + '" title="END THIS USER SESSION" style="color:#fff;font-size:17px;width:30px;height:30px;" class="btn btn-danger btn-sm fa fa-ban" aria-hidden="true"></a>';
	         	}}
			]		
	   });	
	
	
		// hotspot-expire
	   $('#hotspot-expire').dataTable({
	      	"ajax": "index.php?page=get-data/hotspot-expire",
			"deferRender": true,
			"aaSorting": [[ 1, "desc" ]],		
			'columnDefs': [{
		        'targets': 0,
		        'searchable':false,
		        'orderable':false,
		        'render': function (data, type, full, meta){
		             return '<center><input type="checkbox" name="checked[]" value="' 
		                + full['.id'] + '"></center>';
		        }
	      	}],

			"columns": [
				{ 'data': '.id' },
				{ 'data': 'name' },
				{ 'data': 'profile','render': function (data, type, full, meta){
					if ( !full["profile"]) {
						return '<span style="font-weight:bold" class="text-aqua">Empty</span>';					
					}else{
						return '<span>' +full["profile"]+ '</span>';
					}			 
	         	}},
				{ 'data': 'uptime' }, 
				{ 'data': 'limit-uptime','render': function (data, type, full, meta){
					if ( full["limit-uptime"] == '00:00:05') {
						return '<span style="width:65px;color:red;font-weight:bold" class="btn btn-default btn-sm disabled">Expire</span>';
					}else if ( !full["limit-uptime"]) {
						return '<span style="font-weight:bold" class="text-aqua">Unlimited</span>';					
					}else{
						return '<span>' +full["limit-uptime"]+ '</span>';
					}			 
	         	}},
				{ 'data': 'limit-bytes-total','render': function (data, type, full, meta){
					if ( full["limit-bytes-total"] == '1024') {
						return '<span style="width:65px;color:red;font-weight:bold" class="btn btn-default btn-sm disabled">Expire</span>';
					}else if ( !full["limit-bytes-total"]) {
						return '<span style="font-weight:bold" class="text-aqua">Unlimited</span>';					
					}else{
						return '<span>' +full["limit-bytes-total"]+ '</span>';
					}
	         	}},			
				{ 'data': 'disabled','render': function (data, type, full, meta){				
						return '<span style="width:65px;color:red;font-weight:bold" class="btn btn-default btn-sm disabled">Expire</span>';
	         	}},
				{ 'data': 'comment','render': function (data, type, full, meta){
					if ( !full["comment"]) {
						return '<span></span>';					
					}else{
						return '<span>' +full["comment"]+ '</span>';
					}			 
	         	}},
				{ 'data': '.id','render': function (data, type, full, meta){				
						return '<a onclick="json_remove_api()" href="index.php?page=mikrotik/hotspot-remove-expire&id=' + full['.id'] + '&name=' + full['name'] + '" title="REMOVE THIS EXPIRE USER" style="color:#fff;font-size:17px;width:30px;height:30px;" class="btn btn-warning btn-sm fa fa-trash" aria-hidden="true"></a>';
	         	}}
			]		
	   });	
	
	
		// pppoe-list
	   $('#pppoe-list').dataTable({
	      	"ajax": "index.php?page=get-data/pppoe-list",
			"deferRender": true,
			"aaSorting": [[ 4, "desc" ]],		
			'columnDefs': [{
		        'targets': 0,
		        'searchable':false,
		        'orderable':false,
		        'render': function (data, type, full, meta){
		             return '<center><input type="checkbox" name="checked[]" value="' 
		                + full['.id'] + '"></center>';
		        }
	      	}],

			"columns": [
				{ 'data': '.id' },
				{ 'data': 'name' },
				{ 'data': 'remote-address','type': 'ip-address','render': function (data, type, full, meta){
					if ( full["profile"] == 'profile.expire') {
						return '<span>pool.expire</span>';
					}else if ( !full["remote-address"] || full["remote-address"] == '0.0.0.0') {
						return '<span>From DHCP</span>';
					}else{
						return '<span>' +full["remote-address"]+ '</span>';
					}			 
	         	}},
				{ 'data': 'service' }, 
				{ 'data': 'profile','render': function (data, type, full, meta){
					if ( !full["profile"]) {
						return '<span style="font-weight:bold" class="text-aqua">Empty</span>';
					}else{
						return '<span>' +full["profile"]+ '</span>';
					}			 
	         	}},			
				{ 'data': 'last-logged-out','render': function (data, type, full, meta){
					if ( full["profile"] == 'profile.expire') {
						return '<span style="width:65px;color:red;font-weight:bold" class="btn btn-default btn-sm disabled">Expire</span>';
					}else if ( full["last-logged-out"] == 'jan/01/1970 00:00:00') {
						return '<span style="font-weight:bold" class="text-aqua">Never Login</span>';
					}else{
						return '<span>' +full["profile"]+ '</span>';
					}			 
	         	}},			
				{ 'data': 'disabled','render': function (data, type, full, meta){
					if ( full["profile"] == 'profile.expire') {
						return '<span style="width:65px;color:red;font-weight:bold" class="btn btn-default btn-sm disabled">Expire</span>';
					}else if ( full["disabled"] == 'false') {
						return '<a href="index.php?page=mikrotik/pppoe-disable-user&id=' + full['.id'] + '&name=' + full['name'] + '" title="DISABLE THIS USER" style="color:#fff;font-size:17px;width:30px;height:30px;"><span style="width:65px;" class="btn btn-primary btn-sm cdelete">Enable</span></a>';
					}else{
						return '<a href="index.php?page=mikrotik/pppoe-enable-user&id=' + full['.id'] + '&name=' + full['name'] + '" title="ENABLE THIS USER" style="color:#fff;font-size:17px;width:30px;height:30px;"><span style="width:65px;" class="btn btn-danger btn-sm cdelete">Disable</span></a>';			 
					}			 
	         	}},
				{ 'data': 'comment','render': function (data, type, full, meta){
					if ( !full["comment"]) {
						return '<span></span>';					
					}else{
						return '<span>' +full["comment"]+ '</span>';
					}			 
	         	}}, 		 
				{ 'data': '.id','render': function (data, type, full, meta){				
						return '<a href="index.php?page=mikrotik/pppoe-edit-user&id=' + full['.id'] + '&name=' + full['name'] + '" title="EDIT THIS USER" style="color:#fff;font-size:17px;width:30px;height:30px;" class="btn btn-info btn-sm fa fa-pencil-square-o" aria-hidden="true"></a><a onclick="json_remove_api()" href="index.php?page=mikrotik/pppoe-remove-user&id=' + full['.id'] + '&name=' + full['name'] + '" title="REMOVE THIS USER" style="color:#fff;font-size:17px;width:30px;height:30px;" class="btn btn-warning btn-sm fa fa-trash" aria-hidden="true"></a>';
	         	}}
			]		
	   });	
	
	
		// pppoe-online
	    $('#pppoe-online').dataTable({
	      	"ajax": "index.php?page=get-data/pppoe-online",
			"deferRender": true,
			"aaSorting": [[ 4, "desc" ]],		
			'columnDefs': [{
		        'targets': 0,
		        'searchable':false,
		        'orderable':false,
		        'render': function (data, type, full, meta){
		             return '<center><input type="checkbox" name="checked[]" value="' 
		                + full['.id'] + '"></center>';
		        }
	      	}],

			"columns": [
				{ 'data': '.id' },
				{ 'data': 'name' },
				{ 'data': 'service' },
				{ 'data': 'caller-id' },
				{ 'data': 'address','type': 'ip-address' },
				{ 'data': 'uptime' },
				{ 'data': '.id','render': function (data, type, full, meta){				
						return '<a onclick="json_remove_api()" href="index.php?page=mikrotik/pppoe-end-session&id=' + full['.id'] + '&name=' + full['name'] + '" title="REMOVE THIS USER SESSION" style="color:#fff;font-size:17px;width:30px;height:30px;" class="btn btn-warning btn-sm fa fa-trash" aria-hidden="true"></a>';

	         	}}
			]		
	   });	


		// pppoe-expire
	    $('#pppoe-expire').dataTable({
	      	"ajax": "index.php?page=get-data/pppoe-expire",
			"deferRender": true,
			"aaSorting": [[ 4, "desc" ]],		
			'columnDefs': [{
		        'targets': 0,
		        'searchable':false,
		        'orderable':false,
		        'render': function (data, type, full, meta){
		             return '<center><input type="checkbox" name="checked[]" value="' 
		                + full['.id'] + '"></center>';
		        }
	      	}],

			"columns": [
				{ 'data': '.id' },
				{ 'data': 'name' },
				{ 'data': 'service' }, 
				{ 'data': 'profile','render': function (data, type, full, meta){
					if ( !full["profile"]) {
						return '<span style="font-weight:bold" class="text-aqua">Empty</span>';					
					}else{
						return '<span>' +full["profile"]+ '</span>';
					}			 
	         	}},			
				{ 'data': 'last-logged-out' },			
				{ 'data': 'disabled','render': function (data, type, full, meta){
					return '<span style="width:65px;color:red;font-weight:bold" class="btn btn-default btn-sm disabled">Expire</span>';
	         	}},
				{ 'data': 'comment','render': function (data, type, full, meta){
					if ( !full["comment"]) {
						return '<span></span>';					
					}else{
						return '<span>' +full["comment"]+ '</span>';
					}			 
	         	}},		 
				{ 'data': '.id','render': function (data, type, full, meta){				
						return '<a onclick="json_remove_api()" href="index.php?page=mikrotik/pppoe-remove-expire&id=' + full['.id'] + '&name=' + full['name'] + '" title="REMOVE THIS EXPIRE USER" style="color:#fff;font-size:17px;width:30px;height:30px;" class="btn btn-warning btn-sm fa fa-trash" aria-hidden="true"></a>';
	         	}}
			]		
	   });	
	
	
		// scheduler
	    $('#scheduler-list').dataTable({
	      	"ajax": "index.php?page=get-data/scheduler-list",
			"deferRender": true,
			"aaSorting": [[ 6, "asc" ]],		
			'columnDefs': [{
		        'targets': 0,
		        'searchable':false,
		        'orderable':false,
		        'render': function (data, type, full, meta){
		             return '<center><input type="checkbox" name="checked[]" value="' 
		                + full['.id'] + '"></center>';
		        }
	      	}],

			"columns": [
				{ 'data': '.id' }, 
				{ 'data': 'name' },
				{ 'data': 'owner' }, 
				{ 'data': 'start-date' }, 
				{ 'data': 'start-time' }, 
				{ 'data': 'interval' }, 
				{ 'data': 'disabled','render': function (data, type, full, meta){
					if ( full["disabled"] == 'true') {
						return '<span></span>';
					}else{
						return '<span>' + full["next-run"] + '</span>';		 
					}			 
	         	}}, 
				{ 'data': 'disabled','render': function (data, type, full, meta){
					if ( full["disabled"] == 'false') {
						return '<a href="index.php?page=mikrotik/enable-scheduler&id=' + full['.id'] + '&name=' + full['name'] + '" title="ENABLE THIS SCHEDULER" style="color:#fff;font-size:17px;width:30px;height:30px;"><span style="width:65px;" class="btn btn-primary btn-sm cdelete">Enable</span></a>';
					}else{
						return '<a href="index.php?page=mikrotik/disable-scheduler&id=' + full['.id'] + '&name=' + full['name'] + '" title="DISABLE THIS SCHEDULER" style="color:#fff;font-size:17px;width:30px;height:30px;"><span style="width:65px;" class="btn btn-danger btn-sm cdelete">Disable</span></a>';			 
					}			 
	         	}},			
				{ 'data': '.id','render': function (data, type, full, meta){				
						return '<a href="index.php?page=mikrotik/edit-scheduler&id=' + full['.id'] + '&name=' + full['name'] + '" title="EDIT THIS SCHEDULER" style="color:#fff;font-size:17px;width:30px;height:30px;" class="btn btn-info btn-sm fa fa-pencil-square-o" aria-hidden="true"></a><a onclick="json_remove_api()" href="index.php?page=mikrotik/remove-scheduler&id=' + full['.id'] + '&name=' + full['name'] + '" title="REMOVE THIS SCHEDULER" style="color:#fff;font-size:17px;width:30px;height:30px;" class="btn btn-warning btn-sm fa fa-trash" aria-hidden="true"></a>';
	         	}}
			]		
	   });		
	
	
		// usm-users
	   $('#usm-users').dataTable({
	      	"ajax": "index.php?page=get-data/usm-users",
			"deferRender": true,
			"aaSorting": [[ 1, "desc" ]],		
			'columnDefs': [{
		        'targets': 0,
		        'searchable':false,
		        'orderable':false,
		        'render': function (data, type, full, meta){
		             return '<center><input type="checkbox" name="checked[]" value="' 
		                + full['.id'] + '"></center>';
		        }
	      	}],
			"columns": [
				{ 'data': '.id' }, 
				{ 'data': 'username' },
				{ 'data': 'password' }, 
				{ 'data': 'customer' }, 
				{ 'data': 'actual-profile','render': function (data, type, full, meta){
					if ( !full["actual-profile"]) {
						return '<span></span>';					
					}else{
						return '<span>' +full["actual-profile"]+ '</span>';
					}			 
	         	}},
				{ 'data': 'last-seen' }, 
				{ 'data': 'disabled','render': function (data, type, full, meta){
					if ( full["disabled"] == 'false') {
						return '<a href="index.php?page=mikrotik/usm-users-disable&id=' + full['.id'] + '&name=' + full['username'] + '" title="DISABLE THIS USER" style="color:#fff;font-size:17px;width:30px;height:30px;"><span style="width:65px;" class="btn btn-primary btn-sm cdelete">Enable</span></a>';
					}else{
						return '<a href="index.php?page=mikrotik/usm-users-enable&id=' + full['.id'] + '&name=' + full['username'] + '" title="DISABLE THIS USER" style="color:#fff;font-size:17px;width:30px;height:30px;"><span style="width:65px;" class="btn btn-danger btn-sm cdelete">Disable</span></a>';			 
					}			 
	         	}},			
				{ 'data': '.id','render': function (data, type, full, meta){				
						return '<a href="index.php?page=mikrotik/usm-users-edit&id=' + full['.id'] + '&name=' + full['username'] + '" title="EDIT THIS USER" style="color:#fff;font-size:17px;width:30px;height:30px;" class="btn btn-info btn-sm fa fa-pencil-square-o" aria-hidden="true"></a><a onclick="json_remove_api()" href="index.php?page=mikrotik/usm-users-remove&id=' + full['.id'] + '&name=' + full['username'] + '" title="REMOVE THIS USER" style="color:#fff;font-size:17px;width:30px;height:30px;" class="btn btn-warning btn-sm fa fa-trash" aria-hidden="true"></a>';
	         	}}
			]		
	   });	
	
	
		// usm-logs
	   $('#usm-logs').dataTable({
	      	"ajax": "index.php?page=get-data/usm-logs",
			"deferRender": true,
			"aaSorting": [[ 1, "desc" ]],		
			'columnDefs': [{
		        'targets': 0,
		        'searchable':false,
		        'orderable':false,
		        'render': function (data, type, full, meta){
		             return '<center><input type="checkbox" name="checked[]" value="' 
		                + full['.id'] + '"></center>';
		        }
	      	}],

			"columns": [
				{ 'data': '.id' }, 
				{ 'data': 'user-orig' },
				{ 'data': 'customer' }, 
				{ 'data': 'calling-station-id' }, 
				{ 'data': 'user-ip','type': 'ip-address' }, 
				{ 'data': 'host-ip','type': 'ip-address' }, 
				{ 'data': 'status','render': function (data, type, full, meta){
					if ( full["status"] == 'authorization-failed') {
						return '<span style="width:65px;" class="btn btn-danger btn-sm disabled">Failed</span>';
					}else{
						return '<span style="width:65px;" class="btn btn-primary btn-sm disabled">Success</span>';			 
					}			 
	         	}},			
				{ 'data': '.id','render': function (data, type, full, meta){				
						return '<a onclick="json_remove_api()" href="index.php?page=mikrotik/usm-logs-remove&id=' + full['.id'] + '&name=' + full['user-orig'] + '" title="REMOVE THIS LOG" style="color:#fff;font-size:17px;width:30px;height:30px;" class="btn btn-warning btn-sm fa fa-trash" aria-hidden="true"></a>';
	         	}}
			]		
	   });	
	
	
		// usm-sessions
	   $('#usm-sessions').dataTable({
	      	"ajax": "index.php?page=get-data/usm-sessions",
			"deferRender": true,
			"aaSorting": [[ 1, "desc" ]],		
			'columnDefs': [{
		        'targets': 0,
		        'searchable':false,
		        'orderable':false,
		        'render': function (data, type, full, meta){
		             return '<center><input type="checkbox" name="checked[]" value="' 
		                + full['.id'] + '"></center>';
		        }
	      	}],

			"columns": [
				{ 'data': '.id' }, 
				{ 'data': 'customer' },
				{ 'data': 'user' }, 
				{ 'data': 'calling-station-id' }, 
				{ 'data': 'user-ip','type': 'ip-address' }, 
				{ 'data': 'host-ip','type': 'ip-address' }, 
				{ 'data': 'from-time' },
				{ 'data': 'till-time' },
				{ 'data': 'uptime' },
				{ 'data': 'active','render': function (data, type, full, meta){
					if ( full["active"] == 'false') {
						return '<span style="width:65px;" class="btn btn-danger btn-sm disabled">Inactive</span>';
					}else{
						return '<span style="width:65px;" class="btn btn-primary btn-sm disabled">Active</span>';
					}			 
	         	}},
				{ 'data': '.id','render': function (data, type, full, meta){				
						return '<a onclick="json_remove_api()" href="index.php?page=mikrotik/usm-sessions-remove&id=' + full['.id'] + '&name=' + full['user'] + '" title="REMOVE THIS SESSION" style="color:#fff;font-size:17px;width:30px;height:30px;" class="btn btn-warning btn-sm fa fa-trash" aria-hidden="true"></a>';

	         	}}
			]		
	   });		
	
	
		// c-usm-users
	   $('#c-usm-users').dataTable({
	      	"ajax": "index.php?page=get-data/c-usm-users",
			"deferRender": true,
			"aaSorting": [[ 1, "desc" ]],
			'columnDefs': [{
		        'targets': 0,
		        'searchable':false,
		        'orderable':false,
		        'render': function (data, type, full, meta){
		             return '<center><input type="checkbox" name="checked[]" value="' 
		                + full['.id'] + '"></center>';
		        }
	      	}],

			"columns": [
				{ 'data': '.id' }, 
				{ 'data': 'username' },
				{ 'data': 'password' }, 
				{ 'data': 'customer' }, 
				{ 'data': 'actual-profile','render': function (data, type, full, meta){
					if ( !full["actual-profile"]) {
						return '<span></span>';					
					}else{
						return '<span>' +full["actual-profile"]+ '</span>';
					}			 
	         	}},
				{ 'data': 'last-seen' }, 
				{ 'data': 'disabled','render': function (data, type, full, meta){
					if ( full["disabled"] == 'false') {
						return '<a href="index.php?page=user-manager/c-users-disable&id=' + full['.id'] + '&name=' + full['username'] + '" title="DISABLE THIS USER" style="color:#fff;font-size:17px;width:30px;height:30px;"><span style="width:65px;" class="btn btn-primary btn-sm cdelete">Enable</span></a>';
					}else{
						return '<a href="index.php?page=user-manager/c-users-enable&id=' + full['.id'] + '&name=' + full['username'] + '" title="ENABLE THIS USER" style="color:#fff;font-size:17px;width:30px;height:30px;"><span style="width:65px;" class="btn btn-danger btn-sm cdelete">Disable</span></a>';			 
					}			 
	         	}},			
				{ 'data': '.id','render': function (data, type, full, meta){				
						return '<a href="index.php?page=user-manager/c-users-edit&id=' + full['.id'] + '&name=' + full['username'] + '" title="EDIT THIS USER" style="color:#fff;font-size:17px;width:30px;height:30px;" class="btn btn-info btn-sm fa fa-pencil-square-o" aria-hidden="true"></a><a onclick="json_remove_api()" href="index.php?page=user-manager/c-users-remove&id=' + full['.id'] + '&name=' + full['username'] + '" title="REMOVE THIS USER" style="color:#fff;font-size:17px;width:30px;height:30px;" class="btn btn-warning btn-sm fa fa-trash" aria-hidden="true"></a>';
	         	}}
			]		
	   });	

		// c-usm-logs
	   $('#c-usm-logs').dataTable({
	      	"ajax": "index.php?page=get-data/c-usm-logs",
			"deferRender": true,
			"aaSorting": [[ 1, "desc" ]],		
			'columnDefs': [{
		        'targets': 0,
		        'searchable':false,
		        'orderable':false,
		        'render': function (data, type, full, meta){
		             return '<center><input type="checkbox" name="checked[]" value="' 
		                + full['.id'] + '"></center>';
		        }
	      	}],
			"columns": [
				{ 'data': '.id' }, 
				{ 'data': 'user-orig' },
				{ 'data': 'customer' }, 
				{ 'data': 'calling-station-id' }, 
				{ 'data': 'user-ip','type': 'ip-address' }, 
				{ 'data': 'host-ip','type': 'ip-address' }, 
				{ 'data': 'status','render': function (data, type, full, meta){
					if ( full["status"] == 'authorization-failed') {
						return '<span style="width:65px;" class="btn btn-danger btn-sm disabled">Failed</span>';
					}else{
						return '<span style="width:65px;" class="btn btn-primary btn-sm disabled">Success</span>';			 
					}			 
	         	}},			
				{ 'data': '.id','render': function (data, type, full, meta){				
						return '<a onclick="json_remove_api()" href="index.php?page=mikrotik/c-logs-remove&id=' + full['.id'] + '&name=' + full['user-orig'] + '" title="REMOVE THIS LOG" style="color:#fff;font-size:17px;width:30px;height:30px;" class="btn btn-warning btn-sm fa fa-trash" aria-hidden="true"></a>';
	         	}}
			]		
	   });	

		// c-usm-sessions
	   $('#c-usm-sessions').dataTable({
	      	"ajax": "index.php?page=get-data/c-usm-sessions",
			"deferRender": true,
			"aaSorting": [[ 1, "desc" ]],		
			'columnDefs': [{
		        'targets': 0,
		        'searchable':false,
		        'orderable':false,
		        'render': function (data, type, full, meta){
		             return '<center><input type="checkbox" name="checked[]" value="' 
		                + full['.id'] + '"></center>';
		        }
	      	}],

			"columns": [
				{ 'data': '.id' }, 
				{ 'data': 'customer' },
				{ 'data': 'user' }, 
				{ 'data': 'calling-station-id' }, 
				{ 'data': 'user-ip','type': 'ip-address' }, 
				{ 'data': 'host-ip','type': 'ip-address' }, 
				{ 'data': 'from-time' },
				{ 'data': 'till-time' },
				{ 'data': 'uptime' },
				{ 'data': 'active','render': function (data, type, full, meta){
					if ( full["active"] == 'false') {
						return '<span style="width:65px;" class="btn btn-danger btn-sm disabled">Inactive</span>';
					}else{
						return '<span style="width:65px;" class="btn btn-primary btn-sm disabled">Active</span>';
					}			 
	         	}},
				{ 'data': '.id','render': function (data, type, full, meta){				
						return '<a onclick="json_remove_api()" href="index.php?page=user-manager/c-sessions-remove&id=' + full['.id'] + '&name=' + full['user'] + '" title="REMOVE THIS SESSION" style="color:#fff;font-size:17px;width:30px;height:30px;" class="btn btn-warning btn-sm fa fa-trash" aria-hidden="true"></a>';
	         	}}
			]		
	   });
	});
});  