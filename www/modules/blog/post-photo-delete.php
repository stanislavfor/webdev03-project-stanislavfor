<?php 

if ( !isAdmin() ) {
	header("Location: " . HOST);
	die();
}

$title = "Удалить картинку из поста";
$post = R::load('posts', $_GET['id']);


if ( isset($_POST['photoDeleted']) ) {
	$postImgFolderLocation = ROOT . 'usercontent/blog/';
	$post_img = $post->post_img;
/*	if ( $post_img != "" ) {*/
		$picurl = $postImgFolderLocation . $post_img;
/*	    if ( file_exists($picurl) ) { unlink($picurl); }*/
		$picurl320 = $postImgFolderLocation . '320-' . $post_img;
/*	    if ( file_exists($picurl320) ) { unlink($picurl320); }
	}*/
/*  R::trash( $post_img_small );*/
	R::trash( $post_img );
	header('Location: ' . HOST . "blog?result=photoDeleted");
	exit();

}



ob_start();
include ROOT . "templates/_parts/_header.tpl";
include ROOT . "templates/blog/post-photo-delete.tpl";
$content = ob_get_contents();
ob_end_clean();

include ROOT . "templates/_parts/_head.tpl";
include ROOT . "templates/template.tpl";
include ROOT . "templates/_parts/_footer.tpl";
include ROOT . "templates/_parts/_foot.tpl";

 ?>