{include file="sections/user-header.tpl"}

			<div class="content-wrapper">
				<section class="content">
					<div class="row">
						<div class="col-sm-12">
							<div class="panel mb20 panel-hovered panel-default">
								<div class="panel-heading">List Activated Voucher</div>
								<div class="panel-body">
									<div class="adv-table table-responsive">
										<table  class="display table table-bordered table-bordered" id="asc-sort-col-0">
										<thead>
											<tr>
												<th>{$_L['Username']}</th>
												<th>{$_L['Plan_Name']}</th>
												<th>{$_L['Routers']}</th>
												<th>{$_L['Type']}</th>
												<th>{$_L['Created_On']}</th>
												<th>{$_L['Expires_On']}</th>
												<th>{$_L['Method']}</th>
											</tr>
										</thead>
										<tbody>
										{foreach $d as $ds}
											<tr>
												<td>{$ds['username']}</td>
												<td>{$ds['plan_name']}</td>
												<td>{$ds['routers']}</td>
												<td>{$ds['type']}</td>
												<td class="text-success">{date($_c['date_format'], strtotime($ds['recharged_on']))} {$ds['time']}</td>
												<td class="text-danger">{date($_c['date_format'], strtotime($ds['expiration']))} {$ds['time']}</td>
												<td>{$ds['method']}</td>
											</tr>
										{/foreach}
										</tbody>
										</table>
									</div>
									{$paginator['contents']}
								</div>
							</div>
						</div>
					</div>
				</section>
			</div>

{include file="sections/user-footer.tpl"}
