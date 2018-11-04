	<div class="col-4 mb-50">
		<div class="section-ui">
			<div class="card card-portfolio">			
		<?php if ( $port->port_img_small != '' ) { ?>
				<img class="card-portfolio__img" src="<?=HOST?>usercontent/portfolio/<?=$port->port_img_small?>" alt="<?=$port->port_title?>" />

		<?php } else { ?>
				<img class="card-portfolio__img" height="190" src="<?=HOST?>usercontent/blog-no-image.jpg" alt="<?=$port->port_title?>" />
		<?php } ?>

				<div class="card-portfolio__body">
					<div class="title-4">
				<?=mbCutString($port->port_title, 25)?>
					</div>
					<a class="button" href="<?=HOST?>portfolio/work?id=<?=$port->id?>">Смотреть кейс</a>
				</div>
			</div>
		</div>
	</div>

