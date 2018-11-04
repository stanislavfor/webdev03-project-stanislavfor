<div class="container">
	<div class="row">
		<div class="col-xl-10 offset-1 pb-90">
			<div class="title-1 m-0 pt-60 pb-35">Удалить запись места работы</div>

					<p>Вы действительно хотите удалить запись места работы (учёбы) с id =
						<strong><?=$job['id']?></strong>&#63; <br>Заголовок: <strong><?=$job['title']?></strong><br><br><strong>Текст записи</strong>: 
						<br>&#171;<?=$job['description']?>&#187;</p>	

			<form action="<?=HOST?>job-delete?id=<?=$job['id']?>" method="POST"  >
				<input type="submit" name="jobDeleted" class="button button--del" value="Удалить">
				<a class="button ml-20" href="<?=HOST?>edit-jobs">Отмена</a>
			</form>
		</div>
	</div>
</div>

