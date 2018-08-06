{include file="sections/home-header.tpl"}

			<div class="content-wrapper">
				<section class="content">
					<div class="row">
						{if isset($notify)}
							{$notify}
						{/if}
						<div class="col-sm-12 col-md-6">
							<div class="panel">
								<div class="panel-heading">{$_L['General_Settings']}</div>
								<div class="panel-body">
									<form id="modal-form" class="form-horizontal" method="post" role="form" action="{$_url}home-settings/app-post" >
										<ul class="nav nav-tabs">
											<li class="active"><a style="max-width:170px;text-align:center" data-toggle="tab" href="#basic-info">{$_L['Basic_Info']}</a></li>
											<li><a style="max-width:170px;text-align:center" data-toggle="tab" href="#online-payment">{$_L['Bank_Transfer']}</a></li>
											<li><a style="max-width:170px;text-align:center" data-toggle="tab" href="#voucher-report">{$_L['Voucher_Report']}</a></li>
										</ul>									
										<div class="tab-content">
											<div id="basic-info" class="tab-pane fade in active">
												<div class="form-group">
													<label class="col-md-2 control-label">{$_L['App_Name']}</label>
													<div class="col-md-6">
														<input type="text" class="form-control" id="company" name="company" placeholder="HIJAUNET.ID" value="{$_c['CompanyName']}">
													</div>
												</div>
												<div class="form-group">
													<label class="col-md-2 control-label">{$_L['Address']}</label>
													<div class="col-md-6">
														<textarea class="form-control" id="address" name="address" rows="3" placeholder="Jl.Ledjend Suprapto No.64, Sidoharjo, Pacitan">{$_c['address']}</textarea>
														<span class="help-block">{$_L['address_help']}</span>
													</div>
												</div>
												<div class="form-group">
													<label class="col-md-2 control-label">{$_L['Phone_Number']}</label>
													<div class="col-md-6">
														<input type="text" class="form-control" id="phone" name="phone" placeholder="0877 0229 9005" value="{$_c['phone']}">
													</div>
												</div>											
											</div>
											<div id="online-payment" class="tab-pane fade">
												<div class="form-group">
													<label class="col-md-2 control-label">{$_L['Bank_Name']}</label>
													<div class="col-md-6">
														<input type="text" class="form-control" id="bank_name" name="bank_name" value="{$_c['bank_name']}" placeholder="Bank BRI">
													</div>
												</div>
												<div class="form-group">
													<label class="col-md-2 control-label">{$_L['Acc_Name']}</label>
													<div class="col-md-6">
														<input type="text" class="form-control" id="acc_name" name="acc_name" value="{$_c['acc_name']}" placeholder="HijauNet">
													</div>
												</div>
												<div class="form-group">
													<label class="col-md-2 control-label">{$_L['Acc_Number']}</label>
													<div class="col-md-6">
														<input type="text" class="form-control" id="acc_number" name="acc_number" value="{$_c['acc_number']}" placeholder="xxxx xxxx xxxx xxx">
													</div>
												</div>
											</div>
											<div id="voucher-report" class="tab-pane fade">
												<div class="form-group">
													<label class="col-md-2 control-label">{$_L['Report_Method']}</label>
													<div class="col-md-6">
														<select id="voucher_report" name="voucher_report" class="form-control" required>
															<option value="on-login" id="on-login" name="on-login" {if $_c['voucher_report'] eq 'on-login'}selected{/if}>{$_L['On_Login']}</option>
															<option value="on-create" id="on-create" name="on-create" {if $_c['voucher_report'] eq 'on-create'}selected{/if}>{$_L['On_Create']}</option>
														</select>
													</div>
												</div>											
											</div>
										<div  style="margin-bottom:-15px" class="form-group"></div>	
										<hr>
										<div>									
											<button class="btn btn-success waves-effect waves-light" type="submit">{$_L['Save_Changes']}</button> Or <a onclick="window.history.back()" href="#back">{$_L['Back']}</a>
										</div>									
										</div>									
									</form>				
								</div>
							</div>
						</div>
					</div>
				</section>
			</div>				

{include file="sections/home-footer.tpl"}
