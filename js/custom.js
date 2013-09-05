if(typeof jQuery=='undefined')
{
    var headTag = document.getElementsByTagName("head")[0];
    var jqTag = document.createElement('script');
    jqTag.type = 'text/javascript';
    jqTag.src = '';
    headTag.appendChild(jqTag);
}
jQuery(document).ready(function() {
	jQuery('.rad_select').click(function(e){
		e.preventDefault();
		var v_option = jQuery(this).parents('.v_option');
		var options_wrap = jQuery(this).parents('.options_wrap');
		
		jQuery(v_option).find('.radio_control').prop('checked', true);		
		
		jQuery(options_wrap).find('.rad_select').removeClass('xelected');		
		jQuery(options_wrap).find('.rad_select').text('SELECT');		
		jQuery(options_wrap).find('.v_option').removeClass('op_selected');		
		
		jQuery(v_option).addClass('op_selected');
		jQuery(this).addClass('xelected');
		jQuery(this).text('SELECTED');
	});
	
	jQuery('.v_option .radio_control').change(function(e){
		alert('me');
	});
	jQuery('#voteForm').submit(function(e){
		e.preventDefault();
		var formx = jQuery('#voteForm');
		jQuery('.options_wrap').removeClass('error_overlay');
		jQuery('.error_text').hide();
		jQuery('.options_wrap').each(function(index){
			if(jQuery(this).find('.radio_control:checked').length == 0) {
				jQuery(this).addClass('error_overlay');
				jQuery(this).find('.error_text').show();
			}
		});	
		jQuery('.form-item').each(function(){		
			if(jQuery(this).find('input').val() == '') {
				jQuery(this).find('.error_text').show();
			}
		});	
	});
});