{include file="sections/home-header.tpl"}

			<div class="content-wrapper">
				<section class="content">
					<div class="row">
						{if isset($notify)}
							{$notify}
						{/if}
						<div class="col-md-3 col-sm-6 col-xs-12">
							<div class="info-box">
								<span class="info-box-icon bg-aqua"><i class="fa fa-building"></i></span>
								<div class="info-box-content" style="border-top: 3px solid #00c0ef;">
									<span class="info-box-text">WEB SERVER</span>
									<span class="info-box-number">{$webserver}</span>
									<hr style="margin-top:6px;margin-bottom:6px">									
								</div>
							</div>
						</div>
						<div class="col-md-3 col-sm-6 col-xs-12">
							<div class="info-box">
								<span class="info-box-icon bg-red"><i class="fa fa-code"></i></span>
								<div class="info-box-content" style="border-top: 3px solid #dd4b39;">
									<span class="info-box-text">PHP ENGINE</span>
									<span class="info-box-number">PHP {$php}</span>
									<hr style="margin-top:6px;margin-bottom:6px">									
								</div>
							</div>
						</div>
						<div class="clearfix visible-sm-block"></div>
						<div class="col-md-3 col-sm-6 col-xs-12">
							<div class="info-box">
								<span class="info-box-icon bg-green"><i class="fa fa-outdent"></i></span>
								<div class="info-box-content" style="border-top: 3px solid #00a65a;">
									<span class="info-box-text">DATABASE</span>
									<span class="info-box-number">{$signature} {$version}</span>
									<hr style="margin-top:6px;margin-bottom:6px">									
								</div>
							</div>
						</div>
						<div class="col-md-3 col-sm-6 col-xs-12">
							<div class="info-box">
								<span class="info-box-icon bg-yellow"><i class="fa fa-random"></i></span>
								<div class="info-box-content" style="border-top: 3px solid #f39c12;">
									<span class="info-box-text">ROUTERS</span>
									<span class="info-box-number">[{$routers_count}] MikroTik</span>
									<hr style="margin-top:6px;margin-bottom:6px">									
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-7">
							<div id="information" style="overflow-y:auto;" class="panel panel-default mb20 panel-hovered project-stats table-responsive">
								<div style="border-bottom:none;background-color:transparent;font-weight: bold" class="panel-heading"><center>{$_L['Basic_Info']}</center></div>
								<div class="panel-body">
									<table class="table text-left">
										<tr><td><i class="ion ion-ios-home-outline" aria-hidden="true"></i></td><td> {$_L['App_Name']}</td><td></td><td>{$_c['CompanyName']}</td></tr>
										<tr><td><i class="ion ion-ios-location-outline" aria-hidden="true"></i></td><td> {$_L['Address']}</td><td></td><td>{$_c['address']}</td></tr>
										<tr><td><i class="ion ion-ios-telephone-outline" aria-hidden="true"></i></td><td> {$_L['Phone_Number']}</td><td></td><td>{$_c['phone']}</td></tr>
										<tr><td><i class="ion ion-ios-time-outline" aria-hidden="true"></i></td><td> {$_L['Timezone']}</td><td></td><td>{$_c['timezone']}</td></tr>
									</table>
									<hr>	
									<table style="border-collapse: separate;" class="display table">
										<thead>
											<tr>
												<th style="color:#555;background-color:#eeeeee;">ID</th>
												<th style="text-align:left;color:#555;background-color:#eeeeee;">{$_L['Router_Name']}</th>
												<th style="text-align:left;color:#555;background-color:#eeeeee;">IP Address (DDNS)</th>
												<th style="color:#555;background-color:#eeeeee;">{$_L['Manage']}</th>
											</tr>
										</thead>
										<tbody>	
										{foreach $api as $mikrotik}
											<tr>
												<td>{$mikrotik['id']}</td>
												<td>{$mikrotik['name']}</td>
												<td>{$mikrotik['ip_address']}</td>
												<td align="center">
													<form type="hidden" method="post" role="form" action="{$_url}dashboard" >
														<button title="OPEN THIS MIKROTIK (API ACCESS)" style="color:#fff;font-size:17px;width:30px;height:30px;" class="btn btn-success btn-sm fa fa-sign-in active" aria-hidden="true" value="{$mikrotik['id']}" name="router" type="submit"></button>											
													</form>
												</td>
											</tr>
										{/foreach}
										</tbody>
									</table>	
								</div>
							</div>
						</div>
						
						<div class="col-md-7">
							<div id="activity" style="overflow-y:auto;" class="panel panel-default mb20 panel-hovered project-stats activities">
								<div style="border-bottom:none;background-color:transparent;font-weight: bold" class="panel-heading"><center>{$_L['Activity_Log']} {if ($_admin['user_type']) eq 'Admin'}| <a href={$_url}home-clear-log title="RESET ALL LOG RECORD" onClick="return confirm('{$_L['Remove_Alert']}')">{$_L['Clear_Log']}</a>{/if}</center></div>
								<div class="panel-body">
									<ul class="list-unstyled">
									{foreach $dlog as $dlogs}
										<li class="primary">
											<span class="point"><hr style="margin-top: 0;margin-bottom: 0"></span>
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

{include file="sections/home-footer.tpl"}
