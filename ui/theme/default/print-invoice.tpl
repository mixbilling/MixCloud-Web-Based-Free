<!DOCTYPE html>
<html>
<head>
    <title>{$_title}</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="{$_theme}/images/favicon.png" type="image/x-icon" />
	<link rel="stylesheet" href="{$_theme}/assets/bootstrap/css/bootstrap.min.css">
	<script type="text/javascript">
	function printpage() {
		window.print();  
	}
	</script>
    <style>
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
				margin: 0;
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
	.box {
		display: inline-block;
		height: 50%;
		width: 100%;
		background-repeat: no-repeat;
		background-position: center center;

		#border-bottom-width: 1px;
		#border-bottom-style: dashed;
		#border-bottom-color: #999999;
		margin-top:10px;
		padding:10px;
	}			
	
    .invoice-box {
        max-width: 800px;
        margin: auto;
        padding: 5px 10px 10px 10px;
        border: 2px solid #eee;
		border-radius:6px;
        box-shadow: 0 0 10px rgba(0, 0, 0, .15);
        font-size: 13px;
        #line-height: 24px;
        color: #555;
    }
    
    .invoice-box table {
        width: 100%;
        line-height: inherit;
        text-align: left;
    }
    
    .invoice-box table td {
        padding: 5px;
        vertical-align: top;
    }
    
    .invoice-box table tr td:nth-child(2) {
        text-align: right;
    }
    
    .invoice-box table tr.top table td {
        #padding-bottom: 20px;
    }
    
    .invoice-box table tr.top table td.title {
        font-size: 45px;
        line-height: 45px;
        color: #333;
    }
    
    .invoice-box table tr.information table td {
        padding-bottom: 10px;
    }
    
    .invoice-box table tr.heading td {
        background: #eee;
        border-bottom: 1px solid #ddd;
        font-weight: bold;
    }
    
    .invoice-box table tr.details td {
        padding-bottom: 20px;
    }
    
    .invoice-box table tr.item td{
        #border-bottom: 1px solid #eee;
    }
    
    .invoice-box table tr.item.last td {
        border-bottom: none;
    }
    
    .invoice-box table tr.total td:nth-child(2) {
        background-color:#fff;
        font-weight: bold;
    }
	
	table tr:nth-child(2n) {
		background: #ffffff;
	}	
    
    @media only screen and (max-width: 600px) {
        .invoice-box table tr.top table td {
            width: 100%;
            display: block;
            text-align: center;
        }
        
        .invoice-box table tr.information table td {
            width: 100%;
            display: block;
            text-align: center;
        }
    }
    
    /** RTL **/
    .rtl {
        direction: rtl;        
    }
    
    .rtl table {
        text-align: right;
    }
    
    .rtl table tr td:nth-child(2) {
        text-align: left;
    }
    </style>
</head>
<body topmargin="0" leftmargin="0" onload="printpage()">
<page size="A4">
<div class="box">
	<div class="col-sm-12">
		<div class="panel">
			<div class="panel-body">
				<div class="invoice-box">
					<table cellpadding="0" cellspacing="0">
						<tr>
							<table>
								<tr>
									<td>
										<small style="font-size:20px">{$_c['CompanyName']}</small><br>
										<small style="margin-left:2px;margin-top:0px;font-size:12px">{$_c['address']}</small><br>
										<small style="margin-left:2px;margin-top:-10px;font-size:12px">Mobile : {$_c['phone']}</small>
									</td>
									<td>
										<img style="width:250px;height:60px;margin-left:40px" src="{$_theme}/images/{$_c['show-logo']}">
									</td>
								</tr>
							</table>
						</tr>
						<tr style="background:#ffffff;" class="information">
							<td colspan="2">
								<table class="table display table-stripped" style="margin-top:5px;max-width:60%">
									<tr>
										<th style="width:25%">{$_L['To']}</th>
										<th style="width:25%">{$_L['Type']}</th>
										<th style="width:25%">{$_L['Payment']}</th>
										<th style="width:25%">{$_L['Due_Date']}</th>
									</tr>
									<tr>
										<td style="width:25%">{$tr['fullname']}</td>
										<td style="width:25%;text-align:left">{$tr['type']}</td>
										<td style="width:25%">{if $tr['expiration'] eq '0000-00-00'}-{else}{$payment}{/if}</td>
										<td style="width:25%">{if $tr['expiration'] eq '0000-00-00'}-{else}{date($_c['date_format'], strtotime($due_payment))}{/if}</td>										
									</tr>
								</table>
							</td>
							<td style="max-width:100%">
								<h4 style="position:absolute;text-align:right;font-weight:normal;border-top:solid 1px #dddddd;padding-top:0px;padding-bottom:5px;font-size:40px;right:45px;top:93px">#{$tr['invoice']}</h4>
								<h4 style="position:absolute;text-align:right;font-weight:normal;border-top:solid 1px #dddddd;padding-top:4px;padding-bottom:5px;font-size:13px;right:45px;top:138px">{$date_invoice}</h4>
							</td>
						</tr>
						
						<table class="table display table-stripped" style="margin-top:-10px;width:100%">
							<tr>
								<th>Information</th>
								<th style="text-align:right">Value</th>
							</tr>
							<tr>
								<td>{$tr['plan_name']}</td>
								<td>{$_c['currency_code']} {number_format($tr['price'],2,$_c['dec_point'],$_c['thousands_sep'])}</td>
							</tr>
							<tr>
								<td>
									{if {$tr['type']} eq 'PPPOE'}
										PPN 0%
									{else}
										PPN 0%
									{/if}	
								</td>
								<td>
									{$_c['currency_code']} {number_format($tr['ppn'],2,$_c['dec_point'],$_c['thousands_sep'])}
								</td>								
							</tr>
							<tr style="border-bottom:solid 1px #dddddd">
								<td></td>
								<td style="font-size:25px">Total : {$_c['currency_code']} {number_format($tr['total'],2,$_c['dec_point'],$_c['thousands_sep'])}</td>
							</tr>							
						</table>					

						<tr style="border-top:solid 1px #dddddd;" class="item last">
							<table style="margin-top:-19px;font-family:'Courier New'">
								<tr>
									<tr>
										<td>
											<b>{$_L['Cash_Payment']}</b><br>
											{$_c['CompanyName']}<br>
											{$_c['address']}<br>
											{$_L['Phone_Number']} : {$_c['phone']}
										</td>
										<td>
											<b>{$_L['Bank_Transfer']}</b><br>
											{$_c['bank_name']}<br>
											A/N : {$_c['acc_name']}<br>
											{$_L['Account_Number']} : {$_c['acc_number']}<br>										
										</td>
									</tr>
								</tr>
							</table>
						</tr>						
					</table>
					<hr style="margin-top:6px;margin-bottom:8px">
					<center style="font-size:13px">{$_L['Transfer_News']}</center>
				</div>
			</div>			
		</div>
	</div>
</div>
</page>
<script src="{$_theme}/assets/jquery/jquery.min.js"></script>
<script src="{$_theme}/assets/bootstrap/js/bootstrap.min.js"></script>
{if isset($xfooter)}
    {$xfooter}
{/if}
</body>
</html>