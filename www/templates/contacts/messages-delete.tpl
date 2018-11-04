<div class="container">
	<div class="row">
		<div class="col-xl-10 offset-1 pb-90">
			<div class="title-1 m-0 pt-60 pb-35">Удалить сообщение</div>

					<p>Вы действительно хотите удалить сообщение с id =
						<strong><?=$message['id']?></strong> &#63; <br><br>
						Отправитель сообщения: <strong><?=$message['name']?></strong><br><br>
						<strong>Текст сообщения</strong>:<br>
						&#171;<?=$message['message']?>&#187;</p>	

			<form action="<?=HOST?>messages-delete?id=<?=$message['id']?>" method="POST"  >
				<input type="submit" name="messageDeleted" class="button button--del" value="Удалить">
				<a class="button ml-20" href="<?=HOST?>messages">Отмена</a>
			</form>
		</div>
	</div>
</div>