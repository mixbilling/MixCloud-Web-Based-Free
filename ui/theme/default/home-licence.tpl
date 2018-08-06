{include file="sections/home-header.tpl"}

			<div class="content-wrapper">
				<section class="content">
					<div class="row">
						<div class="col-sm-8">
							<div class="panel">
								<div class="panel-heading">{$_L['Licence_Information']}</div>							
								<div class="panel">								
									<div style="border:none" class="panel-body">	
										<table class="table text-left">
										{foreach $u as $ul}
											<tr>
												<td><i class="fa fa-globe" aria-hidden="true"></i></td>
												<td>Email</td>
												<td>{$ul['email']}</td>
											</tr>
											<tr>
												<td><i class="fa fa-globe" aria-hidden="true"></i></td>
												<td>Request ID</td>
												<td>{$ul['request_id']}</td>
											</tr>
											<tr>
												<td><i class="fa fa-globe" aria-hidden="true"></i></td>
												<td>Hardware ID</td>
												<td>{$ul['hardware_id']}</td>
											</tr>
											<tr>
												<td><i class="fa fa-globe" aria-hidden="true"></i></td>
												<td>Software Key</td>
												<td>{$ul['software_key']}</td>
											</tr>
											<tr>
												<td><i class="fa fa-globe" aria-hidden="true"></i></td>
												<td>Activation Date</td>
												<td>{$ul['activation_date']}</td>
											</tr>										
										{/foreach}		
										</table>
											<hr style="margin-top:0">
											<a href="{$_url}home-licence/remove-licence" title="Remove Licence" onclick="return confirm('{$_L['Licence_Warning']}')" class="btn btn-success waves-effect waves-light">{$_L['Remove_Licence']}</a>									
									</div>
								</div>
							</div>
						</div>
					</div>
				</section>
			</div>						

{include file="sections/home-footer.tpl"}