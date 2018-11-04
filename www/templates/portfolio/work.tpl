<div class="project container mb-100 mt-40 pb-20">

	<div class="project__header row mb-45">
		<div class="project__header-info col offset-sm-1">
			<div class="project__title title-1 mt-0 mb-20"><?=$port->port_title?></div>			
			<span class="project__works title-6"><a href="<?=HOST?>portfolio?>">Все работы (Портфолио)</a>
			</span>
			<span class="project__date title-6"><?=rus_date("j F Y H:i", strtotime($port['date_time']))?></span>
		</div>

		<?php if (isAdmin()) { ?>
		<div class="col text-right">
			<a class="button button--edit" 
			href="<?=HOST?>work-edit?id=<?=$port['id']?>"> Редактировать</a>
			<a class="button button--del button--medium" 
			href="<?=HOST?>work-delete?id=<?=$port['id']?>"> Удалить</a>
		</div>
		<?php } ?>
	</div>

	<?php if (isset($_GET['result'])) {
	include ROOT . "templates/portfolio/_results.tpl";
	} ?>



	<?php if( $port['port_img'] != '') {?>
	<div class="col-sm-10 offset-sm-1 pr-0 pl-0">
		<img src="<?=HOST?>usercontent/portfolio/<?=$port['port_img']?>" />
	</div>
	<?php } ?>


	<div class="row mt-55">		
		<div class="col-sm-6 offset-sm-1">
			<div class="project-info user-content">
				<div class="title-3">Краткое описание проекта</div>
					<p><?=$port['description']?></p>

					<?php if ( $port['result'] != '' ) { ?>
					<div class="title-3">Результат</div>
					<p><?=$port['result']?></p>
					<?php } ?>
			</div>
		</div>

		<div class="col-sm-5">
			<div class="techs">
				<?php if ( $port['technology'] != '' ) { ?>
				<div class="title-3 mt-0 mb-20">Технологии</div>
					<p><?=$port['technology']?></p>
				<?php } ?>

				<?php if ( $port['project_link'] != '' ) { ?>
				<div class="title-3 mt-0 mb-20">Ссылка на проект</div>
				<a href="<?=$port['project_link']?>">
					<?=$port['project_link']?></a>
				<?php } ?>

				<?php if ( $port['github_link'] != '' ) { ?>				
				<div class="title-3 mt-0 mb-20">Код на github</div>
				<a href="<?=$port['github_link']?>">
					<?=$port['github_link']?></a>
				<?php } ?>
			</div>
		</div>
	</div>
	
	<div class="button-block offset-sm-1 mt-30"><a class="button " href="<?=HOST?>portfolio"><i class="fas fa-arrow-left icon-style icon-style--back"></i>Все работы</a><a class="button <?=($nextId == '') ? 'button--none' : ''?>" href="<?=HOST?>portfolio/work?id=<?=$nextId?>">Следующая работа<i class="fas fa-arrow-right icon-style"></i></a></div>
	</div>

</div>

<!--   -->