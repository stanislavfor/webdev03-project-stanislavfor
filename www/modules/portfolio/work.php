<?php 

$title = "Краткое описание проекта";
$port = R::findOne('ports', 'id=?', array($_GET['id']));

// Для кнопок вперед-назад на странице проекта
$portsId = R::getCol('SELECT id FROM ports');
foreach ($portsId as $index => $id) {
	if ($id == $port['id']) {
		@$nextId = $portsId[$index - 1];
		break;
		} 
}


ob_start();
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/portfolio/work.tpl";
$content = ob_get_contents();
ob_end_clean();

include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_foot.tpl";


?>