<?php 

if ( !isAdmin() ) {
	header("Location: " . HOST);
	die();
}

$title = "Удалить сообщение";

$message = R::load('messages', $_GET['id']);

if (isset($_POST['messageDeleted'])) {
	$massegeImgFolderLocation = ROOT . 'usercontent/upload_files/';
	$massegeImg = $message->message_file;
	if ($massegeImg != '') { 
			$picurl = $massegeImgFolderLocation . $massegeImg;
		if ( file_exists($picurl) ) { unlink($picurl); }
	}	
	R::trash($message);
	header('Location: ' . HOST . "messages?result=messageDeleted");
	exit();

}

// Готовим контент для центральной части
ob_start();
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/contacts/messages-delete.tpl";
$content = ob_get_contents();
ob_end_clean();

// Выводим шаблоны
include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_foot.tpl";

 ?>