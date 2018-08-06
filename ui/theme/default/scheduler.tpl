{include file="sections/header.tpl"}

			<script>				
				function enable() {
					document.getElementById("scheduler").setAttribute("action", "{$_url}mikrotik/enable-selected-scheduler");
					document.forms['scheduler'].submit();
				}
				function disable() {
					document.getElementById("scheduler").setAttribute("action", "{$_url}mikrotik/disable-selected-scheduler");
					document.forms['scheduler'].submit();
				}
				function remove() {
					if(confirm('{$_L["API_Remove_Alert"]}')){
						document.getElementById("scheduler").setAttribute("action", "{$_url}mikrotik/remove-selected-scheduler");
						document.forms['scheduler'].submit();
					}	
				}					
			</script>

			<div class="content-wrapper">
				<section class="content">
					<div class="row">
						{if isset($notify)}
							{$notify}
						{/if}
						<div class="col-sm-12">
							<div class="panel">
								<div class="panel-heading">Scheduler List</div>
								<div class="panel-body">
									<div class="group">
										<div style="margin-top:4px;" class="dropdown "><a style="width:170px" href="#" class="dropdown-toggle btn btn-success waves-effect" data-toggle="dropdown" aria-expanded="false"><i class="ion ion-navicon-round"></i> {$_L['Option_Menu']}<span class="caret"></a></span>
											<ul style="margin-left:2px;width:auto;min-width:168px" class="dropdown-menu">	
												<li style="margin-left:8px;color:red" class="dropdown-title">Add/Create</li>
												<li><a href="#add-scheduler" data-toggle="modal" data-target="#add-scheduler" title="ADD NEW SCHEDULER"><i class="ion ion-ios-sunny"></i> New Scheduler</a></li>
												<li style="margin-left:8px;color:red" class="dropdown-title">Action</li>
												<li><a onclick="enable();"  href="#enable" title="ENABLE SELECTED"><i class="ion ion-ios-sunny"></i> Enable Selected</a></li>	
												<li><a onclick="disable();"  href="#disable" title="DISABLE SELECTED"><i class="ion ion-ios-sunny"></i> Disable Selected</a></li>
												<li><a onclick="remove();"  href="#remove" title="REMOVE SELECTED"> <i class="ion ion-ios-sunny"></i> Remove Selected</a></li>												
											</ul>
										</div>
									</div>							

									<hr>								
									<div class="adv-table table-responsive">
										<form id="scheduler" method="post" role="form">
											<table  class="display table table-bordered table-bordered" id="scheduler-list">
												<thead>
													<tr>
														<th class="text-center"><input onclick="toggle(this);" type="checkbox" id="checkAll"></th>
														<th>Name</th>
														<th>Owner</th>
														<th>Start Date</th>
														<th>Start Time</th>
														<th>Interval</th>
														<th>Next Run</th>
														<th>Status</th>
														<th>Manage</th>
													</tr>
												</thead>
											</table>
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>
				</section>
			</div>							

		<!--modal add scheduler -->
			<div class="modal fade" id="add-scheduler" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" >
				<div  class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
							<h4 class="modal-title" id="myModalLabel">Add Scheduler</h4>
						</div>
						<div class="modal-body">
							<form id="modal-form" class="form-horizontal" method="post" role="form" action="{$_url}mikrotik/add-scheduler" >
								<div class="test col-md-3 col-sm-6">										
									<div class="form-group">
										<label class="col-md-2 control-label">Scheduler Name</label>
										<div class="col-md-6">
											<input type="text" class="form-control" id="name" name="name" placeholder="scheduler name" required>
										</div>
									</div>
								</div>
								<div class="col-md-3 col-sm-6">	
									<div class="form-group">
										<label class="col-md-2 control-label">Interval</label>
										<div class="col-md-6">
											<input type="text" class="form-control" id="interval" name="interval" placeholder="interval, example for once per day : 1d 00:00:00" value="1d 00:00:00" required>
										</div>
									</div>
								</div>
								<div class="col-md-3 col-sm-6">	
									<div class="form-group">
										<label class="col-md-2 control-label">Start Date</label>
										<div class="col-md-6">
											<input type="text" class="form-control" id="start_date" name="start_date" placeholder="start-date, example : Jan/01/2018" value="Jan/01/2018" required>
										</div>
									</div>
								</div>					
								<div class="col-md-3 col-sm-6">	
									<div class="form-group">
										<label class="col-md-2 control-label">Start Time</label>
										<div class="col-md-6">
											<input type="text" class="form-control" id="start_time" name="start_time" placeholder="start-time, example : 12:00:00" value="12:00:00" required>
										</div>
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-2 control-label">Comment</label>
									<div class="col-md-6">
										<input type="text" class="form-control" name="comment" id="comment" value="add by mixbill-manager">
									</div>
								</div>	
								<div class="form-group">
									<label class="col-md-2 control-label">On Event</label>
									<div class="col-md-6">
										<textarea rows="5" name="on_event" id="on_event"  class="form-control" placeholder="insert script name or write script command here ..." required></textarea>
									</div>
								</div>
								<hr/>
								<div>									
									<button style="width:131px" class="btn btn-success waves-effect waves-light" name="add" type="submit">Add Scheduler</button>									
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>	
		<!--modal add scheduler -->				
				
{include file="sections/footer.tpl"}