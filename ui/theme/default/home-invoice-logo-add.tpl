{include file="sections/home-header.tpl"}

			<div class="content-wrapper">
				<section class="content">
					<div class="row">
						{if isset($notify)}
							{$notify}
						{/if}
						<div class="col-sm-12 col-md-6">
							<div class="panel">
								<div class="panel-heading">{$_L['Invoice_Logo']}</div>
								<div class="panel-body">
									<form action="{$_url}home-settings/invoice-logo-post" method="post" name="postform" enctype="multipart/form-data" >					
										<div class="form-group">								
											<div>
												<input style="border-radius:0;width:250px;border:solid 1px #dddddd;border-radius:3px;padding:3px;" type="file" name="datafile" />
												<button style="border-radius:0;width:250px;margin-top:8px;height:30px;padding-bottom:2px;" class="btn btn-success btn-xs" type="submit" name="upload-image"><i class="fa fa-upload"></i> Upload Image</button>
											</div>
										</div>
									</form>		
									<hr/>
									<div class="form-group">
										<label style="padding-left: 0" class="col-md-12 control-label">{$_L['Invoice_Image_Size']}<br></label>
										<br>
									</div>
									<hr>
									<img style="max-width:100%;" src="{$_theme}/images/{$_c['show-logo']}">
								</div>
							</div>
						</div>
					</div>
				</section>
			</div>					

{include file="sections/home-footer.tpl"}