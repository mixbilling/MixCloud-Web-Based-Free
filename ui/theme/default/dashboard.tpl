{include file="sections/header.tpl"}

			<div class="content-wrapper">
				<section class="content">
					<div class="row">
						{if isset($notify)}
							{$notify}
						{/if}						
						<div class="col-md-3 col-sm-6 col-xs-12">
							<div class="info-box">
								<span class="info-box-icon bg-aqua"><i style="font-size:45px;color:white" class="ion ion-cash"></i></span>				
								<div style="border-top: 3px solid #00c0ef;" class="info-box-content">
									<span class="info-box-text">{$_L['Income_Today']}</span>
									<span style="margin-left:-1.5px;font-size:17px" class="info-box-number">{$_c['currency_code']} {number_format($iday,0,$_c['dec_point'],$_c['thousands_sep'])}</span>
									<hr style="margin-top:5px;margin-bottom:5px">
									<span style="font-size:12px;font-weight:normal" class="info-box-number"><a href="#report-daily" data-toggle="modal" data-target="#report-daily">{$_L['View_Reports']}</a></span>
								</div>
							</div>
						</div>
						<div class="col-md-3 col-sm-6 col-xs-12">
							<div class="info-box">
								<span class="info-box-icon bg-red"><i style="font-size:45px;color:white" class="fa fa-bank"></i></span>				
								<div style="border-top: 3px solid #dd4b39;" class="info-box-content">
									<span class="info-box-text">{$_L['Income_This_Month']}</span>
									<span style="margin-left:-1.5px;font-size:17px" class="info-box-number">{$_c['currency_code']} {number_format($imonth,0,$_c['dec_point'],$_c['thousands_sep'])}</span>
									<hr style="margin-top:5px;margin-bottom:5px">
									<span style="font-size:12px;font-weight:normal" class="info-box-number"><a href="#report-period" data-toggle="modal" data-target="#report-period">{$_L['View_Reports']}</a></span>							
								</div>							
							</div>
						</div>
						<!-- fix for small devices only -->
						<div class="clearfix visible-sm-block"></div>
						<div class="col-md-3 col-sm-6 col-xs-12">
							<div class="info-box">
								<span class="info-box-icon bg-green"><i style="font-size:45px;color:white" class="fa  fa-chain"></i></span>				
								<div style="border-top: 3px solid #00a65a;" class="info-box-content">
									<span class="info-box-text">PPPOE ONLINE</span>
								{if $pppoe_online eq ''}	
									<span style="margin-left:-1.5px;font-size:17px" class="info-box-number">0 Users</span>
								{else}
									<span style="margin-left:-1.5px;font-size:17px" class="info-box-number">{$pppoe_online} Users</span>
								{/if}
									<hr style="margin-top:5px;margin-bottom:5px">
								{if $_admin['user_type'] eq 'Admin' || $_admin['permission']|strstr:"api_"}
									<span style="font-size:12px;font-weight:normal" class="info-box-number"><a href="{$_url}mikrotik/pppoe-online">{$_L['View_All']}</a></span>
								{else}
									<span style="font-size:12px;font-weight:normal" class="info-box-number"><a href="{$_url}dashboard">{$_L['View_All']}</a></span>
								{/if}		
								</div>
							</div>
						</div>
						
						<div class="col-md-3 col-sm-6 col-xs-12">
							<div class="info-box">
								<span class="info-box-icon bg-yellow"><i style="font-size:45px;color:white" class="fa fa-wifi"></i></span>				
								<div style="border-top: 3px solid #f39c12;" class="info-box-content">
									<span class="info-box-text">HOTSPOT ONLINE</span>
								{if $hotspot_online eq ''}	
									<span style="margin-left:-1.5px;font-size:17px" class="info-box-number">0 Users</span>
								{else}
									<span style="margin-left:-1.5px;font-size:17px" class="info-box-number">{$hotspot_online} Users</span>
								{/if}
									<hr style="margin-top:5px;margin-bottom:5px">
								{if $_admin['user_type'] eq 'Admin' || $_admin['permission']|strstr:"api_"}
									<span style="font-size:12px;font-weight:normal" class="info-box-number"><a href="{$_url}mikrotik/hotspot-online">{$_L['View_All']}</a></span>
								{else}
									<span style="font-size:12px;font-weight:normal" class="info-box-number"><a href="{$_url}dashboard">{$_L['View_All']}</a></span>
								{/if}						
								</div>
							</div>
						</div>
					</div>
						
					<div class="row">
						<div class="col-md-7">
							<div id="information" style="overflow-y:auto;" class="panel panel-default mb20 panel-hovered project-stats table-responsive">
								<div style="border-bottom:none;background-color:transparent;margin-bottom:-20px" class="panel-heading">{$_L['Member_And_Voucher']}</div>
								<div class="panel-body">
									<div>
										<div style="margin-top:10px" class="col-xs-6 col-md-3 text-center">
											<p><a href="{$_url}customers/pppoe" title="TOTAL PPPOE MEMBER"> <i style="font-size:4.5em" class="fa fa-chain text-orange" aria-hidden="true"></i></p>
											<p style="font-weight: bold">PPPOE [{$pppoe_member}]</a></p>
										</div>
										<div style="margin-top:10px" class="col-xs-6 col-md-3 text-center">
											<p><a href="{$_url}customers/hotspot" title="TOTAL HOTSPOT MEMBER"> <i style="font-size:4.5em" class="fa fa-sellsy text-green" aria-hidden="true"></i></p>
											<p style="font-weight: bold">Hotspot [{$hotspot_member}]</a></p>
										</div>
										<div style="margin-top:10px" class="col-xs-6 col-md-3 text-center">
											<p><a href="{$_url}manage-voucher/voucher" title="TOTAL VOUCHER"> <i style="font-size:4.5em" class="fa fa-credit-card text-red" aria-hidden="true"></i></p>
											<p style="font-weight: bold">Voucher [{$total_voucher}]</a></p>
										</div>
										<div style="margin-top:10px" class="col-xs-6 col-md-3 text-center">
											<p><a href="#" title="TOTAL ADMIN"><i style="font-size:4.5em" class="fa fa-user-secret text-aqua" aria-hidden="true"></i></p>
											<p style="font-weight: bold">Admin [{$total_admin}]</a></p>
										</div>
									</div>
								</div>		
								<div style="border-bottom:none;background-color:transparent;margin-bottom:-20px" class="panel-heading">{$platform}</div>
								<div class="panel-body">
									<div>
										<div style="margin-top:10px" class="col-xs-6 col-md-3 text-center">
											<p><i style="font-size:4.5em" class="fa fa-ioxhost text-aqua" aria-hidden="true"></i>
											<p style="font-weight: bold"> CPU {$cpu_count}</p>
										</div>
										<div style="margin-top:10px" class="col-xs-6 col-md-3 text-center">
											<p><i style="font-size:4.5em" class="fa fa-heartbeat text-red" aria-hidden="true"></i>
											<p style="font-weight: bold"> Load {$cpu_load}%</p>
										</div>
										<div style="margin-top:10px" class="col-xs-6 col-md-3 text-center">
											<p><i style="font-size:4.5em" class="ion ion-ios-speedometer text-green" aria-hidden="true"></i>
											<p style="font-weight: bold">RAM {$free_memory}%</p>
										</div>
										<div style="margin-top:10px" class="col-xs-6 col-md-3 text-center">
											<p><i style="font-size:4.5em" class="fa fa-hdd-o text-orange" aria-hidden="true"></i></p> <p style="font-weight: bold">HDD {$free_hdd}%</p>
										</div>
									</div>
								</div>	
								
								<table style="border-collapse:separate;margin-top:10px" class="display table">
									<thead>
										<tr>												
											<th style="text-align:left;color:#555;background-color:#eeeeee;">{$_L['Router_Name']}</th>
											<th style="text-align:left;color:#555;background-color:#eeeeee;">IP Address (DNS)</th>
											<th style="text-align:left;color:#555;background-color:#eeeeee;">{$_L['Hotspot_Domain']}</th>
										</tr>
									</thead>
									<tbody>
								{if $_admin['user_type'] eq 'Admin'}	
									{foreach $sr as $srs}
										<tr>												
											<td>{$srs['name']}</td>
											<td>{$srs['ip_address']}</td>
											<td>{$srs['hotspot_domain']}</td>
										</tr>
									</tbody>
									{/foreach}
								{else}
										<tr>
											<td>{$r_name['name']}</td>
											<td>{$r_name['ip_address']}</td>
											<td>{$r_name['hotspot_domain']}</td>
										</tr>
								{/if}				
								</table>
							</div>									
						</div>
						
						<div class="col-md-7">
							<div id="activity" style="overflow-y:auto;" class="panel panel-default mb20 panel-hovered project-stats activities">
								<div style="border-bottom:none;background-color:transparent;" class="panel-heading"><center>{$_L['Activity_Log']} {if ($_admin['user_type']) eq 'Admin'}| <a href={$_url}clear-log title="RESET ALL LOG RECORD" onClick="return confirm('{$_L['Remove_Alert']}')">{$_L['Clear_Log']}</a>{/if}</center></div>
								<div class="panel-body">
									<ul class="list-unstyled">
									{foreach $dlog as $dlogs}
										<li class="primary">
											<span class="point"></span>
											<span class="time small text-muted">{time_elapsed_string($dlogs['date'],true)}</span>
											<p>{$dlogs['description']}</p>
										</li>
									{/foreach}
									</ul>
								</div>
							</div>							
						</div>						
					</div>
				</section>
			</div>						

{include file="sections/footer.tpl"}
