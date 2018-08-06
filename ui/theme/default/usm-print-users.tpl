<!DOCTYPE html>
<html>
<head>
	<title>Print Voucher - {$_c['CompanyName']}</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="shortcut icon" href="{$_theme}/images/favicon.png" type="image/x-icon" />
	<script type="text/javascript" src="{$_theme}/assets/plugins/qrcode/qrcode.js"></script>
	<style>	
		html,
		body {
			font-family: "Lucida Sans Unicode", "Lucida Grande", sans-serif;
		}
		body,td,th {
			font-size: 12px;
			font-family: "Lucida Sans Unicode", "Lucida Grande", sans-serif;
		}
		page[size="A4"] {
			background: white;
			width: 21cm;
			height: 29.7cm;
			display: block;
			margin: 0 auto;
			margin-bottom: 0.5cm;
			
			html, body {
				width: 210mm;
				height: 297mm;
			}
		}
		@media print {
			@page { 
				size: auto;
				margin: 0.2cm;
			}
			body {
				margin:0;
				padding:0;
			}
			.page-break { display: block; page-break-before: always; }
			.no-print, .no-print *{	display: none !important; }
		}		
		* {
			-webkit-print-color-adjust: exact !important;
			color-adjust: exact !important;
		}
	</style>
</head>
<body>
<page size="A4">
		<form method="post" action="{$_url}mikrotik/usm-print-voucher" class="no-print">
		<table width="100%" border="0" cellspacing="0" cellpadding="1" class="btn btn-default btn-sm">
		<br>
			<tr>			
				<td style="width:220px;">Customer &nbsp;&nbsp;
					<select id="customer" name="customer" style="width:130px;height:21px;">
						<option value="0" selected>- select customer -</option>
						{foreach $customers as $customer}
						<option name="customer" value="{$customer['login']}">{$customer['login']}</option>
						{/foreach}
					</select>
				</td>
				<td style="width:200px;">Profile &nbsp;&nbsp;
					<select id="profile" name="profile" style="width:130px;height:21px;">
						<option value="0" selected>- select profile -</option>
						{foreach $profiles as $profile}
						<option name="profile" value="{$profile['name']}">{$profile['name']}</option>
						{/foreach}
					</select>
				</td>
				<td >
					<select id="size" name="size">
						<option value="small" selected>- select print size -</option>
						<option value="small" name="small">SMALL : 32 pcs/A4</option>
						<option value="medium" name="medium">MEDIUM : 21 pcs/A4</option>						
					</select>
				</td>				
				<td>
					<button style="margin-left:-5px;" type="submit" name="usm_print">SUBMIT</button>
					<button style="margin-left:8px;" type="button" id="actprint" class="btn btn-default btn-sm no-print">CLICK TO PRINT</button>
				</td>
            </tr>
        </table>
		<hr>
		</form>
		<br/>
		<div id="printable">
			{foreach $usm_print as $print_user}
			{if {$size} eq 'medium'}
			<style>
				.box {
					display: inline-block;
					height: 153px;
					width: 258px;
					background-repeat: no-repeat;
					background-position: center center;
					border-width: 1px;
					border-style: dashed;
					border-color: #999999;
					margin-top:3px;
				}
				.kanan {
					float: right;
					#width: 110px;
					margin-top: 51px;
					margin-left: 66px;
					font-family: "Lucida Sans Unicode", "Lucida Grande", sans-serif;
					#font-size: 13px;
					#font-weight: bold;
				}
				.kiri {
					display: inline-block;
					margin-top:38px;				
				}
				.form1 {				
					font-size:15px;
					margin-top: -3px;
					margin-left:-135px;					
				}
				.form2 {				
					font-size:15px;
					margin-top: 13px;
					margin-left:-135px;						
				}
				.form3 {				
					font-size:15px;
					margin-top: 14px;
					margin-left:-135px;					
				}				
				.qrcode img {
					width:110px;
					height:110px;
					margin-left:4px;
					margin-top:4px;
				}
			</style>
				{foreach $profiles as $profile}
					{if {$print_user['actual-profile']} eq {$profile['name']} }
						{if {$print_user['username']} eq {$print_user['password']}}
							<div class="box" style="background-image:url({$_theme}/images/voucher1.jpg);background-size: 258px 153px;">
						{else}
							<div class="box" style="background-image:url({$_theme}/images/voucher2.jpg);background-size: 258px 153px;">
						{/if}
					{/if}
				{/foreach}
			{else}
			<style>
				.box {
					display: inline-block;
					height: 125px;
					width: 192px;
					background-repeat: no-repeat;
					background-position: center center;
					border-width: 1px;
					border-style: dashed;
					border-color: #999999;
					margin-top:3px;
				}
				.kanan {
					float: right;
					#width: 110px;
					margin-top: 51px;
					margin-left: 66px;
					font-family: "Lucida Sans Unicode", "Lucida Grande", sans-serif;
				}
				.kiri {	
					display: inline-block;
					margin-top:38px;				
				}
				.form1 {
					font-size:12px;
					margin-top: -9px;
					margin-left:-100px;
				}
				.form2 {
					font-size:12px;
					margin-top: 10px;
					margin-left:-100px;
				}
				.form3 {
					font-size:12px;
					margin-top: 10px;
					margin-left:-100px;
				}				
				.qrcode img {
					width:85px;
					height:85px;
					margin-left:2px;
					margin-top:0px;
				}
			</style>			
				{foreach $profiles as $profile}
					{if {$print_user['actual-profile']} eq {$profile['name']} }
						{if {$print_user['username']} eq {$print_user['password']}}
							<div class="box" style="background-image:url({$_theme}/images/voucher1.jpg);background-size: 192px 125px;">
						{else}
							<div class="box" style="background-image:url({$_theme}/images/voucher2.jpg);background-size: 192px 125px;">	
						{/if}
					{/if}
				{/foreach}	
			{/if}
			<div class="kanan">
			{foreach $prices as $price}
				{if {$print_user['username']} eq {$print_user['password']}}
					<div class="form1">{$print_user['username']}</div> 
					<div class="form2">{$print_user['actual-profile']}</div>				
					<div class="form3">{$price['price']}</div>
				{else}
					<div class="form1">{$print_user['username']}</div> 
					<div class="form2">{$print_user['password']}</div>
					<div class="form3">{$price['price']}</div>
				{/if}
			{/foreach}
			</div>
			<div class="kiri">
				<div class="qrcode" id="{$print_user['username']}"></div>
				{if {$print_user['password']} eq {$print_user['username']}}
					<script>
					var typeNumber = 0;
					var errorCorrectionLevel = 'L';
					var qr = qrcode(typeNumber, errorCorrectionLevel);
					qr.addData("http://{$hs_domain}/login?username={$print_user['username']}&password={$print_user['username']}");
					qr.make();
					document.getElementById("{$print_user['username']}").innerHTML = qr.createImgTag();
					</script>
				{else}
					<script>
					var typeNumber = 0;
					var errorCorrectionLevel = 'L';
					var qr = qrcode(typeNumber, errorCorrectionLevel);
					qr.addData("http://{$hs_domain}/login?username={$print_user['username']}&password={$print_user['password']}");
					qr.make();
					document.getElementById("{$print_user['username']}").innerHTML = qr.createImgTag();
					</script>
				{/if}		
				</div>
					<div style="clear:both"></div>
			</div>
                {/foreach}
        </div>
</page>
<script src="{$_theme}/assets/jquery/jquery.min.js"></script>
{if isset($xfooter)}
    {$xfooter}
{/if}
<script>
    jQuery(document).ready(function() {
        // initiate layout and plugins
        $("#actprint").click(function() {
            window.print();
            return false;
        });
    });
</script>
</body>
</html>