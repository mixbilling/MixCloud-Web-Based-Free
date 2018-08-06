	<div>
	<!--modal report-daily -->
		<div class="modal fade" id="report-daily" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" >
			<div  class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
						<h4 class="modal-title" id="myModalLabel">{$_L['Daily_Report']}</h4>
					</div>
					<div class="modal-body">
						<form id="modal-form" class="form-horizontal" method="post" role="form" action="{$_url}reports/daily-view" >
							<div class="form-group">
								<label class="col-md-2 control-label">{$_L['Type']}</label>
								<div class="col-md-6">
									<select class="form-control" id="stype" name="stype">
										<option value="" selected="">- {$_L['All_Transactions']} -</option>
										<option value="Hotspot">HOTSPOT</option>
										<option value="PPPOE">PPPOE</option>
									</select>
								</div>
							</div>
							<div class="form-group">
								<label class="col-md-2 control-label">{$_L['Owner']}</label>
								<div class="col-md-6">
									<select class="form-control select2" style="width: 100%" data-placeholder="- {$_L['All_Owners']} -" name="owner_id" name="owner_id">										
										{if $_admin['user_type'] eq 'Admin'}
											<option value="">- {$_L['All_Owners']} -</option>
										{/if}	
										{foreach $user as $users}
											<option value="{$users['id']}" name="owner_id">{$users['username']}</option>
										{/foreach}
									</select>
								</div>
							</div>					
							<hr/>
							<div>									
								<button style="width:140px" class="btn btn-primary waves-effect waves-light" type="submit">{$_L['Daily_Report']}</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>	
	<!--modal report-daily -->
	</div>	
	
	<div>
	<!--modal report-period -->
		<div class="modal fade" id="report-period" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" >
			<div  class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
						<h4 class="modal-title" id="myModalLabel">{$_L['Period_Reports']}</h4>
					</div>
					<div class="modal-body">
						<form id="modal-form" class="form-horizontal" method="post" role="form" action="{$_url}reports/period-view" >
			              	<div class="form-group">
			                	<label class="col-md-2 control-label">{$_L['From_Date']}</label>
			                	<div style="padding-left:15px;padding-right: 15px" class="input-group date">
			                  		<div class="input-group-addon">
			                    		<i class="fa fa-calendar"></i>
			                  		</div>
			                  		<input type="text" class="form-control pull-right" id="datepicker1" value="" name="fdate">
			                	</div>
			              	</div>
			              	<div class="form-group">
			                	<label class="col-md-2 control-label">{$_L['To_Date']}</label>
			                	<div style="padding-left:15px;padding-right: 15px" class="input-group date">
			                  		<div class="input-group-addon">
			                    		<i class="fa fa-calendar"></i>
			                  		</div>
			                  		<input type="text" class="form-control pull-right" id="datepicker2" value="{$mdate}" name="tdate">
			                	</div>
			              	</div>
							<div class="form-group">
								<label class="col-md-2 control-label">{$_L['Type']}</label>
								<div class="col-md-6">
									<select class="form-control" id="stype" name="stype">
										<option value="" selected="">- {$_L['All_Transactions']} -</option>
										<option value="Hotspot">HOTSPOT</option>
										<option value="PPPOE">PPPOE</option>
									</select>
								</div>
							</div>
							<div class="form-group">
								<label class="col-md-2 control-label">{$_L['Owner']}</label>
								<div class="col-md-6">
									<select class="form-control select2" style="width: 100%" data-placeholder="- {$_L['All_Owners']} -" name="owner_id" name="owner_id">										
										{if $_admin['user_type'] eq 'Admin'}
											<option value="">- {$_L['All_Owners']} -</option>
										{/if}	
										{foreach $user as $users}
											<option value="{$users['id']}" name="owner_id">{$users['username']}</option>
										{/foreach}
									</select>
								</div>
							</div>				
							<hr/>
							<div>									
								<button style="width:140px" class="btn btn-primary waves-effect waves-light" type="submit">{$_L['Period_Reports']}</button>
							</div>
						</form>
					</div>
				</div>
			</div>				
		</div>
	<!--modal report-period -->	
	</div>
				
	<div>
	<!--modal select router-->			
		<div class="modal fade" id="select-router" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" >
			<div style="max-width:350px;" class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
						<h4 style="font-size:16px;" class="modal-title" id="myModalLabel">{$_L['All_Routers']}</h4>
					</div>
					<div class="modal-body">
						<form id="modal-form" class="form-horizontal" method="post" role="form" action="{$_url}dashboard" >
							<div class="form-group">											
								<div style="width:100%;" class="col-md-6 text-center">
									<select class="form-control" name="router" style="width: 100%" data-placeholder="{$_L['Select_Routers']}" onchange="this.form.submit()" required>
										<option value="">- {$_L['Select_Routers']} -</option>											
										{foreach $api as $mikrotik}
											<option value="{$mikrotik['id']}">{$mikrotik['name']}</option>
										{/foreach}
									</select>
								</div>
							</div>
						</form>
					</div>	
				</div>
			</div>
		</div>
	<!--modal select router-->	
	</div>
			