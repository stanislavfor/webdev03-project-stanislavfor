<!DOCTYPE html>
<html lang="ru">

<head>
	<meta charset="UTF-8" />
	<title>

		<?php if ( @$title != '' ) {
			echo "$title";
		} else {
			echo SITE_NAME;
		} ?>
		
		</title>

	<meta name="keywords" content="" />
	<meta name="description" content="" />

	<link rel="stylesheet" href="<?=HOST?>templates/assets/libs/normalize-css/normalize.css" />
	<link rel="stylesheet" href="<?=HOST?>templates/assets/libs/bootstrap-4-grid/grid.min.css" />

	<link rel="stylesheet" href="<?=HOST?>templates/assets/css/main.css" />
	<link rel="stylesheet" href="<?=HOST?>templates/assets/css/tables.css" />	
	<link rel="stylesheet" href="<?=HOST?>templates/assets/css/custom.css" />

	<link href="https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800&amp;subset=cyrillic-ext" rel="stylesheet">
	<link rel="shortcut icon" href="favicon.ico">
	<link rel="icon" type="image/gif" href="./usercontent/gif/animated_favicon2.gif">
</head>