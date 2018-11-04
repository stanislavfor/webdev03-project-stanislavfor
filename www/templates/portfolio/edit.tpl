<div class="container">
	<div class="row mb-100">
		<form actoin="<?=HOST?>portfolio/work?id=<?=$port['id']?>" method="POST" enctype="multipart/form-data" class="form pb-20 pt-35">	
			<div class="col-xl-10 offset-1">
				<div class="title-1 m-0 pt-60">Редактировать работу</div>
				<?php require ROOT . "templates/_parts/_errors.tpl" ?>


					<div class="fieldset">
						<div class="fieldset__title">Название работы</div>
						<input name="port_title" class="input" type="text" placeholder="" data-required="required" data-text-error="Введите Название работы" value="<?=( isset($_POST['port_title']) ) ? $_POST['portTitle'] : $port->portTitle?>" />
					</div>

					<div class="fieldset">
						<div class="fieldset__title">Изображение</div>
						
						<div class="comment-row">Изображение jpg или png, рекомендуемая ширина 920px и больше, высота от 530px и более, вес до 4Мб.</div>

						<div class="control-row">
							<div class="file">
								<div class="file__label">
									<input name="port_img" class="file__input" type="file" id="#undefinedFile" />
									<label class="file__inner-label"  for="#undefinedFile">Выбрать файл</label>
								</div><br>
								<span class="file__inner-caption">Файл не выбран</span>
							</div>
						</div>
						
					</div>

					<div class="fieldset">
							<div class="fieldset__title">Краткое описание проекта</div>
							<textarea id="ckeditor" name="description" class="textarea height-200" rows="7" placeholder=""><?=(isset($_POST['description'])) ? $_POST['description'] : $port->description?></textarea>
					</div>

					<div class="fieldset">	
							<div class="fieldset__title">Результат</div>
							<textarea id="ckeditor2" name="result"class="textarea height-200" rows="7" placeholder=""><?=(isset($_POST['result'])) ? $_POST['result'] : $port->result?></textarea>
					</div>

					<div class="fieldset">			
							<div class="fieldset__title">Технологии</div>
							<textarea id="ckeditor3" name="technology" class="textarea height-200" rows="7" placeholder=""><?=(isset($_POST['technology'])) ? $_POST['technology'] : $port->technology?></textarea>
					<?php include_once ROOT . "templates/_parts/_ckEditorConnect.tpl" ?>						
					</div>

					<div class="row fieldset mb-30">
						<div class="col-4">
								<div class="fieldset__title">Ссылка на проект</div>
								<input name="project_link" type="text" class="input" placeholder="Введите ссылку" value="<?=(isset($_POST['project_link'])) ? $_POST['project_link'] : $port->project_link?>" />
						</div>

						<div class="col-4">						
								<div class="fieldset__title">Ссылка на GitHub</div>
								<input name="github_link" type="text" class="input" placeholder="Введите ссылку" value="<?=(isset($_POST['github_link'])) ? $_POST['github_link'] : $port->github_link?>" />
						</div>
					</div>
					
					<div class="row">
						<div class="col-md-auto pr-10">
							<input type="submit" name="portUpdated" class="button button--save" value="Сохранить изменения" >
						</div>

						<div class="col-md-auto pl-10">
							<a class="button" href="<?=HOST?>portfolio/work?id=<?=$port['id']?>">Отмена</a>
						</div>				
			</div>
		</form>
	</div>
</div>
