{include file="sections/header.tpl"}

			<script>		
				function remove() {
					if(confirm('{$_L["Remove_Alert"]}')){
						document.getElementById("pppoe").setAttribute("action", "{$_url}services/remove-selected-pppoe");
						document.forms['pppoe'].submit();
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
								<div class="panel-heading">{$_L['PPPOE_Plans']}</div>
								<div class="panel-body">
									<div class="group">
										<div style="margin-top:4px;margin-bottom:-20px" class="dropdown "><a style="width:170px" href="#" class="dropdown-toggle btn btn-success waves-effect" data-toggle="dropdown" aria-expanded="false"><i class="ion ion-navicon-round"></i> {$_L['Option_Menu']}<span class="caret"></a></span>
											<ul style="margin-left:2px;width:auto;min-width:168px" class="dropdown-menu">
												<li><a href="{$_url}services/pppoe-add" title="ADD NEW PPPOE PROFILE"><i class="ion ion-plus"> </i> {$_L['Add_Plan']}</a>
												<li><a href="#" onclick="remove();" title="REMOVE SELECTED PPPOE PROFILE"><i class="ion ion-trash-a"></i> {$_L['Remove_Selected']}</a></li>													
											</ul>
										</div>						
									</div>									
									<br>									
									<hr>
									<div class="adv-table table-responsive">
										<form id="pppoe" method="post" role="form">
											<table  class="display table table-bordered table-bordered" id="dynamic-table">
												<thead>
													<tr>
														<th class="text-center"><input onclick="toggle(this);" type="checkbox" id="checkAll"></th>
														<th>{$_L['Plan_Name']}</th>
														<th>Bandwidth</th>
														<th>{$_L['Plan_Price']}</th>
														<th>{$_L['Plan_Validity']}</th>
														<th>{$_L['IP_Pool']}</th>
														<th>Local Address</th>
														<th>{$_L['Routers']}</th>
														<th>{$_L['Owner']}</th>
														<th>{$_L['Manage']}</th>
													</tr>
												</thead>
												<tbody>
												{foreach $d as $ds}
													<tr>
														<td align="center">													
															{if $ds['owner_name'] eq $_admin['username'] || $_admin['user_type'] eq 'Admin'}
																<input type="checkbox" name="checked[]" value="{$ds['id']}">
															{else}	
																<input disabled type="checkbox">
															{/if}
														</td>
														<td>{$ds['name_plan']}</td>
														<td>{$ds['name_bw']}</td>
														<td>{$_c['currency_code']} {number_format($ds['price'],2,$_c['dec_point'],$_c['thousands_sep'])}</td>
													{if $ds['validity'] neq 0}	
														<td>{$ds['validity']} {if $ds['validity_unit'] eq 'H'} {$_L['Hours']} {else if $ds['validity_unit'] eq 'D'} {$_L['Days']} {else} {$_L['Months']}{/if}</td>
													{else}
														<td>Unlimited</td>
													{/if}	
														<td>{$ds['pool']}</td>
													{if $ds['local_address'] eq ''}	
														<td>Default</td>
													{else}
														<td>{$ds['local_address']}</td>
													{/if}	
														<td>{$ds['routers']}</td>
														<td>{$ds['owner_name']}</td>
														<td>
														{if $ds['owner_name'] eq $_admin['username'] || $_admin['user_type'] eq 'Admin'}
															<a href="{$_url}services/pppoe-edit/{$ds['id']}" title="EDIT THIS PPPOE PROFILE" style="color:#fff;font-size:17px;width:30px;height:30px;" class="btn btn-success btn-sm fa fa-pencil-square-o" aria-hidden="true"></a>										
															<a onClick="return confirm('{$_L['Remove_Alert']}')" href="{$_url}services/pppoe-delete/{$ds['id']}" id="{$ds['id']}" title="REMOVE THIS PPPOE PROFILE" style="color:#fff;font-size:17px;width:30px;height:30px;" class="btn btn-warning btn-sm fa fa-trash" aria-hidden="true"></a>
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
								{$paginator['contents']}
								</div>
							</div>
						</div>
					</div>
				</section>
			</div>						

{include file="sections/footer.tpl"}