<div class="container category-delete-page">
	<div class="row mt-40 justify-content-center">
		<div class="col-md-10 mb-120">
			<div class="title-1 mb-20">Удалить комментарий &#63;</div>

			<p>Вы действительно хотите удалить комментарий с id = <strong><?=$comment['id']?></strong> <br><br>
				от пользователя с id = <strong><?=$comment['user_id']?></strong> &#63; <br><br>
				Текст комментария: <br><br>
				<strong>&#171; <?=$comment['text']?> &#187;</strong>
			</p>
			
			<form action="<?=HOST?>blog/comment-delete?id=<?=$comment['id']?>" method="POST"  >
				<input type="submit" name="commentDelete" class="button button--del mt-20" value="Удалить">
				<a class="button ml-20" href="<?=HOST?>profile">Отмена</a>
			</form>

			
		</div>
	</div>
</div>