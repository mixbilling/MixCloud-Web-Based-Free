{include file="sections/header.tpl"}

			<div class="content-wrapper">
				<section class="content">
					<div class="row">
						{if isset($notify)}
							{$notify}
						{/if}
						<div class="col-sm-12 col-md-6">
							<div class="panel">
								<div class="panel-heading">{$_L['Edit_Plan']}</div>
								<div class="panel-body">
									<form id="modal-form" class="form-horizontal" method="post" role="form" action="{$_url}services/edit-pppoe-post">
										<input type="hidden" name="id" value="{$d['id']}">
										<div class="col-md-3 col-sm-6">	
											<div class="form-group">
												<label class="col-md-2 control-label">{$_L['Name']}</label>
												<div class="col-md-6">
													<input type="text" class="form-control" id="name_plan" name="name_plan" value="{$d['name_plan']}" readonly>
												</div>
											</div>
										</div>
										<div class="col-md-3 col-sm-6">	
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
										</div>
										<div class="form-group">
											<label class="col-md-2 control-label">Bandwidth</label>
											<div class="col-md-6">
												<select id="id_bw" name="id_bw" class="form-control">
													{foreach $b as $bs}
														<option value="{$bs['id']}" {if $d['id_bw'] eq $bs['id']} selected {/if}>{$bs['name_bw']}</option>
													{/foreach}
												</select>
											</div>
										</div>
										<div class="form-group">
											<label class="col-md-2 control-label">{$_L['Plan_Price']}</label>
											<div class="col-md-6">
												<input type="text" class="form-control" id="price" name="price" value="{$d['price']}">
											</div>
										</div>
										<div class="col-md-3 col-sm-6">
											<div class="form-group">
												<label class="col-md-2 control-label">{$_L['Plan_Validity']}</label>
												<div class="col-md-6">
													<input type="text" class="form-control" id="validity" name="validity" value="{$d['validity']}">
													<span class="help-block">{$_L['validity_help']}</span>
												</div>
											</div>
										</div>	
										<div class="col-md-3 col-sm-6">		
											<div class="form-group">
												<label class="col-md-2 control-label">{$_L['Time_Unit']}</label>
												<div class="col-md-6">
													<select class="form-control" id="validity_unit" name="validity_unit">
														<option value="H" {if $d['validity_unit'] eq 'H'} selected {/if}>{$_L['Hours']}</option>
														<option value="D" {if $d['validity_unit'] eq 'D'} selected {/if}>{$_L['Days']}</option>
														<option value="M" {if $d['validity_unit'] eq 'M'} selected {/if}>{$_L['Months']}</option>
													</select>
												</div>
											</div>
										</div>
										<div class="form-group">
											<label class="col-md-2 control-label">{$_L['Router_Name']}</label>
											<div class="col-md-6">
												<input type="text" class="form-control" id="routers" name="routers" value="{$d['routers']}" readonly>
											</div>
										</div>
										<div class="form-group">
											<label class="col-md-2 control-label">IP Pool</label>
											<div class="col-md-6">
												<select id="pool_name" name="pool_name" class="form-control">
													{foreach $p as $ps}
														<option value="{$ps['pool_name']}" {if $d['pool_name'] eq $ps['pool_name']} selected {/if}>{$ps['pool_name']} -> {$ps['range_ip']}</option>
													{/foreach}
												</select>
											</div>
										</div>
										<div class="form-group">
											<label class="col-md-2 control-label">Local Address</label>
											<div class="col-md-6">
												<input type="text" class="form-control" id="local_address" name="local_address" placeholder="first ip address from ip pool network, example : 10.50.50.1" value="{$d['local_address']}">
												<span class="help-block">{$_L['local_address_edit_help']}</span>
											</div>
										</div>
										<div  style="margin-bottom:-15px" class="form-group"></div>	
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