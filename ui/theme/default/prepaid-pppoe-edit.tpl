{include file="sections/header.tpl"}

			<div class="content-wrapper">
				<section class="content">
					<div class="row">
						{if isset($notify)}
							{$notify}
						{/if}
						<div class="col-sm-12 col-md-6">
							<div class="panel">
								<div class="panel-heading">{$_L['Edit_Prepaid_Member']}</div>
								<div class="panel-body">
									<form id="modal-form" class="form-horizontal" method="post" role="form" action="{$_url}prepaid/edit-post">
									<input type="hidden" name="id" value="{$d['id']}">
										<div class="form-group">
											<label class="col-md-2 control-label">{$_L['Prepaid_Member']}</label>
											<div class="col-md-6">
												<input type="text" class="form-control" id="username" name="username" value="{$d['username']}" readonly>
											</div>
										</div>
										<div class="form-group">
											<label class="col-md-2 control-label">{$_L['Type']}</label>
											<div style="margin-top:3px;" class="col-md-6">
												<input type="radio" id="Hot" name="type" value="Hotspot" disabled> HOTSPOT 
												<input style="margin-left:10px;" type="radio" id="POE" name="type" value="PPPOE" checked> PPPOE
											</div>
										</div>									
										<div class="form-group">
											<label class="col-md-2 control-label">{$_L['Service_Plan']}</label>
											<div class="col-md-6">
												<select id="id_plan" name="id_plan" class="form-control select2">
													{foreach $p as $ps}
														<option value="{$ps['id']}" {if $d['plan_id'] eq $ps['id']} selected {/if}>{$_L['Current']} : {$ps['name_plan']}</option>
													{/foreach}
												</select>
											</div>
										</div>
							            <div class="col-md-3 col-sm-6">
							              	<div class="form-group">
							                	<label class="col-md-2 control-label">{$_L['Created_On']}</label>
							                	<div style="padding-left:15px;padding-right: 15px" class="input-group date">
							                  		<div class="input-group-addon">
							                    		<i class="fa fa-calendar"></i>
							                  		</div>
							                  		<input type="text" class="form-control pull-right" id="datepicker1" name="recharged_on" value="{$d['recharged_on']}">
							                	</div>
							              	</div>
							            </div>  	
							            <div class="col-md-3 col-sm-6">		 	
							              	<div class="form-group">
							                	<label class="col-md-2 control-label">{$_L['Expires_On']}</label>
							                	<div style="padding-left:15px;padding-right: 15px" class="input-group date">
							                  		<div class="input-group-addon">
							                    		<i class="fa fa-calendar"></i>
							                  		</div>
							                  		<input type="text" class="form-control pull-right" id="datepicker2" name="expiration" {if $d['expiration'] eq '0000-00-00'}value="Unlimited"{else}value="{$d['expiration']}"{/if}>
							                	</div>
							              	</div>
							            </div>	
										<div class="form-group">
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
