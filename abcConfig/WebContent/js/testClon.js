/**
 * hmjavier
 * Clase para generar arrays que se inyectan a los elementos del DOM
 */
var testClon = {
		idLocation: "",
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
			
			//drawElementsMainConfig.buildTypeLocation(null, "nodeTypeL", "nodeTypeLG");
			cnocConnector.invokeMashup(cnocConnector.getClon, {}, drawElementsMainConfig.getListConfig, "listConfig", "listConfigG");			
			
			//cnocUtilLibrary.utilValidationFields();
			
		},getListConfig: function(datos, containerElements, divContainer){
			var data = "";
			var rowsData = new Array();
			if(datos.records.record.length > 0){
				for(var idx = 0; idx < datos.records.record.length; idx++){
					
					try{
						data += "<tr><td>"+datos.records.record[idx].hostname+"</td>";
						data += "<td>"+datos.records.record[idx].primaryipaddress+"</td>";
						data += "<td>"+datos.records.record[idx].name+"</td>";
						data += "<td>"+datos.records.record[idx].comments+"</td>";
						data += "<td>"+datos.records.record[idx].lastsnapshotattemptstatus+"</td></tr>";
					}catch(e){
						console.log(e);
					}
				}
			}else{
				
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
   				}];
   			} catch (err) {
   			};
   			
   			jQuery("#containerTable").empty();	
   			var tableData = '<table class="table table-striped table-bordered" id="inboxTable">'+data+'</table>';

   			jQuery("#containerTable").append(tableData);
   			
   			var oTable = jQuery("#inboxTable").dataTable({
   				"aoColumns" : rowsHeaders
   			});
   			
   			/*
   			$('#inboxTable tbody').on( 'click', 'tr', function () {
   		        $(this).toggleClass('selected');
   		    } );*/
   			
   			
   			$("#inboxTable").delegate("tbody tr", "click", function () {
	   	         var aPos = oTable.fnGetPosition( this );	
	   	         var aData = oTable.fnGetData( aPos[0] );
	   	         console.log("click in: "+aData[aPos][1]);
	 			
   			});   
   			
		}		
};