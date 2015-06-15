/**
 * hmjavier
 */

var cnocUtilLibrary = {
		utilServiceQuality:function(){
			
			 if($('#serviceQuality').val() === "V2.5"){
					$(".qos").show();
					$(".profileC").hide();
				}else if($('#serviceQuality').val() === "V3.0"){
					$(".qos").hide();
					$(".profileC").show();	
				}else if ($('#serviceQuality').val() === "N/A"){
					$(".qos").hide();
					$(".profileC").hide();
				}
		},utilrequiredPort:function(){
			
			if($("#requiredPort").val() === "NO"){
				$(".requiredPort").hide();
				drawElementsMainCap.hidePanelQuality();
			}else if($("#requiredPort").val() === "YES"){
				$(".requiredPort").show();
				cnocUtilLibrary.utilServiceQuality();
			}
		},utilValidationFields:function(){
			$('.input-group input[required], .input-group textarea[required], .input-group select[required]').on('keyup change', function() {
	    		var $form = $(this).closest('form'),
	                $group = $(this).closest('.input-group'),
	    			$addon = $group.find('.input-group-addon'),
	    			$icon = $addon.find('span'),
	    			state = false;
	                
	        	if (!$group.data('validate')){
	    			state = $(this).val() ? true : false;
	    		}
	        	
	        	cnocUtilLibrary.validationField(state, $addon, $form, $icon);

	    	});
	        
	        $('.input-group input[required], .input-group textarea[required], .input-group select[required]').trigger('change');	
		
		},utilValidationFieldsNoRequired:function(classValue){

			var $form = $(classValue).closest('form'),
           $group = $(classValue).closest('.input-group'),
			$addon = $group.find('.input-group-addon'),
			$icon = $addon.find('span'),
			state = true;
   
			cnocUtilLibrary.validationField(state, $addon, $form, $icon);
			
		},validationField:function(state, $addon, $form, $icon){
			
			if (state) {
				$addon.removeClass('danger');
				$addon.addClass('info');
				$icon.attr('class', 'glyphicon glyphicon-ok');
			}else{
					$addon.removeClass('success');
					$addon.addClass('danger');
					$icon.attr('class', 'glyphicon glyphicon-remove');
			}
	        
	        if ($form.find('.input-group-addon.danger').length == 0) {
	            $form.find('[type="submit"]').prop('disabled', false);
	        }else{
	            $form.find('[type="submit"]').prop('disabled', true);
	        }
	        
		}
};