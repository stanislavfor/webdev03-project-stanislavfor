<div class="container">
	<div class="row">
		<div class="col-xl-10 offset-1">
			<div class="title-1 m-0 pt-60">Удалить пост &#171;<?=$port['port_title']?>&#187; &#63;</div>
				<br><br>
				<div class="fieldset">
					<p>Вы действительно хотите удалить проект работы
						с id = <strong><?=$port['id']?></strong> &#63; <br><br>
						Название проекта: <strong>&#171;<?=$port['port_title']?>&#187;</strong>
					</p>
				</div>			

			<form action="<?=HOST?>work-delete?id=<?=$port['id']?>" method="POST" class="form mb-100 pb-20 pt-35">
				<div class="row">
					<div class="col-md-auto pr-10">
						<input type="submit" name="portDeleted" class="button button--del" value="Удалить">
					</div>
					<div class="col-md-auto pl-10">
						<a class="button" href="<?=HOST?>portfolio/work?id=<?=$port['id']?>">Отмена</a>
					</div>
				</div>
			</form>
			
		</div>
	</div>
</div>
