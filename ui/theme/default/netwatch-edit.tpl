{include file="sections/header.tpl"}

			<div class="content-wrapper">
				<section class="content">
					<div class="row">
						{if isset($notify)}
							{$notify}
						{/if}
						<div class="col-sm-12 col-md-6">
							<div class="panel">
								<div class="panel-heading">Edit Netwatch</div>
								<div class="panel-body">
									<form id="modal-form" class="form-horizontal" method="post" role="form" action="{$_url}mikrotik/save-netwatch" >   
										<div hidden class="form-group">
											<label class="col-md-2 control-label">ID</label>
											<div class="col-md-6">
												<input type="text" class="form-control" name="nw_id" id="nw_id" value="{$nw_id}" readonly>
											</div>
										</div>
										<div class="col-md-3 col-sm-6">								
											<div class="form-group">
												<label class="col-md-2 control-label">Host</label>
												<div class="col-md-6">
													<input type="text" class="form-control" name="nw_host" id="nw_host" value="{$nw_host}" required>
												</div>
											</div>
										</div>	
										<div class="col-md-3 col-sm-6">		
											<div class="form-group">
												<label class="col-md-2 control-label">Comment</label>
												<div class="col-md-6">
													{if $nw_comment eq ''}
													<input type="text" class="form-control" name="nw_comment" id="nw_comment" value="add by mixpanel">
													{else}
													<input type="text" class="form-control" name="nw_comment" id="nw_comment" value="{$nw_comment}">
													{/if}
												</div>
											</div>
										</div>											
										<div class="col-md-3 col-sm-6">	
											<div class="form-group">
												<label class="col-md-2 control-label">Interval</label>
												<div class="col-md-6">
													<input type="text" class="form-control" name="nw_interval" id="nw_interval" value="{$nw_interval}" required>
												</div>
											</div>
										</div>
										<div class="col-md-3 col-sm-6">	
											<div class="form-group">
												<label class="col-md-2 control-label">Timeout</label>
												<div class="col-md-6">
													<input type="text" class="form-control" name="nw_timeout" id="nw_timeout" value="{$nw_timeout}" required>
												</div>
											</div>
										</div>	
										<div class="form-group">
											<label class="col-md-2 control-label">Up Script</label>
											<div class="col-md-6">
												<textarea name="nw_up_script" id="nw_up_script"  class="form-control" placeholder="insert new script name or write new script command here ..." required></textarea>
											</div>
										</div>
			
										<div class="form-group">
											<label class="col-md-2 control-label">Down Script</label>
											<div class="col-md-6">
												<textarea name="nw_down_script" id="nw_down_script"  class="form-control" placeholder="insert new script name or write new script command here ..." required></textarea>
											</div>
										</div>
										<div  style="margin-bottom:-10px" class="form-group"></div>	
										<hr>
										<div>									
											<button class="btn btn-success waves-effect waves-light" type="submit" name="save">Save Changes</button>
												Or <a onclick="window.history.back()" href="#back">Cancel</a>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</section>
			</div>						

{include file="sections/footer.tpl"}