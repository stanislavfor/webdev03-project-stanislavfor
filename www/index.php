<?php 

// Устанавливает путь до корневой директории скрипта по HTTP-протоколу
define('HOST', 'http://' . $_SERVER['HTTP_HOST'] . '/');

//Устанавливает физический путь до корневой директории скрипта
define('ROOT', dirname(__FILE__).'/');

//Массив с ошибками
$errors = array();
$success = array();

require ROOT . "config.php";
require ROOT . "db.php";
require ROOT . "libs/functions.php";
session_start();


//echo HOST;
//echo ROOT;
//echo "index.php";
//echo "<br><br>";

//----------------------------------------------РОУТЕР

$uri = $_SERVER["REQUEST_URI"];
$uri = rtrim($uri, "/");
$uri = filter_var($uri, FILTER_SANITIZE_URL);
$uri = substr($uri, 1);
$uri = explode('?', $uri);
//echo $uri[0];
//echo "<br><br>";

switch ($uri[0]) {
	case '':
		require ROOT . "modules/main/index.php";
		break;

//-----------------------------users

	case 'login':
		require ROOT . "modules/login/login.php";
		break;

	case 'registration':
		include ROOT . "modules/login/registration.php";
		break;

	case 'logout':
		include ROOT . "modules/login/logout.php";
		break;		

	case 'lost-password':
		include ROOT . "modules/login/lost-password.php";
		break;

	case 'set-new-password':
		include ROOT . "modules/login/set-new-password.php";
		break;

	case 'profile':
		include ROOT . "modules/profile/index.php";
		break;		

	case 'profile-edit':
		include ROOT . "modules/profile/edit.php";
		break;


//-----------------------------CATEGORIES		

	case 'blog/categories':
		include ROOT . "modules/categories/all.php";
		break;		

	case 'blog/category-new':
		include ROOT . "modules/categories/new.php";
		break;		

	case 'blog/category-edit':
		include ROOT . "modules/categories/edit.php";
		break;		

	case 'blog/category-delete':
		include ROOT . "modules/categories/delete.php";
		break;						


//-----------------------------BLOG

	case 'blog':
		include ROOT . "modules/blog/index.php";
		break;

	case 'blog/post-new':
		include ROOT . "modules/blog/post-new.php";
		break;

	case 'blog/post-edit':
		include ROOT . "modules/blog/post-edit.php";
		break;	

	case 'blog/post-delete':
		include ROOT . "modules/blog/post-delete.php";
		break;				

	case 'blog/post':
		include ROOT . "modules/blog/post.php";
		break;


	case 'blog/comment-delete':
		include ROOT . "modules/blog/comment-delete.php";
		break;				

	case 'blog/photo-delete':
		include ROOT . "modules/blog/post-photo-delete.php";
		break;		


//-----------------------------CONTACTS

	case 'contacts':
		include "modules/contacts/index.php";
		break;

	case 'contacts-edit':
		include "modules/contacts/edit.php";
		break;

	case 'messages-delete':
		include "modules/contacts/messages-delete.php";
		break;		

	case 'messages':
		include "modules/contacts/messages.php";
		break;


//-----------------------------ABOUT

	case 'about':
		include "modules/about/index.php";
		break;

	case 'edit-text':
		include "modules/about/edit-text.php";
		break;

	case 'edit-skills':
		include "modules/about/edit-skills.php";
		break;

	case 'edit-jobs':
		include "modules/about/edit-jobs.php";
		break;

	case 'job-delete':
		include "modules/about/_card-job-delete.php";
		break;		

//-----------------------------PORTFOLIO!!!

	case 'portfolio':
		include ROOT . "modules/portfolio/index.php";
		break;

	case 'portfolio/work':
		include ROOT . "modules/portfolio/work.php";
		break;		

	case 'work-new':
		include ROOT . "modules/portfolio/new.php";
		break;

	case 'work-edit':
		include ROOT . "modules/portfolio/edit.php";
		break;	

	case 'work-delete':
		include ROOT . "modules/portfolio/delete.php";
		break;				


//-----------------------------MAIN/OTHER

/*		default:
			echo "Main page / 404";
			break;
*/
	

		default:
			include ROOT . "modules/main/index.php";
			break;


}

?>