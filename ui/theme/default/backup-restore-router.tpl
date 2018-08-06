{include file="sections/header.tpl"}

			<div class="content-wrapper">
				<section class="content">
					<div class="row">
						{if isset($notify)}
							{$notify}
						{/if}
						<div class="col-sm-12">
							<div class="panel">
								<div class="panel-heading">Backup/Restore Router Configuration</div>							
								<div style="min-height:320px" class="panel-body">								
									<form  action="{$_url}mikrotik/restore-from-file" method="post" name="postform" enctype="multipart/form-data" >					
										<div class="form-group">								
											<div>
												<input required style="border-radius:0;width:250px;border:solid 1px #dddddd;border-radius:3px;padding:3px;" type="file" name="datafile" />
												<button title="RESTORE ROUTER CONFIGURATION FROM BACKUP FILE" style="border-radius:0;width:125px;margin-top:8px;height:30px;" class="btn btn-success btn-xs" type="submit" name="restore-from-file"><i class="fa fa-upload"></i> Restore</button>
												<a title="BACKUP ROUTER CONFIGURATION" href="{$_url}mikrotik/create-backup-file" style="border-radius:0;width:125px;height:30px;margin-top:8px;padding-top:4px;" class="btn btn-success btn-xs"><i class="fa fa-download"></i> Backup</a>											
											</div>
										</div>									
									</form>									
									<hr>
									<div class="adv-table table-responsive">
										<table  class="display table table-bordered table-bordered" id="dynamic-table">
											<thead>
												<tr style="font-size:13px;">
													<th>Name</th>
													<th>Type</th>
													<th>Size</th>
													<th>Creation Time</th>
													<th>Manage</th>
												</tr>
											</thead>
											<tbody>
											{foreach $backup_file as $file}
												<tr>
													<td>{$file['name']}</td>
													<td>{$file['type']}</td>													
													<td>{$file['size']}</td>
													<td>{$file['creation-time']}</td>
													<td>
														<a href="{$_url}mikrotik/restore-backup-file&id={$file['.id']}&name={$file['name']}" id="{$file['.id']}" title="RESTORE FROM THIS BACKUP" onClick="return confirm('RESTORE FROM THIS BACKUP : {$file['name']} ?')" style="color:#fff;font-size:17px;width:30px;height:30px;" class="btn btn-success btn-sm fa fa-upload" aria-hidden="true"></a>
														<a href="{$_url}mikrotik/remove-backup-file&id={$file['.id']}&name={$file['name']}" id="{$file['.id']}" title="REMOVE THIS BACKUP : {$file['name']} ?" onClick="return confirm('{$_L['API_Remove_Alert']}')" style="color:#fff;font-size:17px;width:30px;height:30px;" class="btn btn-warning btn-sm cdelete fa fa-trash" aria-hidden="true"></a>	
													</td>
												</tr>
											{/foreach}
											</tbody>
										</table>
									</div>
									<hr>
									Note : *** Only ".backup" file type will be restored, not support for .RSC file type									
								</div>
							</div>
						</div>
					</div>
				</section>
			</div>						

{include file="sections/footer.tpl"}