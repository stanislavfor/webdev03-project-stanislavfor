<?php 

if ( !isAdmin() ) {
	header("Location: " . HOST);
	die();
}
$title = "Редактировать работу";

$port = R::findOne('ports', 'id=?', array($_GET['id']));

if ( isset($_POST['portUpdated']) ) {

	if (trim($_POST['port_title']) == '') {
		$errors[] = ['title' => 'Введите Название работы' ];
	}

	if (trim($_POST['description']) == '') {
		$errors[] = ['title' => 'Введите Краткое описание проекта' ];
	}

	if (empty($errors)) {
		$port->port_title = htmlentities($_POST['port_title']);
		$port->description = $_POST['description'];
		$port->result = $_POST['result'];
		$port->technology = $_POST['technology'];
		$port->project_link = htmlentities($_POST['project_link']);
		$port->github_link = htmlentities($_POST['github_link']);
		$port->date_update = R::isoDateTime();
		$port->author_id = $_SESSION['logged_user']['id'];

		if (isset($_FILES["port_img"]["name"]) && $_FILES["port_img"]["tmp_name"] != "" ) {			

			$fileName = $_FILES["port_img"]["name"];
			$fileTmpLoc = $_FILES["port_img"]["tmp_name"];
			$fileType = $_FILES["port_img"]["type"];
			$fileSize = $_FILES["port_img"]["size"];
			$fileErrorMsg = $_FILES["port_img"]["error"];
			$kaboom = explode(".", $fileName);
			$fileExt = end($kaboom);


			list($width, $height) = getimagesize($fileTmpLoc);
			if($width < 10 || $height < 10){
				$errors[] = ['title' => 'Изображение не имеет размеров. Загрузите изображение побольше.' ];
			}

			if ( $fileSize > 4194304 ) {
				$errors[] = ['title' => 'Файл изображения не должен быть более 4 Mb' ];
			}

			if ( !preg_match("/\.(gif|jpg|jpeg|png)$/i", $fileName) ) {
				$errors[]  = [ 'title' => 'Неверный формат файла', 'desc' => '<p>Файл изображения должен быть в формате gif, jpg, jpeg, или png.</p>', ];
			}

			if ( $fileErrorMsg == 1 ) {
				$errors[] = ['title' => 'При загрузке изображения произошла ошибка. Повторите попытку' ];
			}

			$db_file_name = rand(100000000000,999999999999) . "." . $fileExt;
			$portImgFolderLocation = ROOT . 'usercontent/portfolio/';
			$uploadfile = $portImgFolderLocation . $db_file_name;
			$moveResult = move_uploaded_file($fileTmpLoc, $uploadfile);


			// Если картинка была загружена ранее, то удаляем файл
			$port_img = $port->port_img;

			if ( $port_img != "" ) {		
				$picurl = $portImgFolderLocation . $port_img;
				// Удаляем картинку
			    if ( file_exists($picurl) ) { unlink($picurl); }
				$picurl360 = $portImgFolderLocation . '360-' . $port_img;
			    if ( file_exists($picurl360) ) { unlink($picurl360); }
			}

			if ($moveResult != true) {
				$errors[] = ['title' => 'Ошибка сохранения файла' ];
			}

			include_once( ROOT . "/libs/image_resize_imagick.php");
			
			$target_file =  $portImgFolderLocation . $db_file_name;
			$wmax = 920;
			$hmax = 530;
			$img = createThumbnailBig($target_file, $wmax, $hmax);
			$img->writeImage($target_file);

			$port->portImg = $db_file_name;

			$target_file =  $portImgFolderLocation . $db_file_name;
			$resized_file = $portImgFolderLocation . "360-" . $db_file_name;
			$wmax = 360;
			$hmax = 190;
			$img = createThumbnailCrop($target_file, $wmax, $hmax);
			$img->writeImage($resized_file);

			$port->portImg_small = "360-" . $db_file_name;

		}

		R::store($port);
		header('Location: ' . HOST . 'portfolio/work?id=' . $port->id . '&result=portUpdated');
		exit();
  }

}


ob_start();
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/portfolio/edit.tpl";
$content = ob_get_contents();
ob_end_clean();

// Выводим шаблоны
include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_foot.tpl";

?>