<?php 

if ( !isAdmin() ) {
	header("Location: " . HOST);
	die();
}

$title = "Удалить место работы";

$job = R::load('jobs', $_GET['id']);

if (isset($_POST['jobDeleted'])) {
	
	R::trash($job);
	header('Location: ' . HOST . "edit-jobs?result=jobDeleted");
	exit();

}

// Готовим контент   для центральной части
ob_start();
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/about/_card-job-delete.tpl";
$content = ob_get_contents();
ob_end_clean();

// Выводим шаблоны
include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_foot.tpl";


 ?>