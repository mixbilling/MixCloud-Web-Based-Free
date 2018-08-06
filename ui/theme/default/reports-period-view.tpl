{include file="sections/header.tpl"}

			<div class="content-wrapper">
				<section class="content">
					<div class="row">
						{if isset($notify)}
							{$notify}
						{/if}
						<div class="col-md-12">
							<div class="invoice-wrap">
								<div class="clearfix invoice-head">
									<h3 class="brand-logo text-uppercase text-bold left mt15">
										<span class="text">{$_L['Period_Reports']}</span>
									</h3>
								</div>
								<div class="clearfix invoice-subhead mb20">
									<div class="group clearfix left">
										<p class="text-bold mb5">{$_L['All_Transactions_at_Date']}:</p>
										<p class="small">{$stype} [{date( $_c['date_format'], strtotime($fdate))} - {date( $_c['date_format'], strtotime($tdate))}]</p>
									</div>
									<div class="group clearfix right">
										<form style="float:left" method="post" action="{$_url}export/pdf-by-period" target="_blank">
											<input type="hidden" name="fdate" value="{$fdate}">
											<input type="hidden" name="tdate" value="{$tdate}">
											<input type="hidden" name="stype" value="{$stype}">
											<button type="submit" style="width:150px;" class="btn btn-success"><i class="fa fa-file-pdf-o"></i> {$_L['Export_to_PDF']}</button>
										</form>
										<form style="float:left" method="post" action="{$_url}export/print-by-period" target="_blank">
											<input type="hidden" name="fdate" value="{$fdate}">
											<input type="hidden" name="tdate" value="{$tdate}">
											<input type="hidden" name="stype" value="{$stype}">
											<button type="submit" style="width:150px;" class="btn btn-success"><i class="fa fa-print"></i> {$_L['Export_for_Print']}</button>
										</form>
									</div>
								</div>
								<br>
								<div class="adv-table table-responsive">								
									<table class="display table table-bordered table-bordered" id="report_period">
										<thead>
											<tr>
												<th>{$_L['Owner']}</th>
												<th>{$_L['Username']}</th>
												<th>{$_L['Type']}</th>
												<th>{$_L['Plan_Name']}</th>
												<th style="text-align:center">{$_L['Plan_Price']}</th>
												<th>{$_L['Active_Date']}</th>
												<th>{$_L['Method']}</th>
												<th>{$_L['Routers']}</th>
											</tr>
										</thead>
									</table>
								</div>							
								<div class="clearfix text-right total-sum mb10">
									<h4 class="text-uppercase text-bold">{$_L['Total_Income']}</h4>
									<h3 class="sum">{$_c['currency_code']} {number_format($dr,2,$_c['dec_point'],$_c['thousands_sep'])}</h3>
								</div>
								<p class="text-center small text-success">{$stype} [{date( $_c['date_format'], strtotime($fdate))} - {date( $_c['date_format'], strtotime($tdate))}]</p>
								<br>
							</div>
						</div>
					</div>
				</section>
			</div>						

{include file="sections/footer.tpl"}
