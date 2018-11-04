<div class="container">
	<div class="row align-items-center mt-40">
		<div class="col offset-md-1">
			<div class="title-1 color">Профиль</div>
		</div>
		<div class="col text-right"><a class="button button--edit" href="<?=HOST?>profile-edit"> Редактировать</a></div>
	</div>
	<div class="row offset-md-1 mb-80">
		<div class="col-md-auto">
			<div class="avatar">
				<?php if ($_SESSION['logged_user']['avatar'] != ""){ ?>
				<img src="<?=HOST?>usercontent/avatar/<?=$currentUser->avatar?>" alt="<?=$currentUser->name?>, <?=$currentUser->city?>" />
				<?php } ?>
			</div>
		</div>
		<div class="col">
			<div class="user-info">
				<div class="user-info__title">Имя и фамилия</div>
				<div class="user-info__desc"><?=$currentUser->name?> <?=$currentUser->secondname?></div>
			</div>
			<div class="user-info">
				<div class="user-info__title">Email</div>
				<div class="user-info__desc"><a href="mailto:google.com"><?=$currentUser->email?></a></div>
			</div>
			<div class="user-info">
				<div class="user-info__title">Страна, Город</div>
				<div class="user-info__desc"><?=$currentUser->country?>, <?=$currentUser->city?></div>
			</div>
		</div>
	</div>
</div>

<?php if ( isAdmin() ) {  ?>	
<div class="container">
	<div class="row justify-content-center">
		<div class="col-md-10">
			<div class="title-2 color">Комментарии пользователей</div>
<div class="profile-comments mb-100">
<!-- 			<div class="blog-full-post">	 -->				
		<?php foreach ($comments as $comment) { ?>
<div class="user-comment">
	<div class="user-comment-wrap">		
		<div class="comment-wrap">
			<div class="user-name">

				<div class="user-name">
				<span>&#171; ID поста: </span><?=$comment['post_id']?><span>, &nbsp;ID пользователя: </span><?=$comment['user_id']?><span> &#187;</span>
				</div>
				<a href="#"><?=$comment['title']?></a>
			</div>
					<div class="user-date"><i class="far fa-clock"></i>
			<span class="user-date--dat"><?=$comment['date_time']?></span>
					</div>


		</div>
				<p class="user-text"><?=$comment['text']?></p><a class="" href="<?=HOST?>blog/comment-delete?id=<?=$comment['id']?>"> Удалить</a>
	</div>
</div>	
		<?php } ?>			
</div>

			</div>
		</div>

	</div>
<?php } ?>	
</div>