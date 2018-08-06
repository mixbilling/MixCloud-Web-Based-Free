{include file="sections/header.tpl"}

			<div class="content-wrapper">
				<section class="content">
					<div class="row">
						{if isset($notify)}
							{$notify}
						{/if}
						<div class="col-sm-12 col-md-6">
							<div class="panel">
								<div class="panel-heading">{$_L['Edit_Bandwidth']}</div>
								<div class="panel-body">						
									<form id="modal-form" class="form-horizontal" method="post" role="form" action="{$_url}bandwidth/edit-post" >
										<input type="hidden" name="id" value="{$d['id']}">
										<div class="form-group">
											<label class="col-md-2 control-label">{$_L['Name']}</label>
											<div class="col-md-6">
												<input type="text" class="form-control" id="name" name="name" value="{$d['name_bw']}">
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
										<div class="col-md-3 col-sm-6">	
											<div class="form-group">
												<label class="col-md-2 control-label">Download Rate</label>
												<div class="col-md-6">
													<input type="text" class="form-control" id="rate_down" name="rate_down" value="{$d['rate_down']}">
												</div>
											</div>
										</div>	
										<div class="col-md-3 col-sm-6">	
											<div class="form-group">
												<label class="col-md-2 control-label">Download Unit</label>
												<div class="col-md-2">
													<select class="form-control" id="rate_down_unit" name="rate_down_unit">
														<option value="Kbps" {if $d['rate_down_unit'] eq 'Kbps'}selected="selected" {/if}>Kbps</option>
														<option value="Mbps" {if $d['rate_down_unit'] eq 'Mbps'}selected="selected" {/if}>Mbps</option>
													</select>
												</div>									
											</div>
										</div>	
										<div class="col-md-3 col-sm-6">	
											<div class="form-group">
												<label class="col-md-2 control-label">Upload Rate</label>
												<div class="col-md-6">
													<input type="text" class="form-control" id="rate_up" name="rate_up" value="{$d['rate_up']}">
												</div>
											</div>
										</div>
										<div class="col-md-3 col-sm-6">	
											<div class="form-group">
												<label class="col-md-2 control-label">Upload Unit</label>
												<div class="col-md-2">
													<select class="form-control" id="rate_up_unit" name="rate_up_unit">
														<option value="Kbps" {if $d['rate_up_unit'] eq 'Kbps'}selected="selected" {/if}>Kbps</option>
														<option value="Mbps" {if $d['rate_up_unit'] eq 'Mbps'}selected="selected" {/if}>Mbps</option>
													</select>
												</div>
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