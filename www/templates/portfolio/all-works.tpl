<!-- <?php

echo "<pre>";
print_r($ports);
echo "</pre>";

?> -->



<div class="main-wrapper">
		<?php if ( isset($_GET['result'])) {
			include ROOT . "templates/portfolio/_results.tpl";
		} 
		?>	
	<div class="container container--center">
		<div class="row justify-content-between align-items-center pl-15 pr-15 pt-50">			
			<div class="title-1">Работы, которые сделал я и моя команда</div>
			<?php if ( isAdmin() ) {  ?>	
			<div class="section-ui">
				<a class="button button--edit" href="<?=HOST?>work-new">Добавить работу</a>
			</div>
			<?php } ?>	
		</div>
			<div class="row pb-35">
				<?php foreach ($ports as $port) {
				include ROOT . "templates/_parts/_port-card.tpl";
			} ?>
			</div>
	</div>
</div>
