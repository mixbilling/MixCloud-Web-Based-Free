{include file="sections/header.tpl"}

			<div class="content-wrapper">
				<section class="content">
					<div class="row">
						{if isset($notify)}
							{$notify}
						{/if}
						<div class="col-sm-12 col-md-6">
							<div class="panel">
								<div class="panel-heading">{$_L['Change_Password']}</div>
								<div class="panel-body">
									<form id="modal-form" class="form-horizontal" method="post" role="form" action="{$_url}settings/change-password-post">
										<div class="form-group">
											<label class="col-md-2 control-label">{$_L['Current_Password']}</label>
											<div class="col-md-6">
												<input type="password" class="form-control" id="password" name="password">
											</div>
										</div>
										<div class="form-group">
											<label class="col-md-2 control-label">{$_L['New_Password']}</label>
											<div class="col-md-6">
												<input type="password" class="form-control" id="npass" name="npass">
											</div>
										</div>
										<div class="form-group">
											<label class="col-md-2 control-label">{$_L['Confirm_New_Password']}</label>
											<div class="col-md-6">
												<input type="password" class="form-control" id="cnpass" name="cnpass">
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