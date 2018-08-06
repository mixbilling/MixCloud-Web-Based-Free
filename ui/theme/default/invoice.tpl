{include file="sections/header.tpl"}

    <style>
    .invoice-box {
        max-width: 800px;
        margin: auto;
        padding: 5px 10px 10px 10px;
        border: 2px solid #eee;
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
        #border-top: 2px solid #eee;
        font-weight: bold;
		float:right;
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
	table tr:nth-child(2n){
	background: #ffffff;
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

			<div class="content-wrapper">
				<section class="content">
					<div class="row">
						<div class="col-sm-12">
							<div class="panel">
								<div class="panel-heading">PRINT INVOICE</div>
								<br>
								<center>
									<form class="form-horizontal" method="post" action="{$_url}prepaid/print" target="_blank">
										<input type="hidden" name="id" value="{$in['id']}">
										<button style="padding:6px" type="submit" class="btn btn-default btn-sm"><i class="fa fa-print"></i> {$_L['Click_Here_to_Print']}</button>
									{if $in['type'] eq 'Hotspot'}	
										<a href="{$_url}prepaid/hotspot" class="btn btn-success"><i class="ion-reply-all"></i>{$_L['Finish']}</a>
									{else}
										<a href="{$_url}prepaid/pppoe" class="btn btn-success"><i class="ion-reply-all"></i>{$_L['Finish']}</a>
									{/if}
									</form>
								</center>
								<div class="panel-body">
									<div class="invoice-box">
										<table cellpadding="0" cellspacing="0">
											<tr class="top">
												<td colspan="2">
													<table>
														<tr>
														<div style="margin-top:-5px">
															<td style="font-size:20px;class="title">
																{$_c['CompanyName']}<br>
																<small style="position:absolute;margin-left:2px;margin-top:0px;font-size:12px">{$_c['address']}</small><br>
																<small style="position:absolute;margin-left:2px;margin-top:-10px;font-size:12px">Mobile : {$_c['phone']}</small>
															</td>
															<td style="font-size:20px;class="title">
																<img style="width:250px;height:63px;position:absolute;margin-left:40px" src="{$_theme}/images/{$_c['show-logo']}">
															</td>														
														</div>
														</tr>
													</table>
												</td>
											</tr>
											<tr style="background:#ffffff;" class="information">
												<td colspan="2">
													<table class="table display table-stripped" style="margin-top:5px;max-width:100%">
														<tr>
															<th style="text-align:left;width:25%;background-color:#ffffff">{$_L['To']}</th>
															<th style="text-align:left;width:25%;background-color:#ffffff">{$_L['Type']}</th>
															<th style="text-align:left;width:25%;background-color:#ffffff">{$_L['Payment']}</th>
															<th style="text-align:left;width:25%;background-color:#ffffff">{$_L['Due_Date']}</th>
														</tr>
														<tr>
															<td style="width:25%">{$in['fullname']}</td>
															<td style="width:25%;text-align:left">{$in['type']}</td>
															<td style="width:25%">{if $in['expiration'] eq '0000-00-00'}-{else}{$payment}{/if}</td>
															<td style="width:25%">{if $in['expiration'] eq '0000-00-00'}-{else}{date($_c['date_format'], strtotime($due_payment))}{/if}</td>								
														</tr>
													</table>
												</td>
												<td style="max-width:100%">
													<h4 style="text-align:right;font-weight:normal;border-top:solid 1px #dddddd;margin-top:5px;padding-top:0px;margin-bottom: 0px;font-size:40px">#{$in['invoice']}</h4><b style="margin-right:5px">{$date_invoice}</b>
												</td>
											</tr>
											
											<table class="table display table-stripped" style="margin-top:-10px;width:100%">
												<tr>
													<th style="text-align:left;background-color:#ffffff">Information</th>
													<th style="text-align:right;background-color:#ffffff">Value</th>
												</tr>
												<tr>
													<td>{$in['plan_name']}</td>
													<td>{$_c['currency_code']} {number_format($in['price'],2,$_c['dec_point'],$_c['thousands_sep'])}</td>
												</tr>
												<tr>
													<td>
														{if {$in['type']} eq 'PPPOE'}
															PPN 0%
														{else}
															PPN 0%
														{/if}	
													</td>
													<td>
														{$_c['currency_code']} {number_format($in['ppn'],2,$_c['dec_point'],$_c['thousands_sep'])}
													</td>								
												</tr>
												<tr style="border-bottom:solid 1px #dddddd">
													<td></td>
													<td style="font-size:25px">Total : {$_c['currency_code']} {number_format($in['total'],2,$_c['dec_point'],$_c['thousands_sep'])}</td>
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
				</section>
			</div>						
				
<script type="text/javascript">
	var s5_taf_parent = window.location;
	function popup_print() {
	window.open('print.php?page=<?php echo $_GET['act'];?>','page','toolbar=0,scrollbars=1,location=0,statusbar=0,menubar=0,resizable=0,width=800,height=600,left=50,top=50,titlebar=yes')
	}
</script>
				
{include file="sections/footer.tpl"}
