{include file="sections/home-header.tpl"}

			<div class="content-wrapper">
				<section class="content">
					<div class="row">
						{if isset($notify)}
							{$notify}
						{/if}
						<div class="col-sm-6">
							<div class="panel">
								<div class="panel-heading">{$_L['Database_Status']}</div>
								<div class="panel-body">
									<div class="row">
										<div class="col-md-12 col-sm-12 col-xs-12">		
											<div class="clearfix invoice-subhead mb20">
												<div class="group clearfix left">
													{$_L['Total_Database_Size']}: {$dbsize}  MB
												</div>	
											</div>
											<br>
											<form  action="{$_url}home-database" method="post" name="postform" enctype="multipart/form-data" >					
												<div class="form-group">								
													<div>
														<input style="border-radius:0;width:250px;border:solid 1px #dddddd;border-radius:3px;padding:3px;" type="file" name="datafile" />
														<button onClick="return confirm('{$_L['Restore_Alert']}')" style="border-radius:0;width:125px;margin-top:8px;height:30px;" class="btn btn-success btn-xs" type="submit" name="restore"><i class="fa fa-upload"></i> Restore DB</button>
														<a onClick="return confirm('{$_L['Backup_Alert']}')" href="{$_url}home-settings/dbbackup/" style="border-radius:0;width:125px;height:30px;margin-top:8px;padding-top:3px;" class="btn btn-success btn-xs"><i class="fa fa-download"></i> Backup DB</a>
													</div>
												</div>
											</form>		
											<hr/>												
											<div class="table-responsive">
												<table class="table table-bordered">
													<thead>
														<tr>
															<th style="font-size:13px;background:#f2f2f2;" width="50%">{$_L['Table_Name']}</th>
															<th style="font-size:13px;background:#f2f2f2;" >{$_L['Rows']}</th>
															<th style="font-size:13px;background:#f2f2f2;">{$_L['Size']}</th>
														</tr>
													</thead>
													<tbody>
													{foreach $tables as $tbl}
														<tr>
															<td>{$tbl['name']}</td>
															<td>{$tbl['rows']}</td>
															<td>{$tbl['size']} Kb</td>
														</tr>
													{/foreach}
													</tbody>
												</table>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</section>
			</div>					

{include file="sections/home-footer.tpl"}