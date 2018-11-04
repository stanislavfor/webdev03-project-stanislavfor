<?php 

if ( !isAdmin() ) {
	header("Location: " . HOST);
	die();
}
$title = "Удалить работу";

$port = R::load('ports', $_GET['id']);

if ( isset($_POST['portDelete']) ) {

	$portImgFolderLocation = ROOT . 'usercontent/portfolio/';
	$portImg = $port->port_img;
	if ( $port->port_img != "" ) {
		$picurl = $portImgFolderLocation . $port_img;

	    if ( file_exists($picurl) ) { unlink($picurl); }
		$picurl360 = $portImgFolderLocation . '360-' . $port_img;
	    if ( file_exists($picurl360) ) { unlink($picurl360); }
	}

	R::trash($port);
	header('Location: ' . HOST . 'portfolio?result=portDeleted');
	exit();
}



ob_start();
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/portfolio/delete.tpl";
$content = ob_get_contents();
ob_end_clean();

// Выводим шаблоны
include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_foot.tpl";

?>