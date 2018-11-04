<?php function skillItem($name, $title){  
	global $skills;
?>

	<div class="col-xl-2 col-md-2">
		<div class="fieldset__title technology__item-title"><?=$title;?>
			<input name="<?=$name;?>" class="input technology__item-input" placeholder="50" value="<?=$skills[$name]?>" />
		</div>
	</div>

<?php  } ?>

<div class="section-ui section section-technologi">
	<div class="container pb-55 pt-55">
		<form class="form" action="edit-skills" method="post">		
			<div class="title-3 mt-50 mb-50">
				<h2 class="title-1 mb-10 mt-0">Технологии</h2>
				<span class="title-medium">Которые использую в работе (редактировать)</span></div>

				<?php require ROOT . "templates/_parts/_errors.tpl" ?>

					<div class="row mb-40">
						<?php skillItem('html', 'HTML5'); ?>
						<?php skillItem('css', 'CSS3'); ?>
						<?php skillItem('js', 'JS'); ?>
						<?php skillItem('jquery', 'jQuery'); ?>
					</div>
					<div class="row mb-40">
						<?php skillItem('php', 'PHP'); ?>
						<?php skillItem('mysql', 'MySQL'); ?>
					</div>
					<div class="row">
						<?php skillItem('git', 'Git'); ?>
						<?php skillItem('gulp', 'Gulp'); ?>
						<?php skillItem('npm', 'Npm'); ?>
						<?php skillItem('bower', 'Bower'); ?>
					</div>
					<input type="submit" name="skillsUpdate" class="button button--save mt-50" value="Сохранить" >
		</form>
	</div>
</div>

