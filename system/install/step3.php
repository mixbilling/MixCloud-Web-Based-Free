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
	
	<div id='main-container'>
		<div class='header'>
			<div class="header-box wrapper">
				<div class="text-left"><img style="width:250px" src="img/logo.png" alt="Logo"/></div>
			</div>
		</div>

		<div style="margin-top:3%" class="span12">
			<br>
			<p>
				<strong>Congratulations !!!</strong><br>
				You have just install Mix.Cloud<br>
				Admin Link Login -
				<?php
				$cururl = 'http://' . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'];
				$appurl = str_replace('/install/step3.php', '', $cururl);
				$appurl = str_replace('/system', '', $appurl);
				echo '<a href="' . $appurl . '/admin">' . $appurl .'/admin</a>';
				?>
				<br>
				Username : <b>hijaunet</b><br>
				Password : <b>hijaunet</b><br>
				For security, Rename the <b>install</b> directory inside system folder, and rename back to <b>install</b> if you need to reinstall.
			</p>
			<a style="width:140px;margin-top:4px;" class="btn btn-success waves-effect" href="<?php echo $appurl; ?>/admin" title="Login to DashBoard"><i class="ion ion-log-in"> </i> Login Here</a>
		</div>
	</div>
	</div>
	<div style="color:#ddd" class="footer">Copyright 2018 &copy; Mix.Cloud<br/><br/></div>
</body>
</html>