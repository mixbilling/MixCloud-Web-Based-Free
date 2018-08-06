{include file="sections/header.tpl"}

			<div class="content-wrapper">
				<section class="content">
					<div class="row">
						{if isset($notify)}
							{$notify}
						{/if}							
						<div class="col-sm-12 col-md-6">
							<div class="panel">
								<div class="panel-heading">{$_L['Edit_Pool']}</div>
								<div class="panel-body">
									<form id="modal-form" class="form-horizontal" method="post" role="form" action="{$_url}pool/edit-post" > 
										<input type="hidden" name="id" value="{$d['id']}">				
										<div class="form-group">
											<label class="col-md-2 control-label">{$_L['Pool_Name']}</label>
											<div class="col-md-6">
												<input type="text" class="form-control" id="name" name="name" value="{$d['pool_name']}" readonly>
											</div>
										</div>
										<div class="form-group">
											<label class="col-md-2 control-label">{$_L['Owner']}</label>
											<div class="col-md-6">
											{if $_admin['user_type'] eq 'Admin'}
												<select class="form-control select2" name="owner" style="width: 100%" data-placeholder="- {$_L['Select_Owner']} -" required>						
													<option value="{$d['owner_id']}">{$_L['Current']} : {$d['owner_name']}</option>
												{foreach $o as $os}
													<option value="{$os['id']}">{$os['username']}</option>
												{/foreach}						
												</select>
											{else}
												<select class="form-control select2" name="customer" style="width: 100%" data-placeholder="- {$_L['Select_Owner']} -" readonly>
													<option value="{$_admin['id']}">{$_admin['username']}</option>							
												</select>
											{/if}
											</div>
										</div>					
										<div class="form-group">
											<label class="col-md-2 control-label">{$_L['Range_IP']}</label>
											<div class="col-md-6">
												<input type="text" class="form-control" id="ip_address" name="ip_address" value="{$d['range_ip']}">
											</div>
										</div>
										<div class="form-group">
											<label class="col-md-2 control-label">{$_L['Routers']}</label>
											<div class="col-md-6">
												<input type="text" class="form-control" id="routers" name="routers" value="{$d['routers']}" readonly>
												</select>
											</div>
										</div>
										<div  style="margin-bottom:-10px" class="form-group"></div>	
										<hr>
										<div>									
											<button class="btn btn-success waves-effect waves-light" type="submit">{$_L['Save_Changes']}</button> Or <a onclick="window.history.back()" href="#back">{$_L['Cancel']}</a>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</section>
			</div>							

{include file="sections/footer.tpl"}
