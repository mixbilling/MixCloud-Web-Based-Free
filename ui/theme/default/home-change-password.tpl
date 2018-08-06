{include file="sections/home-header.tpl"}

				<div class="row">
					<div class="col-sm-12 col-md-6">
						<div class="panel">
							<div class="panel-heading">{$_L['Change_Password']}</div>
							<div class="panel-body">
								<form class="form-horizontal" method="post" role="form" action="{$_url}home-settings/change-password-post">
									<div class="form-group">
										<label class="col-md-3 control-label">{$_L['Current_Password']}</label>
										<div class="col-md-9">
											<input type="password" class="form-control" id="password" name="password">
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-3 control-label">{$_L['New_Password']}</label>
										<div class="col-md-9">
											<input type="password" class="form-control" id="npass" name="npass">
										</div>
									</div>
									<div class="form-group">
										<label class="col-md-3 control-label">{$_L['Confirm_New_Password']}</label>
										<div class="col-md-9">
											<input type="password" class="form-control" id="cnpass" name="cnpass">
										</div>
									</div>
									<div class="form-group">
										<div class="col-lg-offset-3 col-lg-9">
											<button class="btn btn-success waves-effect waves-light" type="submit">{$_L['Save']}</button>
											Or <a onclick="window.history.back()" href="#back">{$_L['Cancel']}</a>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>

{include file="sections/home-footer.tpl"}
