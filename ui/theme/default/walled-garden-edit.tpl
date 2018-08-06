{include file="sections/header.tpl"}
	
			<div class="content-wrapper">
				<section class="content">
					<div class="row">
						{if isset($notify)}
							{$notify}
						{/if}
						<div class="col-sm-12 col-md-6">
							<div class="panel">
								<div class="panel-heading">Edit Walled Garden IP</div>
								<div class="panel-body">
									<form id="modal-form" class="form-horizontal" method="post" role="form" action="{$_url}mikrotik/save-walled-list" >
										<div hidden class="form-group">
											<label class="col-md-2 control-label">ID</label>
											<div class="col-md-6">
												<input type="text" class="form-control" id="id" name="id" value="{$id}" readonly>
											</div>
										</div>
										<div class="form-group">
											<label class="col-md-2 control-label">Dst Address</label>
											<div class="col-md-6">
											{if !$dst_address}
												<input type="text" class="form-control" id="dst_address" name="dst_address" value="" placeholder="empty">
											{else}
												<input type="text" class="form-control" id="dst_address" name="dst_address" value="{$dst_address}" placeholder="192.168.1.1">
											{/if}	
											</div>
										</div>
										<div class="form-group">
											<label class="col-md-2 control-label">Protocol</label>
											<div class="col-md-6">
												<select id="protocol" name="protocol" class="form-control">
												{if $protocol eq 'tcp'}
													<option value="{$protocol}">Current : TCP</option>
												{else if $protocol eq 'udp'}
													<option value="{$protocol}">Current : UDP</option>
												{else if $protocol eq 'icmp'}
													<option value="{$protocol}">Current : ICMP</option>
												{else if $protocol eq 'gre'}
													<option value="{$protocol}">Current : GRE</option>
												{else if $protocol eq 'ospf'}
													<option value="{$protocol}">Current : OSPF</option>
												{else if $protocol eq 'encap'}
													<option value="{$protocol}">Current : ENCAP</option>
												{else}
													<option value="">- not set -</option>
												{/if}		
													<option id="tcp" value="tcp">TCP</option>
													<option id="udp" value="udp">UDP</option>
													<option id="icmp" value="icmp">ICMP</option>
													<option id="gre" value="gre">GRE</option>
													<option id="ospf" value="ospf">OSPF</option>
													<option id="encap" value="encap">ENCAP</option>
												</select>
											</div>
										</div>								
										<div class="form-group">
											<label class="col-md-2 control-label">Dst Port</label>
											<div class="col-md-6">
											{if !$dst_port}
												<input type="text" class="form-control" id="dst_port" name="dst_port" value="" placeholder="empty, (single port only)">
											{else}
												<input type="text" class="form-control" id="dst_port" name="dst_port" value="{$dst_port}" placeholder="single port only, example : 443">
											{/if}
											</div>
										</div>
										<div class="form-group">
											<label class="col-md-2 control-label">Dst Host</label>
											<div class="col-md-6">
											{if !$dst_host}
												<input type="text" class="form-control" id="dst_host" name="dst_host" value="" placeholder="empty">
											{else}
												<input type="text" class="form-control" id="dst_host" name="dst_host" value="{$dst_host}" placeholder="topsetting.com">
											{/if}
											</div>
										</div>
										<div class="form-group">
											<label class="col-md-2 control-label">Action</label>
											<div class="col-md-6">
												<select id="action" name="action" class="form-control" required>
												{if $action eq 'accept'}
													<option value="{$action}">Current : ACCEPT</option>
												{else if $action eq 'drop'}
													<option value="{$action}">Current : DROP</option>
												{else $action eq 'reject'}
													<option value="{$action}">Current : REJECT</option>
												{/if}										
													<option value="accept">ACCEPT</option>
													<option value="drop">DROP</option>
													<option value="reject">REJECT</option>
												</select>
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