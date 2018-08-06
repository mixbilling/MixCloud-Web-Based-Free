{include file="sections/header.tpl"}

			<div class="content-wrapper">
				<section class="content">
					<div class="row">
						<div class="col-sm-12">
							<div class="panel">
								<div class="panel-heading">Interface List</div>	
								<div class="panel-body">
									<div class="adv-table table-responsive">								
										<table  class="display table table-bordered table-bordered" id="asc-sort-col-1">
											<thead>
												<tr>
													<th>Id</th>
													<th>Name</th>
													<th>Default Name</th>
													<th>Type</th>
													<th>MAC Address</th>
													<th>Slave</th>
													<th>TX Bytes</th>
													<th>RX Bytes</th>
													<th>Graph</th>
												</tr>
											</thead>
											<tbody>
											{foreach $interface as $iface}
												<tr>
													<td>{$iface['.id']}</td>
													<td>{$iface['name']}</td>
													<td>{$iface['default-name']}</td>
													<td>{$iface['type']}</td>
													<td>{$iface['mac-address']}</td>
													<td>{$iface['slave']}</td>
													<td>{$iface['tx-byte']|formatBytes}</td>
													<td>{$iface['rx-byte']|formatBytes}</td>																										
													<td>
														<a href="{$_url}mikrotik/interface-traffic&interface={$iface['name']}" id="{$iface['name']}" title="See Traffic for this Interface" style="color:#fff;font-size:17px;width:30px;height:30px;" class="btn btn-success btn-sm fa fa-bar-chart" aria-hidden="true"</a>
													</td>
												</tr>
											{/foreach}
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>
				</section>
			</div>							

{include file="sections/footer.tpl"}
