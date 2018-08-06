{include file="sections/header.tpl"}

			<script>				
				function run() {
					document.getElementById("script").setAttribute("action", "{$_url}mikrotik/run-selected-script");
					document.forms['script'].submit();
				}
				function remove() {
					if(confirm('{$_L["API_Remove_Alert"]}')){
						document.getElementById("script").setAttribute("action", "{$_url}mikrotik/remove-selected-script");
						document.forms['script'].submit();
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
								<div class="panel-heading">Script List</div>
								<div class="panel-body">
									<div class="group">
										<div style="margin-top:4px;" class="dropdown "><a style="width:170px" href="#" class="dropdown-toggle btn btn-success waves-effect" data-toggle="dropdown" aria-expanded="false"><i class="ion ion-navicon-round"></i> {$_L['Option_Menu']}<span class="caret"></a></span>
											<ul style="margin-left:2px;width:auto;min-width:168px" class="dropdown-menu">	
												<li style="margin-left:8px;color:red" class="dropdown-title">Add/Create</li>
												<li><a href="#add-script" data-toggle="modal" data-target="#add-script" title="ADD NEW SCRIPT"><i class="ion ion-ios-sunny"></i> New Script</a></li>
												<li style="margin-left:8px;color:red" class="dropdown-title">Action</li>
												<li><a onclick="run();"  href="#enable" title="RUN SELECTED"><i class="ion ion-ios-sunny"></i> Run Selected</a></li>	
												<li><a onclick="remove();"  href="#remove" title="REMOVE SELECTED"> <i class="ion ion-ios-sunny"></i> Remove Selected</a></li>												
											</ul>
										</div>
									</div>	
									<hr>
									<div class="adv-table table-responsive">
										<form id="script" method="post" role="form">
											<table  class="display table table-bordered table-bordered" id="dynamic-table">
												<thead>
													<tr>
														<th class="text-center"><input onclick="toggle(this);" type="checkbox" id="checkAll"></th>
														<th>Name</th>
														<th>Owner</th>
														<th>Last Started</th>
														<th>Run Count</th>
														<th>Action</th>
														<th>Manage</th>
													</tr>
												</thead>
												<tbody>
												{foreach $script as $scripts}
													<tr>
														<td align="center">													
															<input type="checkbox" name="checked[]" value="{$scripts['.id']}">
														</td>
														<td>{$scripts['name']}</td>
														<td>{$scripts['owner']}</td>
														<td>{$scripts['last-started']}</td>
														<td>{$scripts['run-count']}</td>											
														<td>
															<a style="width:65px" href="{$_url}mikrotik/run-script&id={$scripts['.id']}&name={$scripts['name']}" id="{$scripts['.id']}" title="RUN THIS SCRIPT" class="btn btn-success btn-sm cdelete">Run Script</a>
														</td>	
														<td>
															<a href="{$_url}mikrotik/edit-script&id={$scripts['.id']}&name={$scripts['name']}" id="{$scripts['.id']}" title="EDIT THIS SCRIPT" style="color:#fff;font-size:17px;width:30px;height:30px;" class="btn btn-success btn-sm fa fa-pencil-square-o" aria-hidden="true"></a>
															<a href="{$_url}mikrotik/remove-script&id={$scripts['.id']}&name={$scripts['name']}" id="{$scripts['.id']}" title="REMOVE THIS SCRIPT" onClick="return confirm('{$_L['API_Remove_Alert']}')" style="color:#fff;font-size:17px;width:30px;height:30px;" class="btn btn-warning btn-sm cdelete fa fa-trash" aria-hidden="true"></a>
														</td>
													</tr>
												{/foreach}
												</tbody>
											</table>
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>
				</section>
			</div>						
				
		<!--modal add script -->
			<div class="modal fade" id="add-script" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" >
				<div  class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
							<h4 class="modal-title" id="myModalLabel">Add Script</h4>
						</div>
						<div class="modal-body">
							<form id="modal-form" class="form-horizontal" method="post" role="form" action="{$_url}mikrotik/add-script" >
								<div class="form-group">
									<label class="col-md-2 control-label">Script Name</label>
									<div class="col-md-6">
										<input type="text" class="form-control" id="name" name="name" placeholder="script name" required>
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-2 control-label">Script Source</label>
									<div class="col-md-6">
										<textarea rows="5" name="source" id="source"  class="form-control" placeholder="write your script"></textarea>
									</div>
								</div>
								<hr/>
								<div>									
									<button style="width:131px" class="btn btn-success waves-effect waves-light" name="add" type="submit">Add Script</button>									
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>	
		<!--modal add script -->			

{include file="sections/footer.tpl"}