<div class="container">
	<div class="row">
		<div class="col-xl-10 offset-1 pb-90">
			<div class="title-1 m-10 pt-60 pb-35">Удалить фото из поста</div>

				<div class="fieldset mb-50">
					<p>Вы действительно хотите удалить фото из поста
						с id = <strong><?=$post['id']?></strong> &#63; <br><br>
						Фото из поста с названием: <strong>&#171;<?=$post['title']?>&#187;</strong>
					</p>
				</div>		

				<form action="<?=HOST?>blog/photo-delete?id=<?=$post['id']?>" method="POST" >
					<input type="submit" name="photoDeleted" class="button button--del" value="Удалить" />
					<a class="button ml-20" href="<?=HOST?>blog/post-edit?id=<?=$post['id']?>">Отмена</a>
				</form>
		</div>
	</div>
</div>