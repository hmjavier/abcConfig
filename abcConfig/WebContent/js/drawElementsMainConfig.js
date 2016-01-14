/**
 * hmjavier
 * Clase para generar arrays que se inyectan a los elementos del DOM
 */
var drawElementsMainConfig = {
		idLocation: "",
		typeChange: "",
		orderId: "",
		rowL : false,
		rowNC : false,
		rowDC : false,
		rowBS : false,
		rowP : false,
		uniqueIdentifierAll: "",
		ipWanAll: "",
		alertNameNC:"",
		typeLocation: null,
		flagAlertNameCircuit:true,
		flagAlertNameNC: true,
		tmpState : "",
		tmpCity :"",
		init : function() {
			
			drawElementsMainConfig.buildTypeLocation(null, "nodeTypeL", "nodeTypeLG");
			cnocConnector.invokeMashup(cnocConnector.service1, {}, drawElementsMainConfig.getListConfig, "listConfig", "listConfigG");			
			cnocConnector.invokeMashup(cnocConnector.serviceCountry, {}, drawElementsMainConfig.getListCountries, "listCountry", "listCountryG");			
			cnocConnector.invokeMashup(cnocConnector.serviceCatState, {}, drawElementsMainConfig.getListState, "listState", "listStateG");		
			cnocConnector.invokeMashup(cnocConnector.serviceCatCity, {}, drawElementsMainConfig.getListCity, "listCity", "listCityG");
			cnocConnector.invokeMashup(cnocConnector.serviceSubtype, {}, drawElementsMainConfig.subtype, "subType", "subTypeG");
			cnocConnector.invokeMashup(cnocConnector.serviceCatFunction, {}, drawElementsMainConfig.catFunction, "functionBS", "functionBSG");
			
			cnocUtilLibrary.utilValidationFields();
			
		},catFunction:function(datos, containerElements, divContainer){
			
			$("#"+divContainer).empty();
			$("#"+divContainer).append("<span class='input-group-addon'>*</span>");
			$("#"+divContainer).append("<select id='"+containerElements+"' style='width:100%; margin-left: 5%;' required><option id='' value=''>None Selected</option></select>");
			
			if (datos.records.record.length > 1) {

				for ( var i = 0; i < datos.records.record.length; i++) {
					jQuery("#" + containerElements).append(
							"<option value='"
									+ datos.records.record[i].catfunction.toString() +"'>"
									+ datos.records.record[i].catfunction.toString()
									+ "</option>");
				}
			} else {
				jQuery("#" + containerElements).append(
						"<option value='"
								+ datos.records.record.catfunction.toString() +"'>"
								+ datos.records.record.catfunction.toString()
								+ "</option>");
			}
			
			$('#'+containerElements).multiselect({
				enableFiltering: true,
	        	maxHeight: 200,
	        	enableCaseInsensitiveFiltering: true
			});
			
			cnocUtilLibrary.utilValidationFields();
			
		},subtype:function(datos, containerElements, divContainer){
			
			console.log("Subtype");
			console.log(datos);
			var subtype = (datos.records.record.sub_type).split("\n");
			
			$("#"+divContainer).empty();
			$("#"+divContainer).append("<span class='input-group-addon'>*</span>");
			$("#"+divContainer).append("<select id='"+containerElements+"' style='width:100%; margin-left: 5%;' required><option id='' value=''>None Selected</option></select>");
			
			if (subtype.length > 1) {

				for ( var i = 0; i < subtype.length; i++) {
					jQuery("#" + containerElements).append(
							"<option value='"
									+ subtype[i].toString() +"'>"
									+ subtype[i].toString()
									+ "</option>");
				}
			} else {
				jQuery("#" + containerElements).append(
						"<option value='"
								+ subtype.toString() +"'>"
								+ subtype.toString()
								+ "</option>");
			}
			
			$('#'+containerElements).multiselect();
			
			cnocUtilLibrary.utilValidationFields();
			
		},dashboarClass:function(datos, containerElements, divContainer){
			
			var dashClass = (datos.records.record.dashboard_class_values).split("\n");
			
			$("#"+divContainer).empty();
			$("#"+divContainer).append("<span class='input-group-addon'>*</span>");
			$("#"+divContainer).append("<select id='"+containerElements+"' style='width:100%; margin-left: 5%;' ><option id='' value=' '>None Selected</option></select>");
			
			if (dashClass.length > 1) {

				for ( var i = 0; i < dashClass.length; i++) {
					jQuery("#" + containerElements).append(
							"<option value='"
									+ dashClass[i].toString() +"'>"
									+ dashClass[i].toString()
									+ "</option>");
				}
			} else {
				jQuery("#" + containerElements).append(
						"<option value='"
								+ dashClass.toString() +"'>"
								+ dashClass.toString()
								+ "</option>");
			}
			
			$('#'+containerElements).multiselect();
			
			cnocUtilLibrary.utilValidationFields();
			
		},buildTypeLocation: function(datos, containerElements, divContainer){
			$("#"+divContainer).empty();
			$("#"+divContainer).append("<span class='input-group-addon'>*</span>");
			$("#"+divContainer).append("<select id='"+containerElements+"' style='width:100%; margin-left: 5%;' required></select>");
			
			jQuery("#" + containerElements).append("<option value=''>None Selected</option>");
			jQuery("#" + containerElements).append("<option value='CORPORATE SITE'>CORPORATE SITE</option>");
			jQuery("#" + containerElements).append("<option value='BRANCH'>BRANCH</option>");
			jQuery("#" + containerElements).append("<option value='REGIONAL BRANCH'>REGIONAL BRANCH</option>");
			
			
			$('#'+containerElements).multiselect({
				enableFiltering: true,
	        	maxHeight: 450,
	        	enableCaseInsensitiveFiltering: true,
	        	onChange: function(element, checked) {
	        		
	        		$('option:selected', $('#'+containerElements)).each(function() {
	        			drawElementsMainConfig.utilnodeTypeL();	        			
	        			//console.log(drawElementsMainConfig.typeLocation);
	        		});
	        	}
			});
			
			cnocUtilLibrary.utilValidationFields();
			
		},getListConfig: function(datos, containerElements, divContainer){
			var data = "";
			var rowsData = new Array();
			if(datos.records.record.length > 0){
				for(var idx = 0; idx < datos.records.record.length; idx++){
					
					try{
						data += "<tr><td>"+datos.records.record[idx].company+"</td>";
						data += "<td>"+datos.records.record[idx].location+"</td>";
						data += "<td>"+datos.records.record[idx].location_name+"</td>";
						data += "<td>"+datos.records.record[idx].type_change+"</td>";
						data += "<td>"+datos.records.record[idx].date_request+"</td>";
						data += "<td>"+datos.records.record[idx].order_id+"</td>";
						data += "<td style='text-align: center;'><button type='button' class='btn btn-default editRow' aria-label='Left Align'><span class='glyphicon glyphicon-pencil' aria-hidden='true'></span></button></td>";
						data += "<td style='text-align: center;'><button type='button' class='btn btn-default deleteRow' aria-label='Left Align'><span class='glyphicon glyphicon-trash' aria-hidden='true'></span></button></td></tr>";
					}catch(e){
						console.log(e);
					}
				}
			}else{
				try{
					data += "<tr><td>"+datos.records.record.company+"</td>";
					data += "<td>"+datos.records.record.location+"</td>";
					data += "<td>"+datos.records.record.location_name+"</td>";
					data += "<td>"+datos.records.record.type_change+"</td>";
					data += "<td>"+datos.records.record.date_request+"</td>";
					data += "<td>"+datos.records.record.order_id+"</td>";
					data += "<td title='Editar Registro' style='text-align: center;'><button type='button' class='btn btn-default editRow' aria-label='Left Align'><span class='glyphicon glyphicon-pencil' aria-hidden='true'></span></button></td>";
					data += "<td title='Eliminar Registro' style='text-align: center;'><button type='button' class='btn btn-default deleteRow' aria-label='Left Align'><span class='glyphicon glyphicon-trash' aria-hidden='true'></span></button></td></tr>";
				}catch(e){
					console.log(e);
				}
			}
   			/*GENERA ARRAY DE ENCABEZADOS DE GRAFICA*/
   			try {
   				var rowsHeaders = [ {
   					"sTitle" : "Cliente"
   				},{
   					"sTitle" : "Location"
   				}, {
   					"sTitle" : "Nombre de Sitio"
   				}, {
   					"sTitle" : "Tipo de Cambio"
   				}, {
   					"sTitle" : "Fecha Implementacion"
   				}, {
   					"sTitle" : "Order ID"
   				}, {
   					"sTitle" : "Editar"
   				}, {
   					"sTitle" : "Eliminar"
   				}];
   			} catch (err) {
   			};
   			
   			jQuery("#containerTable").empty();	 
   			var tableData = '<table class="table table-striped table-bordered cell-border compact hover" id="inboxTable">'+data+'</table>';

   			jQuery("#containerTable").append(tableData);
   			
   			var oTable = jQuery("#inboxTable").DataTable({
   				"aoColumns" : rowsHeaders,
   				"hover": true
   			});
   			
   			/*
   			$('#inboxTable tbody').on( 'click', 'tr', function () {
   		        $(this).toggleClass('selected');
   		    } );*/
   			
   			/********************************************************/
   			/* ELIMINA ROWS QUE NO SE DARAN DE ALTA */
   			
   			$('#inboxTable tbody').on( 'click', '.deleteRow', function () {   				
   				
   				var rowData = oTable.row( $(this).parents('tr') );
   				drawElementsMainConfig.idLocation = rowData.data()[1];
   				drawElementsMainConfig.orderId = rowData.data()[5];
   				
   				bootbox.confirm({ 
   				    size: 'small',
   				    message: "¿ Desea Eliminar Registro ?", 
   				    callback: function(result){ 
   				    	
   				    	if(result){
   				    		rowData.remove().draw();
   							cnocConnector.invokeMashup(cnocConnector.serviceUpdateConfInbox, 
   				        			{	"location": drawElementsMainConfig.idLocation,
    									"no_change": 000000,
									    //"type_change":  $("#typeChange").val(),
    									"order_id": drawElementsMainConfig.orderId
   										
   				        			}, 
   				        			function(response){
   				        				bootbox.alert("Registro Eliminado");
   				        				/*NOTA VALIDAR SI AL ELIMINAR SE VAN TODOS LOS REGISTROS*/
   				        				cnocConnector.invokeMashup(cnocConnector.service1, {}, drawElementsMainConfig.getListConfig, "listConfig", "listConfigG");
   				        				$( "#container").unmask();
   				        			}
   				        			, null, null);
   				    	}else{
   				    		$( "#container").unmask();
   				    	}
   				    }
   				});

   			} );
   			
   			$('#inboxTable tbody').on( 'click', '.editRow', function () {
   				$( "#container").mask("Waiting...");
   				var rowData = oTable.row($(this).parents('tr')).data();
   				drawElementsMainConfig.idLocation = rowData[1];
   				drawElementsMainConfig.typeChange = rowData[3];
   				drawElementsMainConfig.orderId = rowData[5];
   				cnocConnector.invokeMashup(cnocConnector.service2, {"consulta":drawElementsMainConfig.idLocation, "type":"LOCATION", "type_change":drawElementsMainConfig.typeChange, "order_id": drawElementsMainConfig.orderId}, drawElementsMainConfig.getInfoRowInboxLocation, "infoRowInbox", "infoRowInboxG");   				
   			} );
   			
   			/*$("#inboxTable").delegate("tbody tr", "click", function () {
   				$( "#container").mask("Waiting...");
   				// get the position of the current data from the node
	   	         var aPos = oTable.fnGetPosition( this );	
	   	         // get the data array
	   	         var aData = oTable.fnGetData( aPos[0] );
	   	         //var idRow = aData[aPos][1];
	   	         drawElementsMainConfig.idLocation = aData[aPos][1];
	   	         //console.log(drawElementsMainConfig.idLocation);	   	         
	 			cnocConnector.invokeMashup(cnocConnector.service2, {"consulta":drawElementsMainConfig.idLocation, "type":"LOCATION"}, drawElementsMainConfig.getInfoRowInboxLocation, "infoRowInbox", "infoRowInboxG");	 			
   			});*/ 
   			
   			$( "#container").unmask();
   			
		},getInfoRowInboxLocation: function(datos, containerElements, divContainer){
			//console.log(datos);
			$( "#container").mask("Waiting... Load Location ");
			console.log("LOCATION");
			var nc = "";
			try{
				$.each( datos, function( key, val ){
					$.each( val, function( key, val ){
						$.each( val, function( key, val ){							
							/************************************************************************/
							/* DATA LOCATION FROM CONFINBOX */
							
							try{
								if(val.message === "Success"){
									drawElementsMainConfig.rowL = true;
								}else{
									drawElementsMainConfig.rowL = false;
								}
							}catch(e){
								drawElementsMainConfig.rowL = false;
							}
							
							//console.log("rowL: "+drawElementsMainConfig.rowL);
							
							try{$("#fechaImple").val(val.instance.date_request.content);}catch(e){$("#fechaImple").val("");}
							try{$("#typeChange").val(val.instance.type_change.content);}catch(e){$("#typeChange").val("");}
							//try{$("#city").val(val.instance.city.content);}catch(e){$("#city").val("");}
							try{$("#company").val(val.instance.company.content);}catch(e){$("#company").val("");}
							//try{$("#country").val(val.instance.country.content);}catch(e){$("#country").val("");}
							try{$("#customerSiteAlias").val(val.instance.customer_site_alias.content);}catch(e){$("#customerSiteAlias").val("");}
							try{$("#delMun").val(val.instance.district.content);}catch(e){$("#delMun").val("");} //District
							try{$("#insideNum").val(val.instance.inside_num.content);}catch(e){$("#insideNum").val("");}								
							try{$("#location").val(val.instance.location.content);}catch(e){$("#location").val("");}								
							try{$("#locationName").val(val.instance.location_name.content);}catch(e){$("#locationName").val("");}
							try{
								$("#networkCode").val(val.instance.network_code.content);
								nc = val.instance.network_code.content;
							}catch(e){$("#networkCode").val("");}
							try{$("#outsideNum").val(val.instance.outside_num.content);}catch(e){$("#outsideNum").val("");}
							try{$("#street").val(val.instance.street.content);}catch(e){$("#street").val("");}
							//try{$("#state").val(val.instance.state.content);}catch(e){$("#state").val("");}								
							try{$("#zip").val(val.instance.zip.content);}catch(e){$("#zip").val("");}
							try{$("#street").val(val.instance.street.content);}catch(e){$("#street").val("");}
							try{$("#phoneContact").val(val.instance.phone_contact.content);}catch(e){$("#phoneContact").val("");}
							try{$("#contact").val(val.instance.contact.content);}catch(e){$("#contact").val("");}
							try{$("#mailContact").val(val.instance.mail_contact.content);}catch(e){$("#mailContact").val("");}
							try{$("#neighborhood").val(val.instance.neighborhood.content);}catch(e){$("#neighborhood").val("");}
							try{$("#unique_identifier").val(val.instance.unique_identifier.content);}catch(e){$("#unique_identifier").val("");}
							
							try{
								$("#nodeTypeL option[value='" + val.instance.node_type.content + "']").prop("selected", true);
								$("#nodeTypeL").multiselect("refresh");
								
							}catch(e){
								$("#nodeTypeL option[value='None Selected']").prop("selected", true);
								$("#nodeTypeL").multiselect("refresh");
								console.log(e);
								//$("#nodeTypeL").val("");																
							}
							
							try{
								$("#listCountry option[value='" + val.instance.country.content + "']").prop("selected", true);
								$("#listCountry").multiselect("refresh");
								
							}catch(e){
								$("#listCountry option[value='None Selected']").prop("selected", true);
								$("#listCountry").multiselect("refresh");
								console.log(e);
								//$("#nodeTypeL").val("");																
							}
							
							try{
								drawElementsMainConfig.tmpState =  val.instance.state.content;									
								cnocConnector.invokeMashup(cnocConnector.serviceCatState, {"country":$('#listCountry').val()}, drawElementsMainConfig.getListState, "listState", "listStateG");
								
							}catch(e){
								$("#listState option[value='None Selected']").prop("selected", true);
								$("#listState").multiselect("refresh");
								console.log(e);
								//$("#nodeTypeL").val("");																
							}
							
							try{
								
								drawElementsMainConfig.tmpCity =  val.instance.city.content;
								cnocConnector.invokeMashup(cnocConnector.serviceCatCity, {"state":drawElementsMainConfig.tmpState}, drawElementsMainConfig.getListCity, "listCity", "listCityG");
								
							}catch(e){
								$("#listCity option[value='None Selected']").prop("selected", true);
								$("#listCity").multiselect("refresh");
								console.log(e);
								//$("#nodeTypeL").val("");																
							}
							
							drawElementsMainConfig.utilnodeTypeL();
							cnocUtilLibrary.utilValidationFields();
	
						});					
					});				
				});				
			}catch(e){
				console.log(e);
			}
			
			cnocConnector.invokeMashup(cnocConnector.serviceDashboarClass, {"networkCode":nc}, drawElementsMainConfig.dashboarClass, "dashClass", "dashClassG");
			
			cnocConnector.invokeMashup(cnocConnector.service2, {"consulta":drawElementsMainConfig.idLocation, "type":"NETWORKCOMP", "type_change":drawElementsMainConfig.typeChange, "order_id":drawElementsMainConfig.orderId}, drawElementsMainConfig.getInfoRowInboxNetworkComponent, "infoRowInbox", "infoRowInboxG");

		},getInfoRowInboxNetworkComponent: function(datos, containerElements, divContainer){
			$( "#container").mask("Waiting... Load Network Component ");
			console.log("NetworkComponent");
			//console.log(datos);
			try{
				$.each( datos, function( key, val ){
					$.each( val, function( key, val ){
						$.each( val, function( key, val ){	
							
							try{
								if(val.message === "Success"){
									drawElementsMainConfig.rowNC = true;
								}else{
									drawElementsMainConfig.rowNC = false;
								}
							}catch(e){
								drawElementsMainConfig.rowNC = false;
							}
							
							/************************************************************************/
							/* DATA NETWORK COMPONENT FROM CONFINBOX */
								//try{$("#istatus").val(val.instance.istatus.content);}catch(e){$("#istatus").val("");}
								try{$("#model").val(val.instance.model.content);}catch(e){$("#model").val("");}
								try{$("#osRelease").val(val.instance.os_release.content);}catch(e){$("#osRelease").val("");}
								try{$("#scope").val(val.instance.scope.content);}catch(e){$("#scope").val("");}
								try{$("#ipWan").val(val.instance.ip_wan.content);}catch(e){$("#ipWan").val("");}
								try{$("#location").val(val.instance.location.content);}catch(e){$("#location").val("");}
								try{$("#serialNo").val(val.instance.serial_no.content);}catch(e){$("#serialNo").val("");}
								try{$("#monitoringIp").val(val.instance.monitor_ip.content);}catch(e){$("#monitoringIp").val("");}
								try{$("#allowSubscription").val(val.instance.allow_subscription.content);}catch(e){$("#allowSubscription").val("");}
								try{$("#osVersion").val(val.instance.os_version.content);}catch(e){$("#osVersion").val("");}
								//try{$("#requiredModule").val(val.instance.required_module.content);}catch(e){$("#requiredModule").val("");}
								//try{$("#problemPriority").val(val.instance.problema_priority.content);}catch(e){$("#problemPriority").val("");}
								try{$("#manufacturer").val(val.instance.manufacturer.content);}catch(e){$("#manufacturer").val("");}
								//try{$("#subtype").val(val.instance.subtype.content);}catch(e){$("#subtype").val("");}
								try{$("#owner").val(val.instance.owner.content);}catch(e){$("#owner").val("");}
								try{$("#ipLoopback").val(val.instance.ip_loopback.content);}catch(e){$("#ipLoopback").val("");}
								try{$("#monitoringProfile").val(val.instance.monitoring_profile.content);}catch(e){$("#monitoringProfile").val("");}
								//try{$("#locationCode").val(val.instance.location.content);}catch(e){$("#locationCode").val("");};
								try{$("#hostname").val(val.instance.ci_name.content);}catch(e){$("#hostname").val("");};
								try{$("#dependence").val(val.instance.dependence.content);}catch(e){$("#ci_name").val("");};
								
								try{$("#modulePartNo").val("");}catch(e){$("#modulePartNo").val("");};
								try{$("#moduleSerialNo").val("");}catch(e){$("#moduleSerialNo").val("");};
								
								$("#tableModulePart").empty();
								
								try{
									$("#requiredModule option[value='" + val.instance.required_module.content + "']").prop("selected", true);
									$("#requiredModule").multiselect("refresh");
									drawElementsMainConfig.utilrequiredModule();
								}catch(e){
									$("#requiredModule option[value='None Selected']").prop("selected", true);
									$("#requiredModule").multiselect("refresh");
									console.log(e);
									//$("#nodeTypeL").val("");																
								}
								
								try{
									$("#subType option[value='" + val.instance.subtype.content + "']").prop("selected", true);
									$("#subType").multiselect("refresh");
									drawElementsMainConfig.utilrequiredModule();
								}catch(e){
									$("#subType option[value='None Selected']").prop("selected", true);
									$("#subType").multiselect("refresh");
									console.log(e);
									//$("#nodeTypeL").val("");																
								}
								
								try{
									$("#dashClass option[value='" + val.instance.site_category.content + "']").prop("selected", true);
									$("#dashClass").multiselect("refresh");
									drawElementsMainConfig.utilrequiredModule();
								}catch(e){
									$("#dashClass option[value='None Selected']").prop("selected", true);
									$("#dashClass").multiselect("refresh");
									console.log(e);
									//$("#nodeTypeL").val("");																
								}
								
								try{

									var module_part_no = val.instance.module_part_no.module_part_no;
									var module_serial_no = val.instance.module_serial_no.module_serial_no;
									var dataTable = "";
									
									if(module_serial_no.length === module_part_no.length){
										
										for(var i=0; i < module_serial_no.length; i++){
											dataTable += "<tr><td>"+module_part_no[i].content+"</td><td>"+module_serial_no[i].content+"</td></tr>";
										}
										//console.log(module_part_no.length);
										
									}else{
										//console.log(module_part_no.length);
									}
									
									$("#tableModulePart").append(dataTable);
									
								}catch(e){
									//console.log("no entro para los arrayas");
									$("#tableModulePart").empty();
								}
								
								cnocUtilLibrary.utilValidationFields();
						});			
						
						cnocUtilLibrary.utilValidationFields();
					});				
				});
			}catch(e){
				console.log(e);
			}
			
			cnocConnector.invokeMashup(cnocConnector.service2, {"consulta":drawElementsMainConfig.idLocation, "type":"CIRCUIT", "type_change":drawElementsMainConfig.typeChange, "order_id":drawElementsMainConfig.orderId}, drawElementsMainConfig.getInfoRowInboxCircuit, "infoRowInbox", "infoRowInboxG");
		
		},getInfoRowInboxCircuit: function(datos, containerElements, divContainer){
			$( "#container").mask("Waiting... Load Circuit ");
			console.log("CIRCUIT");
			console.log(datos);
			var nc = "";
			$("#tableReferenciasGConf").empty();
			try{
				$.each( datos, function( key, val ){
					$.each( val, function( key, val ){
						$.each( val, function( key, val ){
							console.log(key);
							console.log("entro en CIRCUIT");
							console.log(val.message);
							
							try{
								if(val.message === "Success"){
									drawElementsMainConfig.rowDC = true;
								}else{
									drawElementsMainConfig.rowDC = false;
								}
							}catch(e){
								drawElementsMainConfig.rowDC = false;
							}
							/************************************************************************/
							/*  DATA LOCATION FROM CONFINBOX --- NO EXISTE LOCATION AL INICIO  */
							
							if(drawElementsMainConfig.rowL == false){
								if(val.instance.length>0){
									
									/*datos que se enviaran al IOM por JMS*/
									try{$("#equip_type").val(val.instance[0].equip_type.content);}catch(e){$("#equip_type").val("");}
									try{$("#equip_id").val(val.instance[0].equip_id.content);}catch(e){$("#equip_id").val("");}
									try{$("#workflow_id").val(val.instance[0].workflow_id.content);}catch(e){$("#workflow_id").val("");}
									try{$("#axs_link_id").val(val.instance[0].axs_link_id.content);}catch(e){$("#axs_link_id").val("");}
									try{$("#order_id").val(val.instance[0].order_id.content);}catch(e){$("#order_id").val("");}
									
									try{$("#typeChange").val(val.instance[0].type_change.content);}catch(e){$("#typeChange").val("");}
									try{$("#city").val(val.instance[0].city.content);}catch(e){$("#city").val("");}
									try{$("#company").val(val.instance[0].company.content);}catch(e){$("#company").val("");}
									try{$("#fechaImple").val(val.instance[0].date_request.content);}catch(e){$("#fechaImple").val("");}
									
									try{
										$("#networkCode").val(val.instance.network_code[0].content);
										nc = val.instance.network_code[0].content;
									}catch(e){$("#networkCode").val("");}
									//try{$("#country").val(val.instance[0].country.content);}catch(e){$("#country").val("");}
									try{$("#customerSiteAlias").val(val.instance[0].customer_site_alias.content);}catch(e){$("#customerSiteAlias").val("");}
									try{$("#delMun").val(val.instance[0].district.content);}catch(e){$("#delMun").val("");} //District
									try{$("#insideNum").val(val.instance[0].inside_num.content);}catch(e){$("#insideNum").val("");}								
									try{$("#location").val(val.instance[0].location.content);}catch(e){$("#location").val("");}								
									try{$("#locationName").val(val.instance[0].location_name.content);}catch(e){$("#locationName").val("");}
									//try{$("#networkCode").val(val.instance[0].network_code.content);}catch(e){$("#networkCode").val("");}
									try{$("#outsideNum").val(val.instance[0].outside_num.content);}catch(e){$("#outsideNum").val("");}
									try{$("#street").val(val.instance[0].street.content);}catch(e){$("#street").val("");}
									try{$("#state").val(val.instance[0].state.content);}catch(e){$("#state").val("");}								
									try{$("#zip").val(val.instance[0].zip.content);}catch(e){$("#zip").val("");}
									try{$("#street").val(val.instance[0].street.content);}catch(e){$("#street").val("");}
									try{$("#phoneContact").val(val.instance[0].phone_contact.content);}catch(e){$("#phoneContact").val("");}
									try{$("#contact").val(val.instance[0].contact.content);}catch(e){$("#contact").val("");}
									try{$("#mailContact").val(val.instance[0].mail_contact.content);}catch(e){$("#mailContact").val("");}
									try{$("#neighborhood").val(val.instance[0].neighborhood.content);}catch(e){$("#neighborhood").val("");}
									try{$("#unique_identifier").val(val.instance[0].unique_identifier.content);}catch(e){$("#unique_identifier").val("");}									
									
									try{
										$("#nodeTypeL option[value='" + val.instance[0].node_type.content + "']").prop("selected", true);
										$("#nodeTypeL").multiselect("refresh");
									}catch(e){
										$("#nodeTypeL option[value='None Selected']").prop("selected", true);
										$("#nodeTypeL").multiselect("refresh");
										console.log(e);
										//$("#nodeTypeL").val("");
									}
									
									try{
										$("#listCountry option[value='" + val.instance[0].country.content + "']").prop("selected", true);
										$("#listCountry").multiselect("refresh");
										
									}catch(e){
										$("#listCountry option[value='None Selected']").prop("selected", true);
										$("#listCountry").multiselect("refresh");
										console.log(e);
										//$("#nodeTypeL").val("");																
									}
									
									try{
										drawElementsMainConfig.tmpState =  val.instance[0].state.content;									
										cnocConnector.invokeMashup(cnocConnector.serviceCatState, {"country":$('#listCountry').val()}, drawElementsMainConfig.getListState, "listState", "listStateG");
										
									}catch(e){
										$("#listState option[value='None Selected']").prop("selected", true);
										$("#listState").multiselect("refresh");
										console.log(e);
										//$("#nodeTypeL").val("");																
									}
									
									try{
										
										drawElementsMainConfig.tmpCity =  val.instance.city[0].content;
										cnocConnector.invokeMashup(cnocConnector.serviceCatCity, {"state":drawElementsMainConfig.tmpState}, drawElementsMainConfig.getListCity, "listCity", "listCityG");
										
									}catch(e){
										$("#listCity option[value='None Selected']").prop("selected", true);
										$("#listCity").multiselect("refresh");
										console.log(e);
										//$("#nodeTypeL").val("");																
									}
									
									drawElementsMainConfig.utilnodeTypeL();
								}else{
									
									/*datos que se enviaran al IOM por JMS*/
									try{$("#equip_type").val(val.instance.equip_type.content);}catch(e){$("#equip_type").val("");}
									try{$("#equip_id").val(val.instance.equip_id.content);}catch(e){$("#equip_id").val("");}
									try{$("#workflow_id").val(val.instance.workflow_id.content);}catch(e){$("#workflow_id").val("");}
									try{$("#axs_link_id").val(val.instance.axs_link_id.content);}catch(e){$("#axs_link_id").val("");}
									try{$("#order_id").val(val.instance.order_id.content);}catch(e){$("#order_id").val("");}
									
									try{$("#typeChange").val(val.instance.type_change.content);}catch(e){$("#typeChange").val("");}
									try{$("#city").val(val.instance.city.content);}catch(e){$("#city").val("");}
									try{$("#company").val(val.instance.company.content);}catch(e){$("#company").val("");}
									try{$("#fechaImple").val(val.instance.date_request.content);}catch(e){$("#fechaImple").val("");}
									try{
										$("#networkCode").val(val.instance.network_code.content);
										nc = val.instance.network_code.content;
									}catch(e){$("#networkCode").val("");}
									//try{$("#country").val(val.instance.country.content);}catch(e){$("#country").val("");}
									try{$("#customerSiteAlias").val(val.instance.customer_site_alias.content);}catch(e){$("#customerSiteAlias").val("");}
									try{$("#delMun").val(val.instance.district.content);}catch(e){$("#delMun").val("");} //District
									try{$("#insideNum").val(val.instance.inside_num.content);}catch(e){$("#insideNum").val("");}								
									try{$("#location").val(val.instance.location.content);}catch(e){$("#location").val("");}								
									try{$("#locationName").val(val.instance.location_name.content);}catch(e){$("#locationName").val("");}
									try{$("#networkCode").val(val.instance.network_code.content);}catch(e){$("#networkCode").val("");}
									try{$("#outsideNum").val(val.instance.outside_num.content);}catch(e){$("#outsideNum").val("");}
									try{$("#street").val(val.instance.street.content);}catch(e){$("#street").val("");}
									try{$("#state").val(val.instance.state.content);}catch(e){$("#state").val("");}								
									try{$("#zip").val(val.instance.zip.content);}catch(e){$("#zip").val("");}
									try{$("#street").val(val.instance.street.content);}catch(e){$("#street").val("");}
									try{$("#phoneContact").val(val.instance.phone_contact.content);}catch(e){$("#phoneContact").val("");}
									try{$("#contact").val(val.instance.contact.content);}catch(e){$("#contact").val("");}
									try{$("#mailContact").val(val.instance.mail_contact.content);}catch(e){$("#mailContact").val("");}
									try{$("#neighborhood").val(val.instance.neighborhood.content);}catch(e){$("#neighborhood").val("");}
									try{$("#unique_identifier").val(val.instance.unique_identifier.content);}catch(e){$("#unique_identifier").val("");}
									try{
										$("#nodeTypeL option[value='" + val.instance.node_type.content + "']").prop("selected", true);
										$("#nodeTypeL").multiselect("refresh");
									}catch(e){
										$("#nodeTypeL option[value='None Selected']").prop("selected", true);
										$("#nodeTypeL").multiselect("refresh");
										console.log(e);
										//$("#nodeTypeL").val("");
									}
									
									try{
										$("#listCountry option[value='" + val.instance.country.content + "']").prop("selected", true);
										$("#listCountry").multiselect("refresh");
										
									}catch(e){
										$("#listCountry option[value='None Selected']").prop("selected", true);
										$("#listCountry").multiselect("refresh");
										console.log(e);
										//$("#nodeTypeL").val("");																
									}

									try{
										drawElementsMainConfig.tmpState =  val.instance.state.content;									
										cnocConnector.invokeMashup(cnocConnector.serviceCatState, {"country":$('#listCountry').val()}, drawElementsMainConfig.getListState, "listState", "listStateG");
										
									}catch(e){
										$("#listState option[value='None Selected']").prop("selected", true);
										$("#listState").multiselect("refresh");
										console.log(e);
										//$("#nodeTypeL").val("");																
									}
									
									try{
										
										drawElementsMainConfig.tmpCity =  val.instance.city.content;
										cnocConnector.invokeMashup(cnocConnector.serviceCatCity, {"state":drawElementsMainConfig.tmpState}, drawElementsMainConfig.getListCity, "listCity", "listCityG");
										
									}catch(e){
										$("#listCity option[value='None Selected']").prop("selected", true);
										$("#listCity").multiselect("refresh");
										console.log(e);
										//$("#nodeTypeL").val("");																
									}
									
									drawElementsMainConfig.utilnodeTypeL();
								}
								
								cnocUtilLibrary.utilValidationFields();
							}
							console.log("dentro de circuit al inicio");
							console.log(nc);
							
							cnocConnector.invokeMashup(cnocConnector.serviceDashboarClass, {"networkCode":nc}, drawElementsMainConfig.dashboarClass, "dashClass", "dashClassG");
							
							
							/************************************************************************/
							/* DATA CIRCUIT FROM CONFINBOX */
							var tableCircuit = "";
							
							//console.log("rows circuit: "+val.instance.length);
							
							if(val.instance.length > 0){
								
								for(var i=0; i < val.instance.length; i++){
									
									/*datos que se enviaran al IOM por JMS*/
									try{$("#equip_type").val(val.instance[i].equip_type.content);}catch(e){$("#equip_type").val("");}
									try{$("#equip_id").val(val.instance[i].equip_id.content);}catch(e){$("#equip_id").val("");}
									try{$("#workflow_id").val(val.instance[i].workflow_id.content);}catch(e){$("#workflow_id").val("");}
									try{$("#axs_link_id").val(val.instance[i].axs_link_id.content);}catch(e){$("#axs_link_id").val("");}
									try{$("#order_id").val(val.instance[i].order_id.content);}catch(e){$("#order_id").val("");}
									
									try{$("#ipWanDC").val(val.instance[i].ip_wan.content);}catch(e){$("#ipWanDC").val("");}								
									try{$("#vendorDC").val(val.instance[i].vendor.content);}catch(e){$("#vendorDC").val("");}
									//try{$("#subtypeDC").val(val.instance[i].subtype.content);}catch(e){$("#subtypeDC").val("");}
									//try{$("#istatusDC").val(val.instance[i].istatus.content);}catch(e){$("#istatusDC").val("");}																							
									try{$("#problemPriorityDC").val(val.instance[i].problema_priority.content);}catch(e){$("#problemPriorityDC").val("");}
									try{$("#manufacturerDC").val(val.instance[i].manufacturer.content);}catch(e){$("#manufacturerDC").val("");}
									try{$("#defaultImpactDC").val(val.instance[i].default_impact.content);}catch(e){$("#defaultImpactDC").val("");}
									try{$("#allowSubscriptionDC").val(val.instance[i].allow_subscription.content);}catch(e){$("#allowSubscriptionDC").val("");}
									try{$("#alertNameDC").val(val.instance[i].alert_name.content);}catch(e){$("#alertNameDC").val("");}								
									try{$("#nsr").val(val.instance[i].nsr.content);}catch(e){$("#nsr").val("");}
									//try{$("#linkScheme").val(val.instance[i].link_scheme.content);}catch(e){$("#linkScheme").val("");}
									//try{$("#linkBalancertype").val(val.instance[i].link_balancertype.content);}catch(e){$("#linkBalancertype").val("");}
									//try{$("#bandwidth").val(val.instance[i].bandwidth.content);}catch(e){$("#bandwidth").val("");}
									try{$("#bwUnit").val(val.instance[i].bw_unit.content);}catch(e){$("#bwUnit").val("");}
									//try{$("#serviceType").val(val.instance[i].service_type.content);}catch(e){$("#serviceType").val("");}
									try{$("#requiredPort").val(val.instance[i].required_port.content);}catch(e){$("#requiredPort").val("");}								
									try{$("#peName").val(val.instance[i].pe_name.content);}catch(e){$("#peName").val("");};
									try{$("#interfaceName").val(val.instance[i].interface_name.content);}catch(e){$("#interfaceName").val("");};
									try{$("#interfaceType").val(val.instance[i].interface_type.content);}catch(e){$("#interfaceType").val("");};
									try{$("#ipPe").val(val.instance[i].ip_pe.content);}catch(e){$("#ipPe").val("");};
									try{$("#vrfVlan").val(val.instance[i].vrf_vlan.content);}catch(e){$("#vrfVlan").val("");};
									//try{$("#serviceQuality").val(val.instance[i].service_quality.content);}catch(e){$("#serviceQuality").val("");};
									try{$("#profile").val(val.instance[i].profile.content);}catch(e){$("#profile").val("");};
									try{$("#q1").val(val.instance[i].q1.content);}catch(e){$("#q1").val("");};
									try{$("#q2").val(val.instance[i].q2.content);}catch(e){$("#q2").val("");};
									try{$("#q3").val(val.instance[i].q3.content);}catch(e){$("#q3").val("");};
									
									
									try{
										$("#serviceQuality option[value='" + val.instance[i].service_quality.content + "']").prop("selected", true);
										$("#serviceQuality").multiselect("refresh");
									}catch(e){
										$("#serviceQuality option[value='None Selected']").prop("selected", true);
										$("#serviceQuality").multiselect("refresh");
										console.log(e);
										//$("#subtypeDC").val("");
									}
									
									try{
										$("#serviceType option[value='" + val.instance[i].service_type.content + "']").prop("selected", true);
										$("#serviceType").multiselect("refresh");
									}catch(e){
										$("#serviceType option[value='None Selected']").prop("selected", true);
										$("#serviceType").multiselect("refresh");
										console.log(e);
										//$("#subtypeDC").val("");
									}
									
									try{
										$("#linkBalancertype option[value='" + val.instance[i].link_balancertype.content + "']").prop("selected", true);
										$("#linkBalancertype").multiselect("refresh");
									}catch(e){
										$("#linkBalancertype option[value='None Selected']").prop("selected", true);
										$("#linkBalancertype").multiselect("refresh");
										console.log(e);
										//$("#subtypeDC").val("");
									}
									
									try{
										$("#subtypeDC option[value='" + val.instance[i].subtype.content + "']").prop("selected", true);
										$("#subtypeDC").multiselect("refresh");
									}catch(e){
										$("#subtypeDC option[value='None Selected']").prop("selected", true);
										$("#subtypeDC").multiselect("refresh");
										console.log(e);
										//$("#subtypeDC").val("");
									}
									
									try{
										$("#istatusDC option[value='" + val.instance[i].istatus.content + "']").prop("selected", true);
										$("#istatusDC").multiselect("refresh");
									}catch(e){
										$("#istatusDC option[value='None Selected']").prop("selected", true);
										$("#istatusDC").multiselect("refresh");
										console.log(e);
										//$("#istatusDC").val("");
									}
									
									try{										
										$("#interfaceType option[value='" + val.instance[i].interface_type.content + "']").prop("selected", true);
										$("#interfaceType").multiselect("refresh");
									}catch(e){
										$("#interfaceType option[value='None Selected']").prop("selected", true);
										$("#interfaceType").multiselect("refresh");
										console.log(e);
										//$("#interfaceType").val("");
									}
									
									try{
										$("#requiredPort option[value='" + val.instance[i].required_port.content + "']").prop("selected", true);
										$("#requiredPort").multiselect("refresh");
									}catch(e){
										$("#requiredPort option[value='None Selected']").prop("selected", true);
										$("#requiredPort").multiselect("refresh");
										console.log(e);
										//$("#requiredPort").val("");
									}									
									
									try{	
										tableCircuit +="<tr><td>"+val.instance[i].unique_identifier.content+"</td><td>"+val.instance[i].ip_wan.content+"</td><td>"+val.instance[i].bandwidth.content+"</td><td>"+val.instance[i].bw_unit.content+"</td><td>"+val.instance[i].link_scheme.content+"</td></tr>";
									}catch(e){
										console.log(e);
									}
								}
								
								drawElementsMainConfig.utilnodeTypeL();
								drawElementsMainConfig.utilrequiredPort();
								drawElementsMainConfig.utilServiceQuality();								
								$("#tableReferenciasGConf").append(tableCircuit);

							}else{
								console.log("Solo es un circuit, haber si entro");
								try{$("#ipWanDC").val(val.instance.ip_wan.content);}catch(e){$("#ipWanDC").val("");}								
								try{$("#vendorDC").val(val.instance.vendor.content);}catch(e){$("#vendorDC").val("");}
								//try{$("#subtypeDC").val(val.instance.subtype.content);}catch(e){$("#subtypeDC").val("");}
								//try{$("#istatusDC").val(val.instance.istatus.content);}catch(e){$("#istatusDC").val("");}																							
								try{$("#problemPriorityDC").val(val.instance.problema_priority.content);}catch(e){$("#problemPriorityDC").val("");}
								try{$("#manufacturerDC").val(val.instance.manufacturer.content);}catch(e){$("#manufacturerDC").val("");}
								try{$("#defaultImpactDC").val(val.instance.default_impact.content);}catch(e){$("#defaultImpactDC").val("");}
								try{$("#allowSubscriptionDC").val(val.instance.allow_subscription.content);}catch(e){$("#allowSubscriptionDC").val("");}
								try{$("#alertNameDC").val(val.instance.alert_name.content);}catch(e){$("#alertNameDC").val("");}								
								try{$("#nsr").val(val.instance.nsr.content);}catch(e){$("#nsr").val("");}
								//try{$("#linkScheme").val(val.instance.link_scheme.content);}catch(e){$("#linkScheme").val("");}
								try{$("#linkBalancertype").val(val.instance.link_balancertype.content);}catch(e){$("#linkBalancertype").val("");}
								//try{$("#bandwidth").val(val.instance.bandwidth.content);}catch(e){$("#bandwidth").val("");}
								try{$("#bwUnit").val(val.instance.bw_unit.content);}catch(e){$("#bwUnit").val("");}
								try{$("#serviceType").val(val.instance.service_type.content);}catch(e){$("#serviceType").val("");}
								//try{$("#requiredPort").val(val.instance.required_port.content);}catch(e){$("#requiredPort").val("");}								
								try{$("#peName").val(val.instance.pe_name.content);}catch(e){$("#peName").val("");};
								try{$("#interfaceName").val(val.instance.interface_name.content);}catch(e){$("#interfaceName").val("");};
								try{$("#interfaceType").val(val.instance.interface_type.content);}catch(e){$("#interfaceType").val("");};
								try{$("#ipPe").val(val.instance.ip_pe.content);}catch(e){$("#ipPe").val("");};
								try{$("#vrfVlan").val(val.instance.vrf_vlan.content);}catch(e){$("#vrfVlan").val("");};
								//try{$("#serviceQuality").val(val.instance.service_quality.content);}catch(e){$("#serviceQuality").val("");};
								try{$("#profile").val(val.instance.profile.content);}catch(e){$("#profile").val("");};
								try{$("#q1").val(val.instance.q1.content);}catch(e){$("#q1").val("");};
								try{$("#q2").val(val.instance.q2.content);}catch(e){$("#q2").val("");};
								try{$("#q3").val(val.instance.q3.content);}catch(e){$("#q3").val("");};
								

								try{
									$("#serviceType option[value='" + val.instance.service_type.content + "']").prop("selected", true);
									$("#serviceType").multiselect("refresh");
								}catch(e){
									$("#serviceType option[value='None Selected']").prop("selected", true);
									$("#serviceType").multiselect("refresh");
									console.log(e);
									//$("#subtypeDC").val("");
								}
								
								try{
									$("#subtypeDC option[value='" + val.instance.subtype.content + "']").prop("selected", true);
									$("#subtypeDC").multiselect("refresh");
								}catch(e){
									$("#subtypeDC option[value='None Selected']").prop("selected", true);
									$("#subtypeDC").multiselect("refresh");
									console.log(e);
									//$("#subtypeDC").val("");
								}

								try{
									$("#istatusDC option[value='" + val.instance.istatus.content + "']").prop("selected", true);
									$("#istatusDC").multiselect("refresh");
								}catch(e){
									$("#istatusDC option[value='None Selected']").prop("selected", true);
									$("#istatusDC").multiselect("refresh");
									console.log(e);
									//$("#istatusDC").val("");
								}
								
								try{
									$("#interfaceType option[value='" + val.instance.interface_type.content + "']").prop("selected", true);
									$("#interfaceType").multiselect("refresh");
								}catch(e){
									$("#interfaceType option[value='None Selected']").prop("selected", true);
									$("#interfaceType").multiselect("refresh");
									console.log(e);
									//$("#interfaceType").val("");
								}
								
								try{
									$("#requiredPort option[value='" + val.instance.required_port.content + "']").prop("selected", true);
									$("#requiredPort").multiselect("refresh");
								}catch(e){
									$("#requiredPort option[value='None Selected']").prop("selected", true);
									$("#requiredPort").multiselect("refresh");
									console.log(e);
									//$("#requiredPort").val("");
								}
								
								try{
									$("#serviceQuality option[value='" + val.instance.service_quality.content + "']").prop("selected", true);
									$("#serviceQuality").multiselect("refresh");
								}catch(e){
									$("#serviceQuality option[value='None Selected']").prop("selected", true);
									$("#serviceQuality").multiselect("refresh");
									console.log(e);
									//$("#serviceQuality").val("");
								}
								
								try{
									tableCircuit +="<tr><td>"+val.instance.unique_identifier.content+"</td><td>"+val.instance.ip_wan.content+"</td><td>"+val.instance.bandwidth.content+"</td><td>"+val.instance.bw_unit.content+"</td><td>"+val.instance.link_scheme.content+"</td></tr>";
									$("#tableReferenciasGConf").append(tableCircuit);
								}catch(e){
									console.log(e);
								}
								
								drawElementsMainConfig.utilrequiredPort();
								drawElementsMainConfig.utilServiceQuality();
								
							}
							cnocUtilLibrary.utilValidationFields();	
								
						});					
					});				
				});
			}catch(e){
				console.log(e);
			}
		
			cnocConnector.invokeMashup(cnocConnector.service2, {"consulta":drawElementsMainConfig.idLocation, "type":"bizservice", "type_change":drawElementsMainConfig.typeChange, "order_id":drawElementsMainConfig.orderId}, drawElementsMainConfig.getInfoRowInboxBizService, "infoRowInbox", "infoRowInboxG");
			
		},getInfoRowInboxBizService: function(datos, containerElements, divContainer){
			$( "#container").mask("Waiting... Load Bizservice ");
			console.log("BizService");
			console.log(datos);
			try{
				$.each( datos, function( key, val ){
					$.each( val, function( key, val ){
						$.each( val, function( key, val ){	
							console.log("entro en BizService");
							console.log(val.message);

							try{
								if(val.message === "Success"){
									drawElementsMainConfig.rowBS = true;
								}else{
									drawElementsMainConfig.rowBS = false;
								}
							}catch(e){
								drawElementsMainConfig.rowBS = false;
							}
														
							/************************************************************************/
							/* DATA BIZSERVICE FROM CONFINBOX */

								//try{$("#subtypeBS").val(val.instance.subtype.content);}catch(e){$("#subtypeBS").val("");}
								try{$("#serviceName").val(val.instance.service_name.content);}catch(e){$("#serviceName").val("");}
								//try{$("#serviceScope").val(val.instance.scope_biz.content);}catch(e){$("#serviceScope").val("");}
								
								try{
									$("#subtypeBS option[value='" + val.instance.subtype.content + "']").prop("selected", true);
									$("#subtypeBS").multiselect("refresh");
								}catch(e){
									$("#subtypeBS option[value='None Selected']").prop("selected", true);
									$("#subtypeBS").multiselect("refresh");
									console.log(e);
									//$("#serviceQuality").val("");
								}
								
								try{
									$("#functionBS option[value='" + val.instance.vendor.content + "']").prop("selected", true);
									$("#functionBS").multiselect("refresh");
								}catch(e){
									$("#functionBS option[value='None Selected']").prop("selected", true);
									$("#functionBS").multiselect("refresh");
									console.log(e);
									//$("#serviceQuality").val("");
								}
								
								try{
									$("#serviceScope option[value='" + val.instance.scope_biz.content + "']").prop("selected", true);
									$("#serviceScope").multiselect("refresh");
								}catch(e){
									$("#serviceScope option[value='None Selected']").prop("selected", true);
									$("#serviceScope").multiselect("refresh");
									console.log(e);
									//$("#serviceQuality").val("");
								}
								
								cnocUtilLibrary.utilValidationFields();
								
						});					
					});				
				});
			}catch(e){
				console.log(e);
			}
			
			$( "#container").unmask();
			//console.log(drawElementsMainConfig.rowBS);
			
			//cnocConnector.invokeMashup(cnocConnector.service2, {"consulta":drawElementsMainConfig.idLocation, "type":"PERIPHERAL"}, drawElementsMainConfig.getInfoRowInboxPheriperial, "infoRowInbox", "infoRowInboxG");
			
		},getInfoRowInboxPheriperial: function(datos, containerElements, divContainer){
			console.log("Pheriperial");
			//console.log(datos);
			try{
				$.each( datos, function( key, val ){
					$.each( val, function( key, val ){
						$.each( val, function( key, val ){	
							//console.log("entro en Pheriperial");
							//console.log(val.message);

							try{
								if(val.message === "Success"){
									drawElementsMainConfig.rowP = true;
								}else{
									drawElementsMainConfig.rowP = false;
								}
							}catch(e){
								drawElementsMainConfig.rowP = false;
							}
														
							/************************************************************************/
							/* DATA BIZSERVICE FROM CONFINBOX */

								try{$("#modelP").val(val.instance.model.content);}catch(e){$("#modelP").val("");}
								try{$("#serialNoP").val(val.instance.serial_no.content);}catch(e){$("#serialNoP").val("");}																				
								try{$("#istatusP").val(val.instance.istatus.content);}catch(e){$("#istatusP").val("");}
								try{$("#subtypeP").val(val.instance.subtype.content);}catch(e){$("#subtypeP").val("");}
								try{$("#problemPriorityP").val(val.instance.problema_priority.content);}catch(e){$("#problemPriorityP").val("");}
								try{$("#manufacturerP").val(val.instance.manufacturer.content);}catch(e){$("#manufacturerP").val("");}
								try{$("#assignmentP").val(val.instance.assignment.content);}catch(e){$("#assignmentP").val("");}
								try{$("#extensionP").val(val.instance.extension.content);}catch(e){$("#extensionP").val("");}
								try{$("#defaultImpactP").val(val.instance.default_impact.content);}catch(e){$("#defaultImpactP").val("");}
								try{$("#ipWanP").val(val.instance.ip_wan.content);}catch(e){$("#ipWanP").val("");}
								try{$("#alertNameP").val(val.instance.alert_name.content);}catch(e){$("#alertNameP").val("");}
								try{$("#monitoringProfileP").val(val.instance.monitoring_profile.content);}catch(e){$("#monitoringProfileP").val("");}
								try{$("#macImei").val(val.instance.mac_imei.content);}catch(e){$("#macImei").val("");}
								
								cnocUtilLibrary.utilValidationFields();
								
						});					
					});				
				});
			}catch(e){
				console.log(e);
			}
			
			//console.log(drawElementsMainConfig.rowP);
		}, insertConfInbox: function(datos, containerElements, divContainer){
			
			console.log("insertConfInboxLocation");
			console.log(datos);
/********************************************************************************************************************************************/
/*    CREATE CI TO SM     */
		},locationSM:function(networkCode, company, typeChange, alertName){
			
			$( "#container").mask("Waiting... Creating Location ");
        	/************************************************************************************/
        	/*  DATA LOCATION INBOX  */
        	var location  = 			$('#location').val(); //"location";
        	var locationName  = 		$('#locationName').val(); //"locationName";
        	var customerSiteAlias  =	$('#customerSiteAlias').val(); //"customerSiteAlias";
        	var street  = 				$('#street').val(); //"street";
        	var outsideNum  = 			$('#outsideNum').val(); //"outsideNum";
        	var insideNum  = 			$('#insideNum').val(); //"insideNum";
        	var zip  =	 				$('#zip').val(); //"zip";
        	var district  = 			$('#district').val(); //"district";
        	var country  = 				$('#listCountry').val(); //"country";
        	var state  = 				$('#listState').val(); //"state";
        	var city  = 				$('#listCity').val(); //"city";
        	var neighborhood  = 		$('#neighborhood').val(); //"neighborhood";            	
        	var contact  = 				$('#contact').val(); //"contact";
        	var phoneContact  =			$('#phoneContact').val(); //"phoneContact";
        	var mailContact  =			$('#mailContact').val(); //"mailContact";
        	var nodeTypeL =				$('#nodeTypeL').val(); //"nodeType";            	
        	
        	
        	
        	try {
                $.ajax({
                        type : 'GET',
                        dataType : 'jsonp',
                        url : cnocConnector.service6,
                        data : {       
                        	"locationCode":location,
                    		"location":locationName,
                    		"city":city,
                    		"state":state,
                    		"zip":zip,
                    		"contact":contact,
                    		"phoneContact":phoneContact,
                    		"country":country,
                    		"mailContact":mailContact,
                    		"company":company,
                    		"customerSiteAlias":customerSiteAlias,
                    		"nodeType": nodeTypeL,
                    		"outsideNum":outsideNum,
                    		"insideNum":insideNum,
                    		"neighborhood": neighborhood,
                    		"district":district,            		
                    		"networkCode":networkCode,
                    		"street":street         		            		            		
                    		
                    	},
                        error : function(jqXHR, textStatus, errorThrown) {
                                console.log(jqXHR);
                                console.log(textStatus);
                                console.log(errorThrown);
                        },
                        success : function(response) {
                        	console.log(response);
                        	$.each( response, function( key, val ){
            					$.each( val, function( key, val ){
            						$.each( val, function( key, val ){
            							console.log("varios");
            							try{
            								if(val.message === "Success"){
            									console.log("Se genera Circuit");
            									drawElementsMainConfig.circuitSM(networkCode, company,  typeChange, alertName);
            								}else{
            									$.each( val.messages, function( key, val ){            										
            										if(val[2].content === "This record contains an invalid duplicate key."){
            											console.log("YA EXISTE EL LOCATION, SE CREA CIRCUIT ASOCIADO A ESTE");            											
            											
            											if(drawElementsMainConfig.flagAlertNameCircuit === false){
            												console.log("Se salta a Network componen por que no exite Circuit");
            												drawElementsMainConfig.networkComponentSM(networkCode, company, typeChange, alertName, istatusDC);
            											}else{
            												drawElementsMainConfig.circuitSM(networkCode, company, typeChange, alertName);
            											}
            											
            										}else{
            											console.log("ERROR AL CREAR LOCATION");
            										}
            									});

            								}
            							}catch(e){
            								console.log(e);
            							}
            						});
            					});
                        	});
                        }
                });
	        } catch (error) {
	                alert(error);
	        };
			
		},circuitSM:function(networkCode, company, typeChange, alertName){
			
			$( "#container").mask("Waiting... Creating Circuit ");
			
			/*************************************************************************************/
        	/*  DATA LOCATION CIRCUIT  */
			var location  = 			$('#location').val(); //"location";
        	var locationName  = 		$('#locationName').val(); //"locationName";
        	
        	var typeDC  = 				$('#typeDC').val(); //"typeDC";
        	var vendorDC  = 			$('#vendorDC').val(); //"vendorDC";
        	var manufacturerDC  = 		$('#manufacturerDC').val(); //"manufacturerDC";        	        	
        	var subtypeDC  = 			$('#subtypeDC').val(); //"subtypeDC";
        	var istatusDC  = 			$('#istatusDC').val(); //"istatusDC";        	        	        	
        	var serviceType  = 			$('#serviceType').val(); //"serviceType";
        	var nsr  = 					$('#nsr').val(); //"nsr";
        	var linkBalancertype  = 	$('#linkBalancertype').val(); //"linkBalancertype";
        	var bwUnit  = 				$('#bwUnit').val(); //"bwUnit";        	
        	var requiredPort  = 		$('#requiredPort').val(); //"requiredPort";
        	var peName  = 				$('#peName').val(); //"peName";
        	var interfaceName  = 		$('#interfaceName').val(); //"interfaceName";
        	var interfaceType  = 		$('#interfaceType').val(); //"interfaceType";
        	var ipPe  = 				$('#ipPe').val(); //"ipPe";
        	var vrfVlan  = 				$('#vrfVlan').val(); //"vrfVlan";            	
        	var serviceQuality  = 		$('#serviceQuality').val(); //"serviceQuality";
        	
        	var problemPriorityDC  = 	drawElementsMainConfig.typeLocation[0];
        	var defaultImpactDC  = 		drawElementsMainConfig.typeLocation[1];
        	var criticalCI  = 			drawElementsMainConfig.typeLocation[2];
        	var pendingChange  = 		drawElementsMainConfig.typeLocation[3];
        	var allowSubscriptionDC  = 	drawElementsMainConfig.typeLocation[4];
        	
        	var alertNameDC = "";
        	
        	if(drawElementsMainConfig.flagAlertNameNC === false){
        		alertNameDC = alertName;
        	}
        	
        	var profile  = 				$('#profile').val(); //"profile";
        	var q1  = 					$('#q1').val(); //"q1";
        	var q2  = 					$('#q2').val(); //"q2";
        	var q3  = 					$('#q3').val(); //"q3";            	
         	var count = 0;       	
        	$("#tableReferenciasGConf tr").each(function (row, tr) {
        		count+=1;
        	});

        	$("#tableReferenciasGConf tr").each(function (row, tr) {
        		console.log(row);
        		var linkScheme  = $(tr).find('td:eq(3)').text(); //"linkScheme";
       			var bandwidth   = $(tr).find('td:eq(2)').text();
       			var ipWanDC  	= $(tr).find('td:eq(1)').text();
       			var unique_identifier = $(tr).find('td:eq(0)').text();        	
       			
       			drawElementsMainConfig.uniqueIdentifierAll += $(tr).find('td:eq(0)').text()+"+";
       			drawElementsMainConfig.ipWanAll = $(tr).find('td:eq(1)').text();
       			
       			var parametersDC = {            		
            			"vendor":vendorDC,
            			"location":locationName,            			
            			"type":typeDC,
            			"istatus":istatusDC,
                		"subtype":subtypeDC,
                		"locationCode":location,
                		"problemPriority":problemPriorityDC,
                		"manufacturer":manufacturerDC,
            			"company":company,
            			"defaultImpact":defaultImpactDC,
            			"allowSubscription":allowSubscriptionDC,            			
                		"networkCode":networkCode,
                		"ipWan":ipWanDC,
                		"alertName":alertNameDC, //Alert name solo cuando existe NC, se tiene que hacer la validacion
                		"uniqueIdentifier":unique_identifier,            		
                		"nsr":nsr,
                		"linkScheme":linkScheme,
                		"linkBalancertype":linkBalancertype,
                		"bandwidth":bandwidth,
                		"bwUnit":bwUnit,
                		"serviceType":serviceType,
                		"vendorNC":vendorDC,
                		"requiredPort":requiredPort,
                		"peName":peName,
                		"interfaceName":interfaceName,
                		"interfaceType":interfaceType,
                		"ipPe":ipPe,
                		"vrfVlan":vrfVlan,
                		"serviceQuality":serviceQuality,
                		"profile":profile,
                		"q1":q1,
                		"q2":q2,
                		"q3":q3,
                		"deviceSeverity":criticalCI,
                		"pendingChange":pendingChange
       			};            	
            	console.log(parametersDC);
            	
            	try {
            		console.log("entro para crear el circuit");
                    $.ajax({
                            type : 'GET',
                            dataType : 'jsonp',
                            url : cnocConnector.service7,
                            data : parametersDC,
                            error : function(jqXHR, textStatus, errorThrown) {
                                    console.log(jqXHR);
                                    console.log(textStatus);
                                    console.log(errorThrown);
                            },
                            success : function(response) {
                            	console.log(response);

                            	$.each( response, function( key, val ){
                					$.each( val, function( key, val ){
                						$.each( val, function( key, val ){
                							try{
                								if(val.message === "Success"){
                									
                									if((count - 1) === parseInt(row)){
                										
                										if(drawElementsMainConfig.flagAlertNameNC === false){
                											console.log("Se genera BZ por que no lleva Network Component");
                        									drawElementsMainConfig.bizserviceSM(networkCode, company, typeChange, alertName, istatusDC);
                							        	}else{
                							        		drawElementsMainConfig.networkComponentSM(networkCode, company, typeChange, alertName, istatusDC);
                							        	}
                										                										
                									}
                									
                									//nextNC = true;                									
                								}else{
                									$.each( val.messages, function( key, val ){
                										console.log(val);
                										if(val[2].content === "This record contains an invalid duplicate key."){
                											
                										}else{
                											
                										}
                									});

                								}
                							}catch(e){
                								console.log(2);
                							}
                						});
                					});
                            	});
                            }
                    });
    	        } catch (error) {
    	                alert(error);
    	        };
       			
        	});
        	
		},networkComponentSM:function(networkCode, company, typeChange, alertName, istatusDC){
			
			$( "#container").mask("Waiting... Creating Network Component ");
			
			/*************************************************************************************/
        	/*  DATA NETWORK COMPONENT  */

        	var modulePartNoData = "";
			var moduleSerialNoData = "";

        	$("#tableModulePart tr").each(function (row, tr) {
        		if(row > 0){
            		modulePartNoData = modulePartNoData + $(tr).find('td:eq(0)').text()+",";
            		moduleSerialNoData += $(tr).find('td:eq(1)').text()+",";
        		} 
	        });        	
        	
        	var location  = 			$('#location').val(); //"location";        	
        	var locationName  = 		$('#locationName').val(); //"locationName";
        	
        	var model  = 			$('#model').val(); //"model";
        	var typeDNC  = 			$('#typeDNC').val(); //"typeDNC";
        	var serialNo  =			$('#serialNo').val(); //"serialNo";
        	//var istatus  = 			$('#istatus').val(); //"istatus";
        	var subtype  = 			$('#subType').val(); //"subtype";
        	//var problemPriority  = 	$('#problemPriority').val(); //"problemPriority";
        	var manufacturer  = 	$('#manufacturer').val(); //"manufacturer";
        	//var allowSubscription  =$('#allowSubscription').val(); //"allowSubscription";
        	var monitoringProfile  =$('#monitoringProfile').val(); //"monitoringProfile";
        	var monitoringIp  = 	$('#monitoringIp').val(); //"monitoringIp";
        	var ipLoopback  = 		$('#ipLoopback').val(); //"ipLoopback";
        	var ipLan  = 			$('#ipLan').val(); //"ipLan";
        	var hostname  = 		$('#hostname').val(); //"hostname";
        	var osVersion  = 		$('#osVersion').val(); //"osVersion";
        	var osRelease  = 		$('#osRelease').val(); //"osRelease";
        	var dependence  = 		$('#dependence').val(); //"dependence";
        	var scope  = 			$('#scope').val(); //"scope";
        	var owner  = 			$('#owner').val(); //"owner";
        	var requiredModule  = 	$('#requiredModule').val(); //"requiredModule";        	
        	var siteCategory = 		$('#dashClass').val(); //dashboard classification
        	
        	var problemPriority  = drawElementsMainConfig.typeLocation[0];
        	var defaultImpact = drawElementsMainConfig.typeLocation[1];	
        	var criticalCI  = 			drawElementsMainConfig.typeLocation[2];
        	var pendingChange  = 		drawElementsMainConfig.typeLocation[3];
        	var allowSubscription  = drawElementsMainConfig.typeLocation[4];
        	
        	var parametersNC = {
        			
        			"model":model,
        			"serialNo":serialNo,
        			"locationCode":location, // locationCode
        			"type":typeDNC,
        			"istatus":istatusDC,
        			"subtype":subtype,
        			"location":locationName, //location
        			"problemPriority":problemPriority,
        			"manufacturer":manufacturer,            			
        			"company":company,
        			"allowSubscription":allowSubscription,
            		"networkCode":networkCode,
            		"ipWan": drawElementsMainConfig.ipWanAll, // concatena las ip's para poder realizar la relacion hacia los circuits
            		"monitoringProfile":monitoringProfile,
            		"uniqueIdentifier":drawElementsMainConfig.uniqueIdentifierAll, //concatena las referencias
            		"defaultImpact":defaultImpact, //tiene que ser variable 
            		"monitoringIp":monitoringIp,
            		"ipLoopback":ipLoopback,
            		"ipLan":ipLan,
            		"hostname":hostname,
            		"osVersion":osVersion,
            		"osRelease":osRelease,
            		"dependence":dependence,
            		"scope":scope,
            		"owner":owner,
            		"siteCategory":siteCategory,
            		"alertName":alertName,  // el alert name tiene que ser el mismo que el de NC con Bizservice cadenas diferentes para NC
            		"requiredModule":requiredModule,
            		"modulePartNo":modulePartNoData, //array
            		"moduleSerialNo":moduleSerialNoData,  //array
            		"deviceSeverity":criticalCI,
            		"pendingChange":pendingChange
        	};
        	
        	console.log(parametersNC);
        	
        	try {
        		console.log("entro para crear el Network Component");
        		console.log("entro a crear NC: "+ drawElementsMainConfig.uniqueIdentifierAll);
                $.ajax({
                        type : 'GET',
                        dataType : 'jsonp',
                        url : cnocConnector.service8,
                        data : parametersNC,
                        error : function(jqXHR, textStatus, errorThrown) {
                                console.log(jqXHR);
                                console.log(textStatus);
                                console.log(errorThrown);
                        },
                        success : function(response) {
                        	console.log(response);
                        	
                        	
                        	$.each( response, function( key, val ){
            					$.each( val, function( key, val ){
            						$.each( val, function( key, val ){
            							try{
            								if(val.message === "Success"){
            									console.log("Se genera BZ");
            									drawElementsMainConfig.bizserviceSM(networkCode, company, typeChange, alertName, istatusDC);
            								}else{
            									$.each( val.messages, function( key, val ){
            										console.log(val);
            										if(val[2].content === "This record contains an invalid duplicate key."){
            											
            										}else{
            											
            										}
            									});

            								}
            							}catch(e){
            								console.log(2);
            							}
            						});
            					});
                        	});
                        }
                });
	        } catch (error) {
	            alert(error);
	        };
        	

		},bizserviceSM:function(networkCode, company, typeChange, alertName, istatusDC){

			$( "#container").mask("Waiting... Creating Bizservice ");
        	
        	/*************************************************************************************/
        	/*  DATA LOCATION BIZSERVICE  */
			
			var location  = 			$('#location').val(); //"location";
        	var locationName  = 		$('#locationName').val(); //"locationName";
			
        	var typeBS  = 			$('#typeBS').val(); //"typeBS";
        	//var istatusBS  = 		$('#istatusBS').val(); //"istatusBS";
        	var subtypeBS  = 		$('#subtypeBS').val(); //"subtypeBS";
        	//var problemPriorityBS  =$('#problemPriorityBS').val(); //"problemPriorityBS";
        	//var defaultImpactBS  = 	$('#defaultImpactBS').val(); //"defaultImpactBS";
        	//var alertNameBS  = 		$('#alertNameBS').val(); //"alertNameBS";
        	var serviceName  = 		$('#serviceName').val(); //"serviceName";
        	var serviceScope  = 	$('#serviceScope').val(); //"typeBS";
        	var catFunction  =		$('#functionBS').val(); // function
        	
        	var problemPriorityBS  = drawElementsMainConfig.typeLocation[0];
        	var defaultImpactBS = drawElementsMainConfig.typeLocation[1];	
        	//var allowSubscription  = drawElementsMainConfig.typeLocation[2];
        	
        	var problemPriorityBS  = drawElementsMainConfig.typeLocation[0];
        	var defaultImpactBS = drawElementsMainConfig.typeLocation[1];	
        	var criticalCI  = 			drawElementsMainConfig.typeLocation[2];
        	var pendingChange  = 		drawElementsMainConfig.typeLocation[3];
        	var allowSubscription  = drawElementsMainConfig.typeLocation[4];
        	
        	var parametersBS = {
        			
        			"location":locationName,
        			"type":typeBS,
        			"istatus":istatusDC,
            		"subtype":subtypeBS,
            		"locationCode":location,
            		"problemPriority":problemPriorityBS,
            		"deviceSeverity":criticalCI,
            		"pendingChange":pendingChange,  
            		"allowSubscription":allowSubscription,
            		"company":company,
            		"defaultImpact":defaultImpactBS,
            		"networkCode":networkCode,
            		"alertName":alertName,
            		"uniqueIdentifier":drawElementsMainConfig.uniqueIdentifierAll,
            		//"type_change":typeChange,
            		"serviceName":serviceName,
            		"serviceScope":serviceScope,
            		"function": catFunction
        	};
        	
        	console.log(parametersBS);
        	
        	try {
        		console.log("entro para crear el Biz Service");
                $.ajax({
                        type : 'GET',
                        dataType : 'jsonp',
                        url : cnocConnector.service9,
                        data : parametersBS,
                        error : function(jqXHR, textStatus, errorThrown) {
                                console.log(jqXHR);
                                console.log(textStatus);
                                console.log(errorThrown);
                        },
                        success : function(response) {
                        	console.log(response);
                        	
                        	
                        	$.each( response, function( key, val ){
            					$.each( val, function( key, val ){
            						$.each( val, function( key, val ){
            							try{
            								if(val.message === "Success"){
            									$( "#container").unmask();
            									console.log("Se genera Peripheral");
            									//drawElementsMainConfig.peripheralSM(networkCode, company, unique_identifier, typeChange);
            								}else{
            									$.each( val.messages, function( key, val ){
            										console.log(val);
            										if(val[2].content === "This record contains an invalid duplicate key."){
            											
            										}else{
            											
            										}
            										$( "#container").unmask();
            									});
            								}
            							}catch(e){
            								console.log(2);
            								$( "#container").unmask();
            							}
            						});
            					});
                        	});
                        }
                });
	        } catch (error) {
	                alert(error);
	                $( "#container").unmask();
	        };
        	
		},peripheralSM:function(networkCode, company, unique_identifier, typeChange){

        	
        	/*************************************************************************************/
        	/*  DATA LOCATION PERIPHERAL  */
			
			var location  = 			$('#location').val(); //"location";
        	var locationName  = 		$('#locationName').val(); //"locationName";
			
        	var modelP  = 			$('#modelP').val(); //"typeBS";
        	var serialNoP  = 		$('#serialNoP').val(); //"serialNoP";
        	var typeP  = 			$('#typeP').val(); //"typeP";
        	var istatusP  =			$('#istatusP').val(); //"istatusP";
        	var subtypeP  = 		$('#subtypeP').val(); //"subtypeP";
        	var problemPriorityP  = $('#problemPriorityP').val(); //"problemPriorityP";
        	var manufacturerP  = 	$('#manufacturerP').val(); //"manufacturerP";
        	var assignmentP  = 		$('#assignmentP').val(); //"assignmentP";
        	var extensionP  = 		$('#extensionP').val(); //"extensionP";
        	var defaultImpactP  = 	$('#defaultImpactP').val(); //"defaultImpactP";
        	var ipWanP  = 			$('#ipWanP').val(); //"ipWanP";
        	var alertNameP  = 		$('#alertNameP').val(); //"alertNameP";
        	var monitoringProfileP=	$('#monitoringProfileP').val(); //"monitoringProfileP";
        	var macImei  = 			$('#macImei').val(); //"macImei";

        	
        	var parametersBS = {
        			
        			"model":modelP,
        			"serialNo":serialNoP,
        			"location":locationName,
        			"type":typeP,
            		"istatus":istatusP,
            		"subtype":subtypeP,
            		"locationCode":location,
            		"problemPriority":problemPriorityP,
            		"manufacturer":manufacturerP,
        			"company":company,
        			"assignment":assignmentP,
        			"extension":extensionP,
            		"defaultImpact":defaultImpactP,
            		"networkCode":networkCode,
            		//"type_change":typeChange,
            		"ipWan":ipWanP,
            		"alertName":alertNameP,
            		"monitoringProfile":monitoringProfileP,                		
            		"uniqueIdentifier":unique_identifier,
            		"macImei":macImei
        	};
        	
        	console.log(parametersBS);
        	
        	try {
        		console.log("entro para crear el Peripheral SM");
                $.ajax({
                        type : 'GET',
                        dataType : 'jsonp',
                        url : cnocConnector.service10,
                        data : parametersBS,
                        error : function(jqXHR, textStatus, errorThrown) {
                                console.log(jqXHR);
                                console.log(textStatus);
                                console.log(errorThrown);
                        },
                        success : function(response) {
                        	console.log(response);
                        	
                        	
                        	$.each( response, function( key, val ){
            					$.each( val, function( key, val ){
            						$.each( val, function( key, val ){
            							try{
            								if(val.message === "Success"){
            									console.log("Se genera Peripheral SM");
            									
            								}else{
            									$.each( val.messages, function( key, val ){
            										console.log(val);
            										if(val[2].content === "This record contains an invalid duplicate key."){
            											
            										}else{
            											
            										}
            									});
            								}
            							}catch(e){
            								console.log(2);
            							}
            						});
            					});
                        	});
                        }
                });
	        } catch (error) {
	                alert(error);
	        };
		},utilServiceQuality:function(){

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
	        			cnocConnector.invokeMashup(cnocConnector.serviceCatState, {"country":country}, drawElementsMainConfig.getListState, "listState", "listStateG");			        			
	        			//cnocConnector.invokeMashup(cnocConnector.service2, {"country":country}, drawElementsMainCap.getListState, "listState", "listStateG");
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
	        			cnocConnector.invokeMashup(cnocConnector.serviceCatCity, {"state":state}, drawElementsMainConfig.getListCity, "listCity", "listCityG");
	        			//cnocConnector.invokeMashup(cnocConnector.service5, {"state":state}, drawElementsMainCap.getListCity, "listCity", "listCityG");

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
			
			console.log("Desde state: "+drawElementsMainConfig.tmpState);
			
			$("#listState option[value='" + drawElementsMainConfig.tmpState + "']").prop("selected", true);
			$("#listState").multiselect("refresh");
			
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
			
			$("#listCity option[value='" + drawElementsMainConfig.tmpCity + "']").prop("selected", true);
			$("#listCity").multiselect("refresh");
			
			cnocUtilLibrary.utilValidationFields();
		},sendJMS:function(datos, containerElements, divContainer){
			
			console.log("Send JMS");
			console.log(datos);
			
			
		},utilrequiredPort:function(){

			if($("#requiredPort").val() === "NO"){
				$(".requiredPort").hide();	
			}else if($("#requiredPort").val() === "YES"){
				$(".requiredPort").show();	
			}
		},utilnodeTypeL:function(){
			console.log($("#nodeTypeL").val());
			
			if($("#nodeTypeL").val() === "CORPORATE SITE"){
				drawElementsMainConfig.typeLocation = [1, 1, "YES", "NO" , "YES"];
			}else if($("#nodeTypeL").val() === "BRANCH"){
				drawElementsMainConfig.typeLocation = [3, 3, "NO", "NO" , "YES"];
			}else if($("#nodeTypeL").val() === "REGIONAL BRANCH"){
				drawElementsMainConfig.typeLocation = [2, 2, "YES", "NO" , "YES"];
			}else{
				drawElementsMainConfig.typeLocation = null;
			}
			
			console.log(drawElementsMainConfig.typeLocation);			
		},utilrequiredModule:function(){

			if($("#requiredModule").val() === "NO"){
				$(".requiredModule").hide();	
			}else if($("#requiredModule").val() === "YES"){
				$(".requiredModule").show();	
			}
		},responseMessage: function(datos, containerElements, divContainer){
			console.log(datos);
		}
		
};