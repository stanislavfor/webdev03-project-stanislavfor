<div class="container pt-70 mb-40">
	<div class="row">
		<div class="col-xl-3">
			<?php if (  $about->photo != ""): ?>			
			<div class="avatar">
				<img src="<?=HOST?>usercontent/about/<?=$about->photo?>" alt="avatar-big" />
			</div>
			<?php endif ?>			
		</div>
		<div class="col-xl-9">
			<div class="row">
				<div class="col-xl-6">
					<h1 class="section-main_name"><?=$about->name?></h1>
				</div>


	<?php if ( isAdmin() ) { ?>				
				<div class="col-xl-3 offset-3">
					<a class="button button--edit" href="<?=HOST?>edit-text"> Редактировать</a>
				</div>
	<?php }  ?>			
			</div>

			<div class="row">
				<div class="col-xl-12 user-content about-text mt-50">
					<?=$about->description?>
				</div>
			</div>
		</div>
		<?php	if ($uri[0] != 'about') { ?>			
		<div class="col-xl-3 offset-3 mt-20 mb-50">
		<a class="button" href="<?=HOST?>about">Подробнее</a>
		<?php } ?>		
		</div>
	</div>
</div>
		
