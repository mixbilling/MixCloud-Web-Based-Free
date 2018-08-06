{include file="sections/header.tpl"}

			<div class="content-wrapper">
				<section class="content">
					<div class="row">
						{if isset($notify)}
							{$notify}
						{/if}
						<div class="col-sm-12 col-md-6">
							<div class="panel">
								<div class="panel-heading">{$_L['Recharge_Member']} PPPOE</div>
								<div class="panel-body">
									<form id="modal-form" class="form-horizontal" method="post" role="form" action="{$_url}prepaid/recharge-post" >
										<div class="form-group">
											<label class="col-md-2 control-label">{$_L['Member']}</label>
											<div class="col-md-6">
												<select class="form-control select2" name="id_customer" style="width: 100%" data-placeholder="- {$_L['Select_Customer']} -">
												<option></option>
													{foreach $c as $cs}
														<option value="{$cs['id']}">{$cs['username']}</option>
													{/foreach}
												</select>
											</div>
										</div>
										<div class="form-group">
											<label style="margin-top:-4px;" class="col-md-2 control-label">{$_L['Type']}</label>
											<div style="margin-top:4px;" class="col-md-6">
												<input disabled type="radio" id="Hot" name="type" value="Hotspot"> HOTSPOT
												<input style="margin-left:10px;" type="radio" id="POE" name="type" value="PPPOE"> PPPOE
											</div>
										</div>
										<div class="form-group">
											<label class="col-md-2 control-label">{$_L['Routers']}</label>
											<div class="col-md-6">
												<select id="server" name="server" class="form-control">
													<option value=''>- {$_L['Select_Routers']} -</option>
												</select>
											</div>
										</div>
										<div class="form-group">
											<label class="col-md-2 control-label">{$_L['Service_Plan']}</label>
											<div class="col-md-6">
												<select class="form-control select2" name="plan" id="plan" style="width: 100%" data-placeholder="- {$_L['Select_Plans']} -" required>
													<option value=''>- {$_L['Select_Plans']} -</option>
												</select>
											</div>
										</div>
										<div class="form-group" style="display:none" id="action_on_expire">
											<label class="col-md-2 control-label">{$_L['Expire_Action']}</label>
											<div class="col-md-6">
												<select id="action_on_expire" name="action_on_expire" class="form-control" required>
													<option value"">- {$_L['Select_Expire_Action']} -</option>
													<option value="disable_secret">{$_L['Disable_Secret']}</option>
													<option value="change_profile">{$_L['Use_Profile_Expire']}</option>
													<option value="no_action">{$_L['No_Action']}</option>
												</select>
											</div>
										</div>									
										<div  style="margin-bottom:-10px" class="form-group"></div>	
										<hr>
										<div>									
											<button class="btn btn-success waves-effect waves-light" type="submit" name="save">{$_L['Save_Changes']}</button>
												Or <a onclick="window.history.back()" href="#back">{$_L['Cancel']}</a>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</section>
			</div>						

{include file="sections/footer.tpl"}