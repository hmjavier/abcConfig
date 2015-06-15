/**
 * hmjavier
 * Clase para generar arrays que se inyectan a los elementos del DOM
 */
var drawElementsMainCap = {
		init : function() {

			cnocConnector.invokeMashup(cnocConnector.service4, {}, drawElementsMainCap.getListCustomer, "listCustomer", "listCustomerG");
			
			cnocConnector.invokeMashup(cnocConnector.service1, {}, drawElementsMainCap.getListCountries, "listCountry", "listCountryG");
			cnocConnector.invokeMashup(cnocConnector.service2, {}, drawElementsMainCap.getListState, "listState", "listStateG");
			cnocConnector.invokeMashup(cnocConnector.service5, {}, drawElementsMainCap.getListCity, "listCity", "listCityG");
		
			
			drawElementsMainCap.buildTypeLocation(null, "nodeTypeL", "nodeTypeLG");
			
			cnocUtilLibrary.utilValidationFields();
			
		},buildTypeLocation: function(datos, containerElements, divContainer){
			$("#"+divContainer).empty();
			$("#"+divContainer).append("<span class='input-group-addon'>*</span>");
			$("#"+divContainer).append("<select id='"+containerElements+"' style='width:100%; margin-left: 5%;' required></select>");
			
			jQuery("#" + containerElements).append("<option value=''>None Selected</option>");
			jQuery("#" + containerElements).append("<option value='CORPORATE SITE'>CORPORATE SITE</option>");
			jQuery("#" + containerElements).append("<option value='BRANCH'>BRANCH</option>");
			jQuery("#" + containerElements).append("<option value='REGIONAL BRANCH'>REGIONAL BRANCH</option>");
			
			$('#'+containerElements).multiselect();
			
			cnocUtilLibrary.utilValidationFields();
		},getListCustomer: function(datos, containerElements, divContainer){
			
			$("#"+divContainer).empty();
			$("#"+divContainer).append("<span class='input-group-addon'>*</span>");
			$("#"+divContainer).append("<select id='"+containerElements+"' style='width:100%; margin-left: 5%;' required><option id='' value=''>None Selected</option></select>");
			
			if (datos.records.record.length > 1) {

				for ( var i = 0; i < datos.records.record.length; i++) {
					jQuery("#" + containerElements).append(
							"<option value='"
									+ datos.records.record[i].network_code.toString()+"|"+ datos.records.record[i].dept_name.toString() +"'>"
									+ datos.records.record[i].dept_name.toString()
									+ "</option>");
				}
			} else {
				jQuery("#" + containerElements).append(
						"<option value='"
								+ datos.records.record.network_code.toString() +"|"+datos.records.record.dept_name.toString()+"'>"
								+ datos.records.record.dept_name.toString()
								+ "</option>");
			}
			
			$('#'+containerElements).multiselect({
				enableFiltering: true,
	        	maxHeight: 450,
	        	enableCaseInsensitiveFiltering: true,
	        	/*onChange: function(element, checked) {
	        		$('option:selected', $('#'+containerElements)).each(function() {
	        			console.log($(this).val());
	        			var nc = ($(this).val()).split("|");
	        			console.log(nc[0]);
	        			console.log(nc[0].indexOf("L"));
	        			if(nc[0].indexOf("L") == 0){
	        				$(".nsrInternacional").show();
	        				
	        			}else{
	        				$(".nsrInternacional").hide();
	        			}
	        		});
	        	}*/
			});
			
			cnocUtilLibrary.utilValidationFields();

		},getListCountries : function(datos, containerElements, divContainer) {
			
			$("#"+divContainer).empty();
			$("#"+divContainer).append("<span class='input-group-addon'>*</span>");
			$("#"+divContainer).append("<select id='"+containerElements+"' style='width:100%; margin-left: 5%;' required><option id='' value=''>None Selected</option></select>");
			
			if (datos.records.record.length > 1) {

				for ( var i = 0; i < datos.records.record.length; i++) {
					jQuery("#" + containerElements).append(
							"<option value='"
									+ datos.records.record[i].country.toString() +"'>"
									+ datos.records.record[i].country.toString()
									+ "</option>");
				}
			} else {
				jQuery("#" + containerElements).append(
						"<option value='"
								+ datos.records.record.country.toString() +"'>"
								+ datos.records.record.country.toString()
								+ "</option>");
			}
			
			//$('#'+containerElements).multiselect();
			$('#'+containerElements).multiselect({
				enableFiltering: true,
	        	maxHeight: 450,
	        	enableCaseInsensitiveFiltering: true,
	        	onChange: function(element, checked) {
	        		
	        		$('option:selected', $('#'+containerElements)).each(function() {
	        			var country = $(this).val();	        			
	        			cnocConnector.invokeMashup(cnocConnector.service2, {"country":country}, drawElementsMainCap.getListState, "listState", "listStateG");
	        		});	        		
	        	}
			});
			
			cnocUtilLibrary.utilValidationFields();
			
		}, getListState: function(datos, containerElements, divContainer){

			$("#"+divContainer).empty();
			$("#"+divContainer).append("<span class='input-group-addon'>*</span>");
			$("#"+divContainer).append("<select id='"+containerElements+"' style='width:100%; margin-left: 5%;' required><option id='' value=''>None Selected</option></select>");
			
			if (datos.records.record.length > 1) {

				for ( var i = 0; i < datos.records.record.length; i++) {
					jQuery("#" + containerElements).append(
							"<option value='"
									+ datos.records.record[i].state.toString() +"'>"
									+ datos.records.record[i].state.toString()
									+ "</option>");
				}
			} else {
				jQuery("#" + containerElements).append(
						"<option value='"
								+ datos.records.record.state.toString() +"'>"
								+ datos.records.record.state.toString()
								+ "</option>");
			}
			
			//$('#'+containerElements).multiselect();
			
			$('#'+containerElements).multiselect({
				enableFiltering: true,
	        	maxHeight: 450,
	        	enableCaseInsensitiveFiltering: true,
	        	onChange: function(element, checked) {
	        		
	        		$('option:selected', $('#'+containerElements)).each(function() {
	        			var state = $(this).val();	        			
	        			cnocConnector.invokeMashup(cnocConnector.service5, {"state":state}, drawElementsMainCap.getListCity, "listCity", "listCityG");

	        			if(state === "DISTRITO FEDERAL"){
	        				console.log("entro en DISTRITO FEDERAL");

	        				$("#delMunG").empty();
	        				$("#delMunG").append("<span class='input-group-addon'>*</span>");
	        				$("#delMunG").append("<select id='delMun' data-placeholder='Select Interfaz' style='width:100%; margin-left: 5%;' required><option id='' value=''>None Selected</option></select>");
	        				var del = ["Alvaro Obregon","Azcapotzalco","Benito Juarez","Coyoacan","Cuajimalpa","Cuauhtemoc","Gustavo A. Madero","Iztacalco","Iztapalapa","La Magdalena Contreras","Miguel Hidalgo","Milpa Alta","Tlahuac","Tlalpan","Venustiano Carranza","Xochimilco"];
	        				
	        				for ( var i = 0; i < del.length; i++) {
	        					jQuery("#delMun").append(
	        							"<option value='"
	        									+ del[i].toString() +"'>"
	        									+ del[i].toString()
	        									+ "</option>");
	        				}
	        				
	        				$('#delMun').multiselect({
	        					enableFiltering: true,
	        		        	maxHeight: 450,
	        		        	enableCaseInsensitiveFiltering: true,
	        				});
	        			}else{
	        				console.log("NO entro DISTRITO FEDERAL");

	        				$("#delMunG").empty();
	        				$("#delMunG").append("<span class='input-group-addon'>*</span>");
	        				$("#delMunG").append("<input class='form-control' placeholder='Delegacion o Municipio' name='delMun' id='delMun' type='text' required/>");
	        			}
	        			
	        		});	        		
	        	}
			});
			
			
			cnocUtilLibrary.utilValidationFields();
		}, getListCity: function(datos, containerElements, divContainer){

			$("#"+divContainer).empty();
			$("#"+divContainer).append("<span class='input-group-addon'>*</span>");
			$("#"+divContainer).append("<select id='"+containerElements+"' style='width:100%; margin-left: 5%;' required><option id='' value=''>None Selected</option></select>");
			
			if (datos.records.record.length > 1) {

				for ( var i = 0; i < datos.records.record.length; i++) {
					jQuery("#" + containerElements).append(
							"<option value='"
									+ datos.records.record[i].city.toString() +"'>"
									+ datos.records.record[i].city.toString()
									+ "</option>");
				}
			} else {
				jQuery("#" + containerElements).append(
						"<option value='"
								+ datos.records.record.city.toString() +"'>"
								+ datos.records.record.city.toString()
								+ "</option>");
			}
			
			$('#'+containerElements).multiselect({
				enableFiltering: true,
	        	maxHeight: 450,
	        	enableCaseInsensitiveFiltering: true
			});
			
			cnocUtilLibrary.utilValidationFields();
		}, insertConfInbox: function(datos, containerElements, divContainer){
			
			console.log("insertConfInbox");
			console.log(datos);
			
			$( "#formAll").unmask();
		}, showPanelQuality: function(){
			
			/* muestra el panel de service Quality*/
			$(".sQualityPanel").show("slow");
			$(".sInfoPanel").removeClass('col-lg-12', 1000, "easeInBack" );
			$(".sInfoPanel").addClass('col-lg-9', 1000, "easeInBack" );
			cnocUtilLibrary.utilValidationFields();
			
		},hidePanelQuality:function(){
			/* oculta panel de service Quality*/
			$(".sQualityPanel").hide("fast");
			$(".sInfoPanel").removeClass('col-lg-9', 1000 , "easeInBack" );
			$(".sInfoPanel").addClass('col-lg-12', 1000 , "easeInBack" );
		}
};