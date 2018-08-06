{include file="sections/header.tpl"}
	
			<div class="content-wrapper">
				<section class="content">
					<div class="row">
						<div class="col-sm-12">
							<section class="panel">
								<header class="panel-heading">
									<b>TRAFFIC &nbsp;&nbsp;&nbsp;</b> <i class="fa fa-arrow-circle-right" aria-hidden="true"></i>&nbsp;&nbsp;&nbsp; {$iface_name}
								</header>				
								<div class="panel-body">
									<script src="{$_theme}/assets/plugins/highchart/js/graph.js" defer></script>
									<script src="{$_theme}/assets/plugins/highchart/js/highcharts.js" defer></script>
									<div class="row">
										<div class="col-sm-9">
											<div id="graph" style="min-width:200px;height:300px;margin:0 auto"></div>
										</div>
										<div class="col-sm-3">
											<input name="interface" id="interface" type="hidden" value="{$iface_name}">
											<div class="mini-stat bgfafafa clearfix" style="text-align: center">
												<span class="mini-stat-icon pink"><i style="font-size:50px;color:#2196F3" class="fa fa-cloud-upload"></i></span>
												<div class="mini-stat-info">
													<span><div id="graph-byte-tx"></div></span>
													TX /BYTE
												</div>
											</div>
											<hr>
											<div class="mini-stat bgfafafa clearfix" style="text-align: center">
												<span class="mini-stat-icon orange"><i style="font-size:50px;color:#FF0000" class="fa fa-cloud-download"></i></span>
												<div class="mini-stat-info">
													<span><div id="graph-byte-rx"></div></span>
													RX /BYTE
												</div>
											</div>			
										</div>
									</div>
									<hr>
									<div class="btn-group">
										<button onclick="window.history.back();" style="width:90px;" class="btn btn-success waves-effect waves-light" style="background-color: #008B8B ;border:1px solid #008B8B;" class="btn btn-success"><i class="fa fa-arrow-circle-left" aria-hidden="true"></i> BACK</button>
									</div>
								</div>					
							</section>	
						</div>
					</div>	
				</section>
			</div>							

{include file="sections/footer.tpl"}
