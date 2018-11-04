<?php if ( $_GET['result'] == 'catCreated' ) { ?>
<div class="error error--success" data-notify-hide>
	Категория добавлена успешно!
</div>
<?php  } ?>

<?php if ( $_GET['result'] == 'catUpdated' ) { ?>
<div class="error error--success" data-notify-hide>
	Категория отредактирована успешно!
</div>
<?php  } ?>


<?php if ( $_GET['result'] == 'catDeleted' ) { ?>
<div class="error" data-notify-hide>
	Категория удалена успешно!
</div>
<?php  } ?>
