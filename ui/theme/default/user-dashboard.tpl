{include file="sections/user-header.tpl"}
			<div class="content-wrapper">
				<section class="content">
					<div class="row">
						<div class="col-sm-12">
							<div class="panel panel-default table-condensed">
								<div class="panel-heading">Account Information</div>
								<table class="table table-striped table-bordered">
									<tr>
										<td class="small text-success text-uppercase text-normal">{$_L['Username']}</td>
										<td class="small mb15">{$_bill['username']}</td>
									</tr>
									<tr>
										<td class="small text-primary text-uppercase text-normal">{$_L['Plan_Name']}</td>
										<td class="small mb15">{$_bill['namebp']}</td>
									</tr>
									<tr>
										<td class="small text-primary text-uppercase text-normal">{$_L['Routers']}</td>
										<td class="small mb15">{$_bill['routers']}</td>
									</tr>
									<tr>
										<td class="small text-info text-uppercase text-normal">{$_L['Created_On']}</td>
										<td class="small mb15">{if $_bill['time'] ne ''}{date($_c['date_format'], strtotime($_bill['recharged_on']))} {$_bill['time']}{/if}&nbsp;</td>
									</tr>
									<tr>
										<td class="small text-danger text-uppercase text-normal">{$_L['Expires_On']}</td>
										<td class="small mb15">{if $_bill['time'] ne ''}{date($_c['date_format'], strtotime($_bill['expiration']))} {$_bill['time']}{/if}&nbsp;</td>
									</tr>
								</table>
							</div>
						</div>
					</div>
				</section>
			</div>
{include file="sections/user-footer.tpl"}
