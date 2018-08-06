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
			<?php
			$passed = '';
			$ltext = '';
			if (version_compare(PHP_VERSION, '5.2.0') >= 0) {
				$ltext .= 'You need at least PHP version 5.2.0, Your PHP Version is: ' . PHP_VERSION . " Tested <strong>--- PASSED ---</strong><br/>";
				$passed .= '1';

			} else {
				$ltext .= 'To Run Mix.Panel V5 You need at least PHP version 5.2.0, Your PHP Version is: ' . PHP_VERSION . " Tested <strong>--- FAILED ---</strong><br/>";
				$passed .= '0';

			}

			if (extension_loaded('PDO')) {
				$ltext .= 'PDO is installed on your server: ' . "Tested <strong>--- PASSED ---</strong><br/>";
				$passed .= '1';
			} else {
				$ltext = 'PDO is installed on your server: ' . "Tested <strong>--- FAILED ---</strong><br/>";
				$passed .= '0';
			}

			if (extension_loaded('pdo_mysql')) {
				$ltext .= 'PDO MySQL driver is enabled on your server: ' . "Tested <strong>--- PASSED ---</strong><br/>";
				$passed .= '1';
			} else {
				$ltext .= 'PDO MySQL driver is not enabled on your server: ' . "Tested <strong>--- FAILED ---</strong><br/>";
				$passed .= '0';
			}
			
			if ($passed == '111') {
				echo("<br/> $ltext <br/> Great !!! System Test Completed. Click Continue For Next Step.
				<br><br>
				<a href=\"step1.php\" class=\"btn btn-success\">Continue</a>");
			} else {
				echo("<br/> $ltext <br/> Sorry. The requirements of Mix.Cloud is not available on your server.
				Please contact us : owner.hijaun3t@gmail.com Or contact your server administrator
				<br><br>
				<a href=\"#\" class=\"btn btn-success disabled\">Correct The Problem To Continue</a>");
			}
			?>
		</div>
	</div>
	<div style="color:#ddd"class="footer">Copyright 2018 &copy; Mix.Cloud<br/><br/></div>
</body>
</html>

