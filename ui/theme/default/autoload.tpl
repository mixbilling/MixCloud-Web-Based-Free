<option value="">- {$_L['Select_Plans']} -</option>
{foreach $d as $ds}
	<option value="{$ds['id']}">{$ds['name_plan']}</option>
{/foreach}