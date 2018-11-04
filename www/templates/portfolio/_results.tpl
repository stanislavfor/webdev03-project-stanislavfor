<?php if ( $_GET['result'] == 'portDeleted' ) { ?>
<div class="error" data-notify-hide>
	Работа была удалена.
</div>
<?php  } ?>

<?php if ( $_GET['result'] == 'portNew' ) { ?>
<div class="error error--success" data-notify-hide>
	Новая работа добавлена.
</div>
<?php  } ?>

<?php if ( $_GET['result'] == 'portUpdated' ) { ?>
<div class="error error--success" data-notify-hide>
	Работа отредактирована успешно.
</div>
<?php  } ?>
