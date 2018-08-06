{include file="sections/header.tpl"}

			<div class="content-wrapper">
				<section class="content">
					<div class="row">
						{if isset($notify)}
							{$notify}
						{/if}
						<div class="col-sm-8 col-md-4">
							<div class="panel">
								<div class="panel-heading">User Manager : Customer Login</div>
								<div class="panel-body">
									<form class="form-horizontal" action="{$_url}user-manager/c-customers" method="post">
										<div style="margin-top:20px;" class="input-group margin-bottom-sm">
											<span class="input-group-addon"><i class="fa fa-user-circle-o fa-fw"></i></span>
											<input class="form-control" type="text" required placeholder="Username" id="username" name="username">
										</div>									
										<div style="margin-top:10px;" class="input-group">
											<span class="input-group-addon"><i class="fa fa-key fa-fw"></i></span>
											<input class="form-control" type="password" required placeholder="Password" id="password" name="password">
										</div>									
										<hr/>									
										<div class="form-group">								
											<div style="width:100%;" class="col-md-9">
												<select class="form-control" name="usm-router" style="width: 100%" data-placeholder="{$_L['Select_Routers']}" required>
													<option value="">- {$_L['Select_Routers']} -</option>											
													{foreach $usm as $usm_router}
														<option value="{$usm_router['id']}" name=>{$usm_router['name']}</option>
													{/foreach}
												</select>
											</div>
										</div>									
										<hr/>		
										<div class="btn-group btn-group-justified mb15">
											<div class="btn-group">
												<button type="submit" name="c-login" class="btn btn-success"><i class="fa fa-sign-in" aria-hidden="true"></i>LOGIN</button>
											</div>
										</div> 
									</form>
								</div>
							</div>
						</div>
					</div>
				</section>
			</div>						

{include file="sections/footer.tpl"}