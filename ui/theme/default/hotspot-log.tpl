{include file="sections/header.tpl"}

			<div class="content-wrapper">
				<section class="content">
					<div class="row">
						{if isset($notify)}
							{$notify}
						{/if}
						<div class="col-sm-12">
							<div class="panel">
								<div class="panel-heading">Hotspot Logs</div>
								<div class="panel-body">
									<div class="adv-table table-responsive">
										<form id="walled" method="post" role="form">
											<table  class="display table table-bordered table-bordered" id="dynamic-table">
												<thead>
													<tr>
														<th>Time</th>
														<th>Topics</th>
														<th>Message</th>
													</tr>
												</thead>
												<tbody>
												{foreach $hotspot_log as $hlogs}
													<tr>
														<td align="center">{$hlogs['time']}</td>
														<td align="center">{$hlogs['topics']}</td>
														<td>{$hlogs['message']}</td>
													</tr>
												{/foreach}
												</tbody>
											</table>
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>
				</section>
			</div>						

			

{include file="sections/footer.tpl"}