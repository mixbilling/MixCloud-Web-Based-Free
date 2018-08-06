{include file="sections/header.tpl"}
	
			<div class="content-wrapper">
				<section class="content">
					<div class="row">
						{if isset($notify)}
							{$notify}
						{/if}
						<div class="col-sm-12 col-md-6">
							<div class="panel">
								<div class="panel-heading">Edit Script</div>	
								<div class="panel-body">
									<form id="modal-form" class="form-horizontal" method="post" role="form" action="{$_url}mikrotik/save-script" >  
										<div hidden class="form-group">
											<label class="col-md-2 control-label">ID</label>
											<div class="col-md-6">
												<input type="text" class="form-control" id="script_id" name="script_id" value="{$script_id}" readonly>
											</div>
										</div>
										<div class="form-group">
											<label class="col-md-2 control-label">Name</label>
											<div class="col-md-6">
												<input type="text" class="form-control" id="script_name" name="script_name" value="{$script_name}" placeholder="insert new script name" required>
											</div>
										</div>
										<div class="form-group">
											<label class="col-md-2 control-label">Source</label>
											<div class="col-md-6">
												<textarea rows="5" name="script_source" id="script_source"  class="form-control" value="" placeholder="write new script code"></textarea>
											</div>
										</div>
										<div  style="margin-bottom:-15px" class="form-group"></div>	
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