if(typeof jQuery=='undefined')
{
    var headTag = document.getElementsByTagName("head")[0];
    var jqTag = document.createElement('script');
    jqTag.type = 'text/javascript';
    jqTag.src = '';
    headTag.appendChild(jqTag);
}
jQuery(document).ready(function() {
	jQuery('.v_option').click(function(e){
		e.preventDefault();
		var v_option = jQuery(this);
		var options_wrap = jQuery(this).parents('.options_wrap');
		
		jQuery(v_option).find('.radio_control').prop('checked', true);		
		
		jQuery(options_wrap).find('.rad_select').removeClass('xelected');		
		jQuery(options_wrap).find('.rad_select').text('SELECT');		
		jQuery(options_wrap).find('.v_option').removeClass('op_selected');		
		
		jQuery(v_option).addClass('op_selected');
		jQuery(this).find('.rad_select').addClass('xelected');
		jQuery(this).find('.rad_select').text('SELECTED');
	});
	
	jQuery('.v_option .radio_control').change(function(e){
		alert('me');
	});
	jQuery('.form-submit').click(function(e){
		e.preventDefault();
		var formx = jQuery('#voteForm');
		jQuery('.options_wrap').removeClass('error_overlay');
		jQuery('.error_text').hide();
		console.log(from_valid_one());
		console.log(from_valid_two());
		if(from_valid_one() && from_valid_two()) {
			$.post("vote.php", $('#voteForm').serialize(), function(data) {
				if(data.error) {
					jQuery('.error_vote').slideDown();
				}
				else {										
					jQuery('.success_vote').slideDown();
				}				
			}, 'json');
		}		
	});
	function from_valid_one() {
		var flag = true;
		jQuery('.options_wrap').each(function(index){
			if(jQuery(this).find('.radio_control:checked').length == 0) {
				jQuery(this).addClass('error_overlay');
				jQuery(this).find('.error_text').show();
				flag = false;
				return;
			}
		});	
		return flag;
	}
	function from_valid_two() {
		var flag = true;
		jQuery('.xfg').each(function(){		
			if(jQuery(this).find('input').val() == '') {
				jQuery(this).find('.error_text').show();
				flag = false;
				return;
			}
		});	
		return flag;
	}
});