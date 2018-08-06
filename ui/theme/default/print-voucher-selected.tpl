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
	<form method="post" action="{$_url}manage-voucher/selected-voucher-print" class="no-print">
		<table width="100%" border="0" cellspacing="0" cellpadding="1" class="btn btn-default btn-sm">
			<br>
				<tr>
					<td >
						<select style="width:150px id="size" name="size" onchange="this.form.submit()">
							<option value="small" selected>- select print size -</option>
							<option value="small" name="small">SMALL : 32 pcs/A4</option>
							<option value="medium" name="medium">MEDIUM : 21 pcs/A4</option>							
						</select>
					</td>			
					<td>
						<button onclick="window.close();" style="margin-left:0;" type="button">CLOSE</button>
						<button style="margin-left:8px;float:right" type="button" id="actprint" class="btn btn-default btn-sm no-print">CLICK TO PRINT</button>
					</td>
					
				</tr>
		</table><hr>
	</form>
	<br/>
		<div id="printable">
			{foreach $v as $vs}
			{$jml = $jml + 1}
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
					margin-top:0px;
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
					margin-top: 1px;
					margin-left:-135px;					
				}
				.form2 {				
					font-size:15px;
					margin-top: 11px;
					margin-left:-135px;						
				}
				.form3 {				
					font-size:15px;
					margin-top: 12px;
					margin-left:-135px;					
				}				
				.qrcode img {
					width:105px;
					height:105px;
					margin-left:4px;
					margin-top:-50px;
				}
				.created {
					position:relative;
					font-size:11px;
					font-weight:normal;
					margin-left:-75px;
					margin-top:41px;
					text-align:center;
					z-index:9999;
				}
			</style>			
				{if {$vs['secret']} eq {$vs['code']}}
					<div class="box" style="background-image:url({$_theme}/images/voucher1.jpg);background-size: 258px 153px;">
				{else}
					<div class="box" style="background-image:url({$_theme}/images/voucher2.jpg);background-size: 258px 153px;">
				{/if}
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
					margin-top:0px;
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
					margin-top: -10px;
					margin-left:-100px;
				}
				.form2 {
					font-size:12px;
					margin-top: 11px;
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
					margin-top:-47px;
				}
				.created {
					position:relative;
					font-size:9px;
					font-weight:normal;
					margin-left:-35px;
					margin-top:35px;
					text-align:center;
					z-index:9999;
				}				
			</style>
			
				{if {$vs['secret']} eq {$vs['code']}}
					<div class="box" style="background-image:url({$_theme}/images/voucher1.jpg);background-size: 192px 125px;">
				{else}
					<div class="box" style="background-image:url({$_theme}/images/voucher2.jpg);background-size: 192px 125px;">	
				{/if}			
			{/if}		
			<div class="kanan">
				{if {$vs['secret']} eq {$vs['code']}}
					<div class="form1">{$vs['secret']}</div>
					<div style="text-transform:uppercase" class="form2">{$vs['type']}</div>
					<div class="form3">{$vs['price']}</div>
				{else}
					<div class="form1">{$vs['code']}</div>
					<div class="form2">{$vs['secret']}</div> 
					<div class="form3">{$vs['price']}</div>
				{/if}		
			</div>
			<div class="created">
				{if $vs['created_date'] neq '0000-00-00'}
					{date($_c['date_format'], strtotime($vs['created_date']))}
				{else}
					{date($_c['date_format'], date('Y-m-d'))}
				{/if}	
			</div>			
			<div class="kiri">
				<div class="qrcode" id="{$vs['code']}"></div>
				{if {$vs['secret']} eq {$vs['code']}}
					<script>
					var typeNumber = 0;
					var errorCorrectionLevel = 'L';
					var qr = qrcode(typeNumber, errorCorrectionLevel);
					qr.addData("http://{$vd['hotspot_domain']}/login?username={$vs['code']}&password={$vs['code']}");
					qr.make();
					document.getElementById("{$vs['code']}").innerHTML = qr.createImgTag();
					</script>
				{else}
					<script>
					var typeNumber = 0;
					var errorCorrectionLevel = 'L';
					var qr = qrcode(typeNumber, errorCorrectionLevel);
					qr.addData("http://{$vd['hotspot_domain']}/login?username={$vs['code']}&password={$vs['secret']}");
					qr.make();
					document.getElementById("{$vs['code']}").innerHTML = qr.createImgTag();
					</script>
				{/if}		
				</div>
					<div style="clear:both"></div>
			</div>
                {if $jml == $pagebreak}
                {$jml = 0}
					<p class="no-print" style="font-size: 10px"> ................ page break ................ </p>
                {/if}
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