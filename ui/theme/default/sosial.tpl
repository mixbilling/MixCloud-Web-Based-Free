{include file="sections/header.tpl"}

			<script>		
				function remove() {
					if(confirm('{$_L["Remove_Alert"]}')){
						document.getElementById("sosial").setAttribute("action", "{$_url}sosial/remove-selected");
						document.forms['sosial'].submit();
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
								<div class="panel-heading">Manage Member Social Media</div>
								<div class="panel-body">									
									<div class="group">
										<div style="margin-top:4px;margin-bottom:-20px" class="dropdown "><a style="width:170px" href="#" class="dropdown-toggle btn btn-success waves-effect" data-toggle="dropdown" aria-expanded="false"><i class="ion ion-navicon-round"></i> {$_L['Option_Menu']} <span class="caret"></a></span>
											<ul style="margin-left:2px;width:auto;min-width:168px" class="dropdown-menu">
												<li><a href="#" onclick="remove();" title="REMOVE SELECTED SOCIAL MEDIA"><i class="ion ion-trash-a"></i> {$_L['Remove_Selected']}</a></li>													
											</ul>
										</div>						
									</div>									
									<br>
									<hr>									
									<div class="adv-table table-responsive">
										<form id="sosial" method="post" role="form">
											<table  class="display table table-bordered table-bordered" id="dynamic-table">
												<thead>
													<tr>
														<th class="text-center"><input onclick="toggle(this);" type="checkbox" id="checkAll"></th>
														<th>Picture</th>
														<th>User</th>
														<th>Gender</th>
														<th>Link</th>
														<th>Date Create</th>
														<th class="text-center">{$_L['Manage']}</th>
													</tr>
												</thead>
												<tbody>
												{foreach $d as $ds}
													<tr>
														<td class="text-center">
														{if $ds['owner_name'] eq $_admin['username'] || $_admin['user_type'] eq 'Admin'}
															<input type="checkbox" name="checked[]" value="{$ds['id']}">
														{else}
															<input disabled type="checkbox">
														{/if}	
														</td>
														<td><center><img src="{$ds['picture']}" class="user-image" ></center></td>
														<td><b>{$ds['f_name']} {$ds['l_name']}</b><br>{$ds['email_id']}</td>
														<td><b>{$ds['gender']}</b><br>{$ds['oauth_pro']}</td>
														<td><a href="{$ds['url']}" title="Link Profile" target="_blank">Link Profile {$ds['f_name']}</a></td>
														<td>{$ds['created_date']}</td>
														<td>
														{if $ds['owner_name'] eq $_admin['username'] || $_admin['user_type'] eq 'Admin'}
															<a onClick="return confirm('{$_L['Remove_Alert']}')" href="{$_url}sosial/delete/{$ds['id']}" id="{$ds['id']}" title="REMOVE THIS SOCIAL MEDIA" style="color:#fff;font-size:17px;width:30px;height:30px;" class="btn btn-warning btn-sm fa fa-trash" aria-hidden="true"></a>
														{else}
															<a href="#" style="color:#fff;font-size:17px;width:30px;height:30px;" class="btn btn-warning btn-sm fa fa-ban disabled" aria-hidden="true"></a>
														{/if}
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
			
			

{include file="sections/footer.tpl"}