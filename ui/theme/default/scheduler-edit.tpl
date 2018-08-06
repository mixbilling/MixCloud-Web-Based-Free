{include file="sections/header.tpl"}
	
			<div class="content-wrapper">
				<section class="content">
					<div class="row">
						{if isset($notify)}
							{$notify}
						{/if}
						<div class="col-sm-12 col-md-6">
							<div class="panel">
								<div class="panel-heading">Edit Scheduler</div>
								<div class="panel-body">
									<form id="modal-form" class="form-horizontal" method="post" role="form" action="{$_url}mikrotik/save-scheduler" >  
										<div hidden class="form-group">
											<label class="col-md-2 control-label">ID</label>
											<div class="col-md-6">
												<input type="text" class="form-control" id="sch_id" name="sch_id" value="{$sch_id}" readonly>
											</div>
										</div>
										<div class="form-group">
											<label class="col-md-2 control-label">Name</label>
											<div class="col-md-6">
												<input type="text" class="form-control" id="sch_name" name="sch_name" value="{$sch_name}" placeholder="insert new scheduler name" required>
											</div>
										</div>
										<div class="col-md-3 col-sm-6">	
											<div class="form-group">
												<label class="col-md-2 control-label">Start Date</label>
												<div class="col-md-6">
													<input type="text" class="form-control" id="sch_start_date" name="sch_start_date" value="{$sch_start_date}" placeholder="new start-date, example : Sep/02/2017" required>
												</div>
											</div>
										</div>
										<div class="col-md-3 col-sm-6">	
											<div class="form-group">
												<label class="col-md-2 control-label">Start Time</label>
												<div class="col-md-6">
													<input type="text" class="form-control" id="sch_start_time" name="sch_start_time" value="{$sch_start_time}" placeholder="new start-time, example: 06:00:00" required>
												</div>
											</div>
										</div>
										<div class="col-md-3 col-sm-6">			
											<div class="form-group">
												<label class="col-md-2 control-label">Interval</label>
												<div class="col-md-6">
													<input type="text" class="form-control" id="sch_interval" name="sch_interval" value="{$sch_interval}" placeholder="new interval, example: 1d 00:00:00" required>
												</div>
											</div>
										</div>
										<div class="col-md-3 col-sm-6">		
											<div class="form-group">
												<label class="col-md-2 control-label">Comment</label>
												<div class="col-md-6">
													{if $sch_comment eq ''}
													<input type="text" class="form-control" name="sch_comment" id="sch_comment" value="add by mixpanel">
													{else}
													<input type="text" class="form-control" name="sch_comment" id="sch_comment" value="{$sch_comment}">
													{/if}
												</div>
											</div>
										</div>									
										<div class="form-group">
											<label class="col-md-2 control-label">On Event</label>
											<div class="col-md-6">
												<textarea rows="4" class="form-control" id="sch_on_event" name="sch_on_event" value="" placeholder="insert new script name or new script command here"></textarea>
											</div>
										</div>							
										<div  style="margin-bottom:-10px" class="form-group"></div>	
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