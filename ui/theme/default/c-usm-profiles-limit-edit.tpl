{include file="sections/header.tpl"}
	
			<div class="content-wrapper">
				<section class="content">
					<div class="row">
						{if isset($notify)}
							{$notify}
						{/if}
						<div class="col-sm-12 col-md-12">
							<div class="panel">
								<div class="panel-heading">Edit Profiles Limit</div>
								{include file="sections/navbar-c-usermanager.tpl"}
								<div class="panel-body">
									<form class="form-horizontal" method="post" role="form" action="{$_url}user-manager/c-profiles-limit-save" >
										<div class="form-group">
											<label class="col-md-2 control-label">ID</label>
											<div class="col-md-6">
												<input type="text" class="form-control" id="id" name="id" value="{$id}" readonly>
											</div>
										</div>							
										<div class="form-group">
											<label class="col-md-2 control-label">Profile</label>
											<div class="col-md-6">
												<select id="profile" name="profile" class="form-control" required>										
													<option value="{$profile}" selected>Current : {$profile}</option>
												{foreach $usm_profiles as $profiles}	
													<option value="{$profiles['name']}">{$profiles['name']}</option>
												{/foreach}	
												</select>
											</div>
										</div>							
										<div class="form-group">
											<label class="col-md-2 control-label">Limitation</label>
											<div class="col-md-6">
												<select id="limitation" name="limitation" class="form-control" required>										
													<option value="{$limitation}" selected>Current : {$limitation}</option>
												{foreach $usm_limitation as $limitation}	
													<option value="{$limitation['name']}">{$limitation['name']}</option>
												{/foreach}	
												</select>
											</div>
										</div>
										<div class="form-group">
											<label class="col-md-2 control-label">From Time</label>
											<div class="col-md-6">
											{if {$from_time} eq '0s'}
												<input type="text" class="form-control" id="from_time" name="from_time" value="00:00:00" required>
											{else}
												<input type="text" class="form-control" id="from_time" name="from_time" value="{$from_time}" required>
											{/if}
											</div>
										</div>
										<div class="form-group">
											<label class="col-md-2 control-label">Till Time</label>
											<div class="col-md-6">
											{if {$till_time} eq '23h59m59s'}
												<input type="text" class="form-control" id="till_time" name="till_time" value="23:59:59" required>
											{else}
												<input type="text" class="form-control" id="till_time" name="till_time" value="{$till_time}" required>
											{/if}	
											</div>
										</div>
										<br>							
										<div class="form-group">
											<label class="col-md-2 control-label">Day Priod</label>
											<div class="col-md-3 col-sm-6">	
												<input type="checkbox" name="priod[]" value="sunday" {if $weekdays|strstr:'sunday'} checked {/if}> Sunday<br>
												<input type="checkbox" name="priod[]" value="monday" {if $weekdays|strstr:'monday'} checked {/if}> Monday<br>
												<input type="checkbox" name="priod[]" value="tuesday" {if $weekdays|strstr:'tuesday'} checked {/if}> Tuesday<br>
												<input type="checkbox" name="priod[]" value="wednesday" {if $weekdays|strstr:'wednesday'} checked {/if}> Wednesday									
											</div>	
											<div class="col-md-3 col-sm-6">	
												<input type="checkbox" name="priod[]" value="thursday" {if $weekdays|strstr:'thursday'} checked {/if}> Thursday<br>
												<input type="checkbox" name="priod[]" value="friday" {if $weekdays|strstr:'friday'} checked {/if}> Friday<br>
												<input type="checkbox" name="priod[]" value="saturday" {if $weekdays|strstr:'saturday'} checked {/if}> Saturday
											</div>
										</div>
										<br>							
										<div class="form-group">
											<div id="col-lg-offset-2" class="col-lg-offset-2 col-lg-10">
												<button class="btn btn-success waves-effect waves-light" type="submit" name="save">Save Changes</button>
												Or <a onclick="window.history.back()" href="#back">Cancel</a>
											</div>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</section>
			</div>						

{include file="sections/footer.tpl"}
