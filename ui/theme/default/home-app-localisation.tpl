{include file="sections/home-header.tpl"}

			<div class="content-wrapper">
				<section class="content">
					<div class="row">
						{if isset($notify)}
							{$notify}
						{/if}
						<div class="col-sm-12 col-md-6">
							<div class="panel">
								<div class="panel-heading">{$_L['Localisation']}</div>
								<div class="panel-body">
									<form id="modal-form" class="form-horizontal" method="post" role="form" action="{$_url}home-settings/localisation-post" >
										<div class="col-md-3 col-sm-6">	
											<div class="form-group">
												<label class="col-md-2 control-label">{$_L['Timezone']}</label>
												<div class="col-md-6">
													<select name="tzone" id="tzone" class="form-control">
														{foreach $tlist as $value => $label}
															<option value="{$value}" {if $_c['timezone'] eq $value}selected="selected" {/if}>{$label}</option>
														{/foreach}
													</select>
												</div>
											</div>
										</div>
										<div class="col-md-3 col-sm-6">	
											<div class="form-group">
												<label class="col-md-2 control-label">{$_L['Date_Format']}</label>
												<div class="col-md-6">
													<select class="form-control" name="date_format" id="date_format">
														<option value="M/d/Y" {if $_c['date_format'] eq 'M/d/Y'} selected="selected" {/if}>{date('M/d/Y')} (Recommended)</option>
														<option value="d/m/Y" {if $_c['date_format'] eq 'd/m/Y'} selected="selected" {/if}>{date('d/m/Y')}</option>
														<option value="d.m.Y" {if $_c['date_format'] eq 'd.m.Y'} selected="selected" {/if}>{date('d.m.Y')}</option>
														<option value="d-m-Y" {if $_c['date_format'] eq 'd-m-Y'} selected="selected" {/if}>{date('d-m-Y')}</option>
														<option value="m/d/Y" {if $_c['date_format'] eq 'm/d/Y'} selected="selected" {/if}>{date('m/d/Y')}</option>
														<option value="Y/m/d" {if $_c['date_format'] eq 'Y/m/d'} selected="selected" {/if}>{date('Y/m/d')}</option>
														<option value="Y-m-d" {if $_c['date_format'] eq 'Y-m-d'} selected="selected" {/if}>{date('Y-m-d')}</option>
														<option value="d M Y" {if $_c['date_format'] eq 'd M Y'} selected="selected" {/if}>{date('d M Y')}</option>
														<option value="jS M y" {if $_c['date_format'] eq 'jS M y'} selected="selected" {/if}>{date('jS M y')}</option>
													</select>
												</div>
											</div>
										</div>	
										<div class="form-group">
											<label class="col-md-2 control-label">{$_L['Default_Language']}</label>
											<div class="col-md-4">
												<select class="form-control" name="lan" id="lan">
													{foreach $lan as $lans}
														<option value="{$lans['folder']}" {if $_c['language'] eq $lans['folder']} selected="selected" {/if}>{$lans['name']}</option>
													{/foreach}
												</select>
											</div>
											<div style="margin-top:3px" class="col-md-2">
												<a href="#add-language" data-toggle="modal" data-target="#add-language" type="button" class="btn btn-success btn-icon-inline"><i class="ion ion-android-add"></i> {$_L['Add_Language']}</a>
											</div>
										</div>
										<div class="col-md-3 col-sm-6">	
											<div class="form-group">
												<label class="col-md-2 control-label">{$_L['Decimal_Point']}</label>
												<div class="col-md-6">
													<input type="text" class="form-control" id="dec_point" name="dec_point" value="{$_c['dec_point']}">
												</div>
											</div>
										</div>
										<div class="col-md-3 col-sm-6">	
											<div class="form-group">
												<label class="col-md-2 control-label">{$_L['Thousands_Separator']}</label>
												<div class="col-md-6">
													<input type="text" class="form-control" id="thousands_sep" name="thousands_sep" value="{$_c['thousands_sep']}">
												</div>
											</div>
										</div>	
										<div class="form-group">
											<label class="col-md-2 control-label">{$_L['Currency_Code']}</label>
											<div class="col-md-6">
												<input type="text" class="form-control" id="currency_code" name="currency_code" value="{$_c['currency_code']}">
												<span class="help-block">{$_L['currency_help']}</span>
											</div>
										</div>
										<div  style="margin-bottom:-15px" class="form-group"></div>	
										<hr>
										<div>									
											<button class="btn btn-success waves-effect waves-light" type="submit">{$_L['Save_Changes']}</button> Or <a onclick="window.history.back()" href="#back">{$_L['Back']}</a>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</section>
			</div>

		<!--modal add language -->
			<div class="modal fade" id="add-language" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" >
				<div  class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
							<h4 class="modal-title" id="myModalLabel">{$_L['Add_Router']}</h4>
						</div>
						<div class="modal-body">
							<form id="modal-form" class="form-horizontal" method="post" role="form" action="{$_url}home-settings/lang-post" >
								<div class="form-group">
									<label class="col-md-2 control-label">{$_L['Name_Lang']}</label>
									<div class="col-md-6">
										<input type="text" class="form-control" id="name" name="name" placeholder="language name">
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-2 control-label">{$_L['Folder_Lang']}</label>
									<div class="col-md-6">
										<input type="text" class="form-control" id="folder" name="folder" placeholder="folder name">
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-2 control-label">{$_L['Translator']}</label>
									<div class="col-md-6">
										<input type="text" class="form-control" id="translator" name="translator" placeholder="translator">
									</div>
								</div>
								<div  style="margin-bottom:-10px" class="form-group"></div>	
								<hr>
								<div>									
									<button class="btn btn-success waves-effect waves-light" type="submit">{$_L['Add_Language']}</button> 
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>	
		<!--modal add language -->										

{include file="sections/home-footer.tpl"}
