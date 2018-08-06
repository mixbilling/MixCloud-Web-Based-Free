<!DOCTYPE html>
<html lang="en">
<head>
    <title>Mix.Cloud Installer</title>
    <link rel="shortcut icon" href="img/favicon.png" type="image/x-icon" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!--[if lt IE 9]>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    <link type='text/css' href='css/style.css' rel='stylesheet'/>
    <link type='text/css' href="css/bootstrap.min.css" rel="stylesheet">
</head>

<body class="install">	
	
	<div style="width:40%" id='main-container'>
		<div class='header'>
			<div class="header-box wrapper">
				<div class="text-left"><img style="width:250px" src="img/logo.png" alt="Logo"/></div>
			</div>
		</div>

		<div style="margin-top:3%;" class="span12">
			<?php
			if (isset($_GET['_error']) && ($_GET['_error']) == '1') {
				echo '<h4 style="color: red;"> Unable to Connect Database, Please make sure database info is correct and try again ! </h4>';
			}

			$cururl = 'http://' . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'];
			$appurl = str_replace('/install/step1.php', '', $cururl);
			$appurl = str_replace('?_error=1', '', $appurl);
			$appurl = str_replace('/system', '', $appurl);
			?>

			<form action="step2.php" method="post">
				<fieldset>
					<legend>Database Connection &amp Site config</legend>

					<div class="form-group">
						<label for="appurl">Application URL</label>
						<input type="text" class="form-control" id="appurl" name="appurl" value="<?php echo $appurl; ?>">
						<span class='help-block'>Application URL ( e.g : http://172.16.10.10 ) or Just Keep Default</span>
					</div>
					<div class="form-group">
						<label for="dbhost">Database Host</label>
						<input type="text" class="form-control" id="dbhost" name="dbhost" required>
					</div>
					<div class="form-group">
						<label for="dbuser">Database Username</label>
						<input type="text" class="form-control" id="dbuser" name="dbuser" required>
					</div>
					<div class="form-group">
						<label for="dbpass">Database Password</label>
						<input type="text" class="form-control" id="dbpass" name="dbpass">
					</div>

					<div class="form-group">
						<label for="dbname">Database Name</label>
						<input type="text" class="form-control" id="dbname" name="dbname" required>
					</div>

					<button type="submit" class="btn btn-success">Submit</button>
				</fieldset>
			</form>
		</div>
	</div>
	<div style="color:#ddd" class="footer">Copyright 2018 &copy; Mix.Cloud<br/><br/></div>
</body>
</html>

