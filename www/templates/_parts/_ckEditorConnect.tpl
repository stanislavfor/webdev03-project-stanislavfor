<script src="<?=HOST?>libs/ckeditor/ckeditor.js"></script>
<script>
document.addEventListener('DOMContentLoaded', function() { // Аналогично функции $(document).ready(function(){
	CKEDITOR.replace('ckEditor', {
		customConfig: '<?=HOST?>templates/assets/js/ckEditorConfig.js'
	});
});
</script>
