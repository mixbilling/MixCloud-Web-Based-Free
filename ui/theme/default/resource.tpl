{include file="sections/header.tpl"}
<!--
 <script type="text/javascript">
    window.onload = setupRefresh;
    function setupRefresh()
    {
        setInterval("refreshBlock();",1000);
    }
    
    function refreshBlock()
    {
       $('#test').load("{$_url}__refresh-resource");
    }
  </script>
-->

			<div class="content-wrapper">
				<section class="content">
					<div class="row">
						{if isset($notify)}
							{$notify}
						{/if}
						<div class="col-sm-8">
							<div class="panel">
								<div class="panel-heading">Device Information</div>							
								<div style="min-height:430px;" class="panel-body">
									<div class="group">
										<div style="margin-top:4px;" class="dropdown "><a style="width:170px" href="#" class="dropdown-toggle btn btn-success waves-effect" data-toggle="dropdown" aria-expanded="false"><i class="ion ion-navicon-round"></i> {$_L['Option_Menu']}<span class="caret"></a></span>
											<ul style="margin-left:2px;width:auto;min-width:168px" class="dropdown-menu">	
												<li style="margin-left:8px;color:red" class="dropdown-title">Action</li>
												<li><a href="#reboot-router" data-toggle="modal" data-target="#reboot-router" title="REBOOT ROUTER"><i class="ion ion-ios-sunny"></i> Reboot Router</a></li>	
											</ul>
										</div>
									</div>	
									<hr>								
									<div style="border:none" class="panel-body">	
										<table class="table text-left">
											<tr><td><i class="fa fa-globe" aria-hidden="true"></i></td><td>Platform, Board, ROS Version</td><td></td><td>{$platform}</td></tr>
											<tr><td><i class="fa fa-microchip" aria-hidden="true"></i></td><td>CPU, Available Core</td><td></td><td>{$cpu_core}</td></tr>
											<tr><td><i class="fa fa-thumbs-o-up" aria-hidden="true"></i></td><td>Device Uptime</td><td></td><td>{$uptime}</td></tr>
											<tr><td><i class="fa fa-tachometer" aria-hidden="true"></i></td><td>Device CPU Load</td><td></td><td>{$cpu_load}</td></tr>
											<tr><td><i class="fa fa-tasks" aria-hidden="true"></i></td><td>Free Memory</td><td></td><td>{$free_memory}</td></tr>
											<tr><td><i class="fa fa-server" aria-hidden="true"></i></td><td>Free Disk Space</td><td></td><td>{$free_disk}</td></tr>
											<tr><td><i class="fa fa-calendar" aria-hidden="true"></i></td><td>Date</td><td></td><td>{$date}</td></tr>
											<tr><td><i class="fa fa-clock-o" aria-hidden="true"></i></td><td>Time</td><td></td><td>{$time}</td></tr>
											
											
										{if $pppoe_online eq ''}	
											<tr><td><i class="ion ion-arrow-swap" aria-hidden="true"></i></td><td>PPPOE Online</td><td></td><td>0 Users</td></tr>
										{else}
											<tr><td><i class="ion ion-arrow-swap" aria-hidden="true"></i></td><td>PPPOE Online</td><td></td><td>{$pppoe_online} Users
										{/if}
										<!-- {if $pppoe_expire eq ''}	
											<tr><td><i class="ion ion-lock-combination" aria-hidden="true"></i></td><td>PPPOE Expire</td><td></td><td>0 Users</td></tr>
										{else}
											<tr><td><i class="ion ion-lock-combination" aria-hidden="true"></i></td><td>PPPOE Expire</td><td></td><td>{$pppoe_expire} Users
										{/if} -->	
										{if $hotspot_online eq ''}	
											<tr><td><i class="ion ion-stats-bars" aria-hidden="true"></i></td><td>Hotspot Online</td><td></td><td>0 Users</td></tr>
										{else}
											<tr><td><i class="ion ion-stats-bars" aria-hidden="true"></i></td><td>Hotspot Online</td><td></td><td>{$hotspot_online} Users
										{/if}
										<!-- {if $hotspot_expire eq ''}	
											<tr><td><i class="ion ion-connection-bars" aria-hidden="true"></i></td><td>Hotspot Expire</td><td></td><td>0 Users</td></tr>
										{else}
											<tr><td><i class="ion ion-connection-bars" aria-hidden="true"></i></td><td>Hotspot Expire</td><td></td><td>{$hotspot_expire} Users 
										{/if} -->
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>
				</section>
			</div>						
<!--modal add script -->
			<div class="modal fade" id="reboot-router" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" >
				<div  class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
							<h4 class="modal-title" id="myModalLabel">Reboot Router</h4>
						</div>
						<div class="modal-body">
						<form id="modal-form" class="form-horizontal" method="post" role="form" action="{$_url}mikrotik/reboot-router" >
							<button class="btn btn-success waves-effect waves-light" type="submit" name="reboot">Reboot Router</button>
						</form>
						</div>
					</div>
				</div>
			</div>	
		<!--modal add script -->
{include file="sections/footer.tpl"}