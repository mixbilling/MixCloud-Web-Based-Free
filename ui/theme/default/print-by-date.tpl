<!DOCTYPE html>
<html>
<head>
    <title>{$_title}</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="{$_theme}/assets/bootstrap/css/bootstrap.min.css">
    <link rel="shortcut icon" href="{$_theme}/images/favicon.png" type="image/x-icon" />
    <style type="text/css">
		html,
		body {
			font-family: "Lucida Sans Unicode";
			font-size:12px;
		}		
		@media print {
			@page { 
				size: auto;
				margin: 0;
				margin-top: 1cm;
				margin-bottom: 1cm;
			}
			body {
				margin:0;
				padding:0.1cm;
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
<div style="margin-left:0px;margin-right:0px;" class="row">
    <div class="col-md-12">
	<br/>
	<div><button style="min-width:160px" type="button" id="actprint" class="btn btn-success btn-sm no-print">{$_L['Click_Here_to_Print']}</button></div>
        <div id="printable">
            <h4>{$_L['All_Transactions_at_Date']}: {date($_c['date_format'], strtotime($mdate))}</h4>
            <table style="font-size:13px;" class="table table-condensed table-bordered" style="background: #ffffff">
				<th class="text-center">{$_L['Owner']}</th>
                <th class="text-center">{$_L['Username']}</th>
                <th class="text-center">{$_L['Plan_Name']}</th>
                <th class="text-center">{$_L['Type']}</th>
                <th class="text-center">{$_L['Plan_Price']}</th>
				<th class="text-center">{$_L['Active_Date']}</th>
				<th class="text-center">{$_L['Method']}</th>
				<th class="text-center">{$_L['Routers']}</th>
                {foreach $d as $ds}
                    <tr>
						<td>{$ds['owner_name']}</td>
						<td>{$ds['username']}</td>
						<td>{$ds['plan_name']}</td>
						<td class="text-center">{$ds['type']}</td>
						<td class="text-right">{$_c['currency_code']} {number_format($ds['price'],2,$_c['dec_point'],$_c['thousands_sep'])}</td>
						<td class="text-center">{date($_c['date_format'], strtotime($ds['recharged_on']))}</td>
						<td class="text-center">{$ds['method']}</td>
						<td class="text-center">{$ds['routers']}</td>
                    </tr>
                {/foreach}
            </table>
			<div class="clearfix text-right total-sum mb10">
				<h4 class="text-uppercase text-bold">{$_L['Total_Income']}</h4>
				<h3 class="sum">{$_c['currency_code']} {number_format($dr,2,$_c['dec_point'],$_c['thousands_sep'])}</h3>
			</div>
        </div>       
    </div>
</div>
<script src="{$_theme}/assets/jquery/jquery.min.js"></script>
<script src="{$_theme}/assets/bootstrap/js/bootstrap.min.js"></script>
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