{include file="sections/header.tpl"}

			<div class="content-wrapper">
				<section class="content">
					<div class="row">
						{if isset($notify)}
							{$notify}
						{/if}
						<div class="col-sm-12">
							<div class="panel">
								<div class="panel-heading">Database</div>
								{include file="sections/navbar-usermanager.tpl"}
								<div style="min-height:320px" class="panel-body">
									<form  action="{$_url}mikrotik/usm-restore-db" method="post" name="postform" enctype="multipart/form-data" >					
										<div class="form-group">								
											<div>
												<input style="width:250px;border-radius:0;border:solid 1px #dddddd;border-radius:3px;padding:3px;" type="file" name="datafile" />
												<button title="RESTORE USERMANAGER DATABASE" style="border-radius:0;width:125px;margin-top:8px;height:30px;" class="btn btn-success btn-xs" type="submit" name="usm-restore-db"><i class="fa fa-upload"></i> Restore DB</button>
												<a title="BACKUP USERMANAGER DATABASE" href="{$_url}mikrotik/usm-db-backup" style="border-radius:0;width:125px;height:30px;margin-top:8px;padding-top:3px;" class="btn btn-success btn-xs"><i class="fa fa-download"></i> Backup DB</a>											
											</div>
										</div>
									</form>
									<hr>
									<div class="adv-table table-responsive">
										<table  class="display table table-bordered table-bordered" id="dynamic-table">
											<thead>
												<tr>
													<th>Name</th>
													<th>Type</th>
													<th>Size</th>
													<th>Creation Time</th>
													<th>Manage</th>
												</tr>
											</thead>
											<tbody>
											{foreach $usm_db as $db}
												<tr>
													<td>{$db['name']}</td>
													<td>{$db['type']}</td>													
													<td>{$db['size']}</td>
													<td>{$db['creation-time']}</td>
													<td>
														<a href="{$_url}mikrotik/usm-restore-backup&id={$db['.id']}&name={$db['name']}" id="{$db['.id']}" title="RESTORE THIS BACKUP" style="color:#fff;font-size:17px;width:30px;height:30px;" class="btn btn-success btn-sm fa fa-upload" aria-hidden="true"></a>
														<a href="{$_url}mikrotik/usm-remove-backup&id={$db['.id']}&name={$db['name']}" id="{$db['.id']}" title="REMOVE THIS BACKUP : {$db['name']} ?" onClick="return confirm('{$_L['API_Remove_Alert']}')" style="color:#fff;font-size:17px;width:30px;height:30px;" class="btn btn-warning btn-sm cdelete fa fa-trash" aria-hidden="true"></a>	
													</td>
												</tr>
											{/foreach}
											</tbody>
										</table>
									</div>
									<br>
									<div class="adv-table table-responsive">
										<h5>Database Info</h5>
										<table  class="display table table-bordered table-bordered" id="">
											<thead>
												<tr style="font-size:13px;">
													<th style="background:#ffffff">DB Path</th>
													<th style="background:#ffffff">Size</th>
													<th style="background:#ffffff">In Use</th>																										
													<th style="background:#ffffff">Log Size</th>
													<th style="background:#ffffff">Log In Use</th>
													<th style="background:#ffffff">Last Save</th>
													<th style="background:#ffffff">Last Load</th>
												</tr>
											</thead>
											<tbody>
											{foreach $usm_database as $database}
												<tr>
													<td>{$database['db-path']}</td>
													<td>{$database['size']}</td>
													<td>{$database['in-use']}</td>													
													<td>{$database['log-size']}</td>
													<td>{$database['log-in-use']}</td>
													<td>{$database['last-save']}</td>
													<td>{$database['last-load']}</td>
												</tr>
											{/foreach}
											</tbody>
										</table>
									</div>								
								</div>
							</div>
						</div>
					</div>
				</section>
			</div>							

{include file="sections/footer.tpl"}