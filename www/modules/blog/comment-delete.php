<?php 

if (!isAdmin()) {
	header('Location: ' . HOST);
	die();
}

$title = "Удалить комментарий";

$comment = R::load('comments', $_GET['id']);

if (isset($_POST['commentDelete'])) {
	R::trash($comment);
	header('Location: ' . HOST . 'profile?result=postDeleted');
	exit();
}


// Готовим контент для центральной части
ob_start();
include ROOT ."templates/_parts/_header.tpl";
include ROOT ."templates/blog/comment-delete.tpl";
$content = ob_get_contents();
ob_end_clean();

// Выводим шаблоны
include ROOT ."templates/_parts/_head.tpl";
include ROOT ."templates/template.tpl";
include ROOT ."templates/_parts/_footer.tpl";
include ROOT ."templates/_parts/_foot.tpl";


 ?>