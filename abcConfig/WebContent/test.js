function Open(inputOpen){

	if(inputOpen.type_change == "ALTA SERVICIO WAN")
	{
	writeFile("/sm/HP/ServiceManager9.30/Server/logs/Iom_Cnoc.log","a",system.functions.tod()+" ******* ALTA SERVICIO WAN ******\n");
	writeFile("../logs/Iom_Cnoc.log","a",system.functions.tod()
	+ "\n" 
	+ "type_change          --> " + inputOpen.type_change 
	+ "\n" 
	+ "date_request         --> " + inputOpen.date_request
	+ "\n"
	+ "project_manager      --> " + inputOpen.project_manager
	+ "\n"
	+ "eng_supervisor       --> " + inputOpen.eng_supervisor
	+ "\n"
	+ "company              --> " + inputOpen.company
	+ "\n"
	+ "location_name		--> " + inputOpen.location_name
	+ "\n"
	+ "location             --> " + inputOpen.location
	+ "\n"
	+ "store_id             --> " + inputOpen.store_id
	+ "\n"
	+ "unique_identifier    --> " + inputOpen.unique_identifier
	+ "\n"
	+ "ip_wan        		--> " + inputOpen.ip_wan
	+ "\n"
	+ "bandwidth        	--> " + inputOpen.bandwidth
	+ "\n"
	+ "pe_name        	--> " + inputOpen.pe_name
	+ "\n"
	+ "vrf_vlan        	--> " + inputOpen.vrf_vlan
	+ "\n"
	+ "service_type        	--> " + inputOpen.service_type
	+ "\n"
	+ "link_scheme        	--> " + inputOpen.link_scheme
	+ "\n"
	+ "model        		--> " + inputOpen.model
	+ "\n"
	+ "sla                  --> " + inputOpen.sla
	+ "\n"
	+ "service_quality      --> " + inputOpen.service_quality
	+ "\n"
	+ "profile        		--> " + inputOpen.profile
	+ "\n"
	+ "q1                   --> " + inputOpen.q1
	+ "\n"
	+ "q2                   --> " + inputOpen.q2
	+ "\n"
	+ "q3	                --> " + inputOpen.q3
	+ "\n"
	+ "uninet_change        --> " + inputOpen.uninet_change
	+ "\n"
	+ "uninet_contact       --> " + inputOpen.uninet_contact
	+ "\n"
	+ "uninet_phone_cont	--> " + inputOpen.uninet_phone_cont
	+ "\n"
	+ "remarks        		--> " + inputOpen.remarks
	+ "\n"
	+ "street        		--> " + inputOpen.street
	+ "\n"
	+ "outside_num        	--> " + inputOpen.outside_num
	+ "\n"
	+ "inside_num        	--> " + inputOpen.inside_num
	+ "\n"
	+ "neighborhood        	--> " + inputOpen.neighborhood
	+ "\n"
	+ "country        		--> " + inputOpen.country
	+ "\n"
	+ "state        		--> " + inputOpen.state
	+ "\n"
	+ "city                 --> " + inputOpen.city
	+ "\n"
	+ "district             --> " + inputOpen.district
	+ "\n"
	+ "zip                  --> " + inputOpen.zip
	+ "\n"
	+ "service_provider     --> " + inputOpen.service_provider
	+ "\n"
	+ "contact        		--> " + inputOpen.contact
	+ "\n"
	+ "phone_contact        --> " + inputOpen.phone_contact
	+ "\n"
	+ "ip_lan        		--> " + inputOpen.ip_lan
	+ "\n"
	+ "igp                  --> " + inputOpen.igp
	+ "\n"
	+ "source_information  	--> " + inputOpen.source_information
	+ "\n"
	+ "message_oper    		--> " + inputOpen.message_oper	
	+ "\n"
	+ "order_id    			--> " + inputOpen.order_id
	+ "\n"
	+ "equip_id    			--> " + inputOpen.equip_id
	+ "\n"
	+ "equip_type    		--> " + inputOpen.equip_type
	+ "\n"
	+ "axs_link_id    		--> " + inputOpen.axs_link_id
	+ "\n"
	+ "rfc		    		--> " + inputOpen.rfc
	+ "\n"
	+ "workflow_id    		--> " + inputOpen.workflow_id
	+"\n");
	
	
			if(	inputOpen.type_change != null &&
				inputOpen.date_request != null &&		
				inputOpen.project_manager != null &&
				inputOpen.eng_supervisor != null &&
				inputOpen.company != null &&
				inputOpen.location_name != null &&
				inputOpen.location != null &&
				inputOpen.store_id != null &&
				inputOpen.unique_identifier != null &&
				inputOpen.ip_wan != null &&
				inputOpen.pe_name != null &&
				inputOpen.vrf_vlan != null &&
				inputOpen.bandwidth != null &&
				inputOpen.service_type != null &&
				inputOpen.link_scheme != null &&
				inputOpen.model != null &&
				inputOpen.sla != null &&
				inputOpen.service_quality != null &&
				inputOpen.profile != null &&
				inputOpen.q1 != null &&
				inputOpen.q2 != null &&		
				inputOpen.q3 != null &&		
				inputOpen.uninet_change != null &&
				inputOpen.uninet_contact != null &&
				inputOpen.uninet_phone_cont != null &&
				inputOpen.remarks != null &&
				inputOpen.street != null &&
				inputOpen.outside_num != null &&
				inputOpen.inside_num != null &&
				inputOpen.neighborhood != null &&
				inputOpen.country != null &&
				inputOpen.state != null &&
				inputOpen.city != null &&
				inputOpen.district != null &&
				inputOpen.zip != null &&
				inputOpen.service_provider != null &&
				inputOpen.contact != null &&
				inputOpen.phone_contact != null &&
				inputOpen.ip_lan != null &&
				inputOpen.igp != null &&
				inputOpen.source_information != null &&				
				inputOpen.order_id != null &&
				inputOpen.equip_id != null &&
				inputOpen.equip_type != null &&
				inputOpen.axs_link_id != null &&
				inputOpen.workflow_id != null &&
				inputOpen.rfc != null &&
				inputOpen.message_oper != null 
				
			 ){
			 
			 	var flg_validState = null;
			 	
			 	if(inputOpen.state == "AGS"){inputOpen.state = "AGUASCALIENTES"; flg_validState = 1;}
			 	else if(inputOpen.state == "BCN"){inputOpen.state = "BAJA CALIFORNIA"; flg_validState = 1;}
			 	else if(inputOpen.state == "BCS"){inputOpen.state = "BAJA CALIFORNIA SUR"; flg_validState = 1;}
			 	else if(inputOpen.state == "CAMP"){inputOpen.state = "CAMPECHE"; flg_validState = 1;}
			 	else if(inputOpen.state == "CHIS" || inputOpen.state == "CHI"){inputOpen.state = "CHIAPAS"; flg_validState = 1;}
			 	else if(inputOpen.state == "CHIH"){inputOpen.state = "CHIHUAHUA"; flg_validState = 1;}
			 	else if(inputOpen.state == "COAH" || inputOpen.state == "CO"){inputOpen.state = "COAHUILA DE ZARAGOZA"; flg_validState = 1;}
			 	else if(inputOpen.state == "COL"){inputOpen.state = "COLIMA"; flg_validState = 1;}
			 	else if(inputOpen.state == "D.F." || inputOpen.state == "DF"){inputOpen.state = "DISTRITO FEDERAL"; flg_validState = 1;}
			 	else if(inputOpen.state == "DGO"){inputOpen.state = "DURANGO"; flg_validState = 1;}
			 	else if(inputOpen.state == "MEX"){inputOpen.state = "ESTADO DE MEXICO"; flg_validState = 1;}
			 	else if(inputOpen.state == "GTO"){inputOpen.state = "GUANAJUATO"; flg_validState = 1;}
			 	else if(inputOpen.state == "GRO"){inputOpen.state = "GUERRERO"; flg_validState = 1;}
			 	else if(inputOpen.state == "HGO"){inputOpen.state = "HIDALGO"; flg_validState = 1;}
			 	else if(inputOpen.state == "JAL"){inputOpen.state = "JALISCO"; flg_validState = 1;}
			 	else if(inputOpen.state == "MICH"){inputOpen.state = "MICHOACAN DE OCAMPO"; flg_validState = 1;}
			 	else if(inputOpen.state == "MOR"){inputOpen.state = "MORELOS"; flg_validState = 1;}
			 	else if(inputOpen.state == "NAY"){inputOpen.state = "NAYARIT"; flg_validState = 1;}
			 	else if(inputOpen.state == "N.L." || inputOpen.state == "MTY"){inputOpen.state = "NUEVO LEON"; flg_validState = 1;}
			 	else if(inputOpen.state == "OAX"){inputOpen.state = "OAXACA"; flg_validState = 1;}
			 	else if(inputOpen.state == "PUE"){inputOpen.state = "PUEBLA"; flg_validState = 1;}
			 	else if(inputOpen.state == "QRO"){inputOpen.state = "QUERETARO"; flg_validState = 1;}
			 	else if(inputOpen.state == "QROO"){inputOpen.state = "QUINTANA ROO"; flg_validState = 1;}
			 	else if(inputOpen.state == "SLP"){inputOpen.state = "SAN LUIS POTOSI"; flg_validState = 1;}
			 	else if(inputOpen.state == "SIN"){inputOpen.state = "SINALOA"; flg_validState = 1;}
			 	else if(inputOpen.state == "SON"){inputOpen.state = "SONORA"; flg_validState = 1;}
			 	else if(inputOpen.state == "TAB"){inputOpen.state = "TABASCO"; flg_validState = 1;}
			 	else if(inputOpen.state == "TAMP"){inputOpen.state = "TAMAULIPAS"; flg_validState = 1;}
			 	else if(inputOpen.state == "TLAX"){inputOpen.state = "TLAXCALA"; flg_validState = 1;}
			 	else if(inputOpen.state == "VER"){inputOpen.state = "VERACRUZ DE IGNACIO DE LA LLAVE"; flg_validState = 1;}
			 	else if(inputOpen.state == "YUC"){inputOpen.state = "YUCATAN"; flg_validState = 1;}
			 	else if(inputOpen.state == "ZAC"){inputOpen.state = "ZACATECAS"; flg_validState = 1;}
			 	else {
			 			flg_validState = 0;
			 			inputOpen.message_oper = "FAIL - ESTADO NO VALIDO";
					 	inputOpen.location = null;
					 	writeFile("/sm/HP/ServiceManager9.30/Server/logs/Iom_Cnoc.log","a",system.functions.tod()+" ******* FAIL - ESTADO NO VALIDO ******\n");
			 	}
			 			 
			  
			 	if(flg_validState == 1)
			 	{
				 	inputOpen.message_oper = "SUCCESS - ALTA SERVICIO WAN";
				 	inputOpen.type = "CIRCUIT";
				 	writeFile("/sm/HP/ServiceManager9.30/Server/logs/Iom_Cnoc.log","a",system.functions.tod()+" ******* SUCCESS - ALTA SERVICIO WAN ******\n");
			 	}
			 	
			 }
			 else{
			 	inputOpen.message_oper = "FAIL - NULL VALUE ALTA SERVICIO WAN";
			 	inputOpen.location = null;
			 	writeFile("/sm/HP/ServiceManager9.30/Server/logs/Iom_Cnoc.log","a",system.functions.tod()+" ******* FAIL - ALTA SERVICIO WAN ******\n");
			 }
	 
	 }else if(inputOpen.type_change == "ALTA SERVICIO LAN"){
	 
	 
	 writeFile("/sm/HP/ServiceManager9.30/Server/logs/Iom_Cnoc.log","a",system.functions.tod()+" ******* ALTA SERVICIO LAN ******\n");
	 
	 writeFile("/sm/HP/ServiceManager9.30/Server/logs/Iom_Cnoc.log","a",system.functions.tod()
	+ "\n" 
	+ "type_change          --> " + inputOpen.type_change 
	+ "\n" 
	+ "date_request         --> " + inputOpen.date_request
	+ "\n"
	+ "project_manager      --> " + inputOpen.project_manager
	+ "\n"
	+ "eng_supervisor       --> " + inputOpen.eng_supervisor
	+ "\n"
	+ "company              --> " + inputOpen.company
	+ "\n"
	+ "location_name        --> " + inputOpen.location_name
	+ "\n"
	+ "location             --> " + inputOpen.location
	+ "\n"
	+ "vrf_vlan             --> " + inputOpen.vrf_vlan
	+ "\n"
	+ "store_id             --> " + inputOpen.store_id
	+ "\n"
	+ "service_type        	--> " + inputOpen.service_type
	+ "\n"
	+ "link_scheme        	--> " + inputOpen.link_scheme
	+ "\n"
	+ "model        		--> " + inputOpen.model
	+ "\n"
	+ "ip_lan        		--> " + inputOpen.ip_lan
	+ "\n"
	+ "sla                  --> " + inputOpen.sla
	+ "\n"
	+ "remarks        		--> " + inputOpen.remarks
	+ "\n"
	+ "street        		--> " + inputOpen.street
	+ "\n"
	+ "outside_num        	--> " + inputOpen.outside_num
	+ "\n"
	+ "inside_num        	--> " + inputOpen.inside_num
	+ "\n"
	+ "neighborhood        	--> " + inputOpen.neighborhood
	+ "\n"
	+ "country        		--> " + inputOpen.country
	+ "\n"
	+ "state        		--> " + inputOpen.state
	+ "\n"
	+ "city        			--> " + inputOpen.city
	+ "\n"
	+ "district             --> " + inputOpen.district
	+ "\n"
	+ "zip                  --> " + inputOpen.zip
	+ "\n"
	+ "service_provider     --> " + inputOpen.service_provider
	+ "\n"
	+ "source_information  	--> " + inputOpen.source_information
	+ "\n"
	+ "order_id             --> " + inputOpen.order_id
	+ "\n"
	+ "equip_id             --> " + inputOpen.equip_id
	+ "\n"
	+ "equip_type    		--> " + inputOpen.equip_type
	+ "\n"
	+ "axs_link_id    		--> " + inputOpen.axs_link_id
	+ "\n"
	+ "workflow_id    		--> " + inputOpen.workflow_id
	+ "\n"
	+ "rfc		    		--> " + inputOpen.rfc
	+ "\n"
	+ "message    		--> " + inputOpen.message_oper
	+"\n");
	
	 
	 
			if(	inputOpen.type_change != null &&
				inputOpen.date_request != null &&		
				inputOpen.project_manager != null &&
				inputOpen.eng_supervisor != null &&
				inputOpen.company != null &&
				inputOpen.location_name != null &&
				inputOpen.location != null &&
				inputOpen.vrf_vlan != null &&
				inputOpen.store_id != null &&
				inputOpen.service_type != null &&
				inputOpen.link_scheme != null &&
				inputOpen.model != null &&
				inputOpen.ip_lan != null &&
				inputOpen.sla != null &&
				inputOpen.street != null &&
				inputOpen.outside_num != null &&
				inputOpen.inside_num != null &&
				inputOpen.neighborhood != null &&
				inputOpen.country != null &&
				inputOpen.state != null &&
				inputOpen.city != null &&
				inputOpen.district != null &&
				inputOpen.zip != null &&
				inputOpen.service_provider != null &&
				inputOpen.remarks != null &&
				inputOpen.source_information != null &&
				
				inputOpen.order_id != null &&
				inputOpen.equip_id != null &&
				inputOpen.equip_type != null &&
				inputOpen.axs_link_id != null &&
				inputOpen.workflow_id != null &&
				inputOpen.rfc != null &&
				inputOpen.message_oper != null
				
			 ){ 
			 
			 
			 	var flg_validState = null;
			 	
			 	if(inputOpen.state == "AGS"){inputOpen.state = "AGUASCALIENTES"; flg_validState = 1;}
			 	else if(inputOpen.state == "BCN"){inputOpen.state = "BAJA CALIFORNIA"; flg_validState = 1;}
			 	else if(inputOpen.state == "BCS"){inputOpen.state = "BAJA CALIFORNIA SUR"; flg_validState = 1;}
			 	else if(inputOpen.state == "CAMP"){inputOpen.state = "CAMPECHE"; flg_validState = 1;}
			 	else if(inputOpen.state == "CHIS" || inputOpen.state == "CHI"){inputOpen.state = "CHIAPAS"; flg_validState = 1;}
			 	else if(inputOpen.state == "CHIH"){inputOpen.state = "CHIHUAHUA"; flg_validState = 1;}
			 	else if(inputOpen.state == "COAH" || inputOpen.state == "CO"){inputOpen.state = "COAHUILA DE ZARAGOZA"; flg_validState = 1;}
			 	else if(inputOpen.state == "COL"){inputOpen.state = "COLIMA"; flg_validState = 1;}
			 	else if(inputOpen.state == "D.F." || inputOpen.state == "DF"){inputOpen.state = "DISTRITO FEDERAL"; flg_validState = 1;}
			 	else if(inputOpen.state == "DGO"){inputOpen.state = "DURANGO"; flg_validState = 1;}
			 	else if(inputOpen.state == "MEX"){inputOpen.state = "ESTADO DE MEXICO"; flg_validState = 1;}
			 	else if(inputOpen.state == "GTO"){inputOpen.state = "GUANAJUATO"; flg_validState = 1;}
			 	else if(inputOpen.state == "GRO"){inputOpen.state = "GUERRERO"; flg_validState = 1;}
			 	else if(inputOpen.state == "HGO"){inputOpen.state = "HIDALGO"; flg_validState = 1;}
			 	else if(inputOpen.state == "JAL"){inputOpen.state = "JALISCO"; flg_validState = 1;}
			 	else if(inputOpen.state == "MICH"){inputOpen.state = "MICHOACAN DE OCAMPO"; flg_validState = 1;}
			 	else if(inputOpen.state == "MOR"){inputOpen.state = "MORELOS"; flg_validState = 1;}
			 	else if(inputOpen.state == "NAY"){inputOpen.state = "NAYARIT"; flg_validState = 1;}
			 	else if(inputOpen.state == "N.L." || inputOpen.state == "MTY"){inputOpen.state = "NUEVO LEON"; flg_validState = 1;}
			 	else if(inputOpen.state == "OAX"){inputOpen.state = "OAXACA"; flg_validState = 1;}
			 	else if(inputOpen.state == "PUE"){inputOpen.state = "PUEBLA"; flg_validState = 1;}
			 	else if(inputOpen.state == "QRO"){inputOpen.state = "QUERETARO"; flg_validState = 1;}
			 	else if(inputOpen.state == "QROO"){inputOpen.state = "QUINTANA ROO"; flg_validState = 1;}
			 	else if(inputOpen.state == "SLP"){inputOpen.state = "SAN LUIS POTOSI"; flg_validState = 1;}
			 	else if(inputOpen.state == "SIN"){inputOpen.state = "SINALOA"; flg_validState = 1;}
			 	else if(inputOpen.state == "SON"){inputOpen.state = "SONORA"; flg_validState = 1;}
			 	else if(inputOpen.state == "TAB"){inputOpen.state = "TABASCO"; flg_validState = 1;}
			 	else if(inputOpen.state == "TAMP"){inputOpen.state = "TAMAULIPAS"; flg_validState = 1;}
			 	else if(inputOpen.state == "TLAX"){inputOpen.state = "TLAXCALA"; flg_validState = 1;}
			 	else if(inputOpen.state == "VER"){inputOpen.state = "VERACRUZ DE IGNACIO DE LA LLAVE"; flg_validState = 1;}
			 	else if(inputOpen.state == "YUC"){inputOpen.state = "YUCATAN"; flg_validState = 1;}
			 	else if(inputOpen.state == "ZAC"){inputOpen.state = "ZACATECAS"; flg_validState = 1;}
			 	else {
			 			flg_validState = 0;
			 			inputOpen.message_oper = "FAIL - ESTADO NO VALIDO";
					 	inputOpen.location = null;
					 	writeFile("/sm/HP/ServiceManager9.30/Server/logs/Iom_Cnoc.log","a",system.functions.tod()+" ******* FAIL - ESTADO NO VALIDO ******\n");
			 	}
			 			 
			  
			 	if(flg_validState == 1)
			 	{
				 	inputOpen.message_oper = "SUCCESS - ALTA SERVICIO LAN";
				 	inputOpen.type = "CIRCUIT";
				 	writeFile("/sm/HP/ServiceManager9.30/Server/logs/Iom_Cnoc.log","a",system.functions.tod()+" ******* SUCCESS - ALTA SERVICIO LAN ******\n");
			 	}
			 
			 	
			 }
			 else{
 			 	
			 	inputOpen.message_oper = "FAIL - NULL VALUE ALTA SERVICIO LAN";
			 	inputOpen.location = null;
			 	writeFile("/sm/HP/ServiceManager9.30/Server/logs/Iom_Cnoc.log","a",system.functions.tod()+" ******* FAIL - ALTA SERVICIO LAN ******\n");
			 } 	
	 
	 }else if(inputOpen.type_change == "CAMBIO DE EQUIPO"){
	 
	 	writeFile("/sm/HP/ServiceManager9.30/Server/logs/Iom_Cnoc.log","a",system.functions.tod()+" ******* CAMBIO DE EQUIPO ******\n");
	 	writeFile("../logs/Iom_Cnoc.log","a",system.functions.tod()
		+ "\n" 
		+ "type_change			--> " + inputOpen.type_change 
		+ "\n" 
		+ "date_request         --> " + inputOpen.date_request
		+ "\n"
		+ "project_manager      --> " + inputOpen.project_manager
		+ "\n"
		+ "eng_supervisor       --> " + inputOpen.eng_supervisor
		+ "\n"
		+ "company              --> " + inputOpen.company
		+ "\n"
		+ "location_name        --> " + inputOpen.location_name
		+ "\n"
		+ "location 			--> " + inputOpen.location
		+ "\n"
		+ "unique_identifier 	--> " + inputOpen.unique_identifier
		+ "\n"
		+ "unique_identifier_new--> " + inputOpen.unique_identifier_new
		+ "\n"
		+ "ip_wan        		--> " + inputOpen.ip_wan
		+ "\n"
		+ "pe_name   			--> " + inputOpen.pe_name
		+ "\n"
		+ "vrf_lan        		--> " + inputOpen.vrf_lan
		+ "\n"
		+ "model        		--> " + inputOpen.model
		+ "\n"
		+ "model_new        	--> " + inputOpen.model_new
		+ "\n"
		+ "bandwidth        	--> " + inputOpen.bandwidth
		+ "\n"
		+ "bandwidth_new        --> " + inputOpen.bandwidth_new
		+ "\n"
		+ "service_quality      --> " + inputOpen.service_quality
		+ "\n"
		+ "profile        		--> " + inputOpen.profile
		+ "\n"
		+ "q1        			--> " + inputOpen.q1
		+ "\n"
		+ "q2        			--> " + inputOpen.q2
		+ "\n"
		+ "q3        			--> " + inputOpen.q3
		+ "\n"
				
		+ "uninet_change        --> " + inputOpen.uninet_change
		+ "\n"
		+ "uninet_contact       --> " + inputOpen.uninet_contact
		+ "\n"
		+ "uninet_phone_cont	--> " + inputOpen.uninet_phone_cont
		
		+ "\n"
		+ "service_provider		--> " + inputOpen.service_provider
		+ "\n"
		+ "remarks        		--> " + inputOpen.remarks
		+ "\n"
		+ "source_information 	--> " + inputOpen.source_information
		+ "\n"
		
		+ "order_id    			--> " + inputOpen.order_id
		+ "\n"
		+ "equip_id    			--> " + inputOpen.equip_id
		+ "\n"
		+ "equip_type    		--> " + inputOpen.equip_type
		+ "\n"
		+ "axs_link_id    		--> " + inputOpen.axs_link_id
		+ "\n"
		+ "workflow_id    		--> " + inputOpen.workflow_id
		+ "\n"	
		+ "rfc		    		--> " + inputOpen.rfc
		+ "\n"
		+ "message_oper    		--> " + inputOpen.message_oper
		+"\n");
	 
	 
	 
	 		if(	inputOpen.type_change != null &&
				inputOpen.date_request != null &&		
				inputOpen.project_manager != null &&
				inputOpen.eng_supervisor != null &&
				inputOpen.company != null &&
				inputOpen.location_name != null &&
				inputOpen.location != null &&
				inputOpen.unique_identifier != null &&
				inputOpen.unique_identifier_new != null &&
				inputOpen.ip_wan != null &&
				inputOpen.pe_name != null &&
				inputOpen.vrf_lan != null &&
				inputOpen.model != null &&
				inputOpen.model_new != null &&
				inputOpen.bandwidth != null &&
				inputOpen.bandwidth_new != null &&
				inputOpen.service_quality != null &&
				inputOpen.profile != null &&
				inputOpen.q1 != null &&
				inputOpen.q2 != null &&		
				inputOpen.q3 != null &&		
				inputOpen.uninet_change != null &&
				inputOpen.uninet_contact != null &&
				inputOpen.uninet_phone_cont != null &&
				inputOpen.service_provider != null &&
				inputOpen.remarks != null &&
				inputOpen.source_information != null &&
				
				inputOpen.order_id != null &&
				inputOpen.equip_id != null &&
				inputOpen.equip_type != null &&
				inputOpen.axs_link_id != null &&
				inputOpen.workflow_id != null &&
				inputOpen.rfc != null &&
				inputOpen.message_oper != null
				
			 ){ 
			 
			 
			 
			 
			 
			 
			 	inputOpen.message_oper = "SUCCESS - CAMBIO DE EQUIPO";
			 	inputOpen.type = "CIRCUIT";
			 	writeFile("/sm/HP/ServiceManager9.30/Server/logs/Iom_Cnoc.log","a",system.functions.tod()+" ******* SUCCESS - CAMBIO DE EQUIPO ******\n");
			 }
			 else{
			 	inputOpen.message_oper = "FAIL - NULL VALUE CAMBIO DE EQUIPO";
			 	inputOpen.location = null;
			 	writeFile("/sm/HP/ServiceManager9.30/Server/logs/Iom_Cnoc.log","a",system.functions.tod()+" ******* FAIL - CAMBIO DE EQUIPO ******\n");
			 }
	 
	 
	 }else if(inputOpen.type_change == "CAMBIO DE DOMICILIO"){
	 
        writeFile("/sm/HP/ServiceManager9.30/Server/logs/Iom_Cnoc.log","a",system.functions.tod()+" ******* CAMBIO DE DOMICILIO ******\n");    
	 	writeFile("../logs/Iom_Cnoc.log","a",system.functions.tod()
		+ "\n" 
		+ "type_change			--> " + inputOpen.type_change 
		+ "\n" 
		+ "date_request         --> " + inputOpen.date_request
		+ "\n"
		+ "project_manager      --> " + inputOpen.project_manager
		+ "\n"
		+ "eng_supervisor       --> " + inputOpen.eng_supervisor
		+ "\n"
		+ "company              --> " + inputOpen.company
		+ "\n"
		+ "location_name        --> " + inputOpen.location_name
		+ "\n"
		+ "location 			--> " + inputOpen.location
		+ "\n"
		+ "location_new			--> " + inputOpen.location_new
		+ "\n"
		+ "unique_identifier 	--> " + inputOpen.unique_identifier
		+ "\n"
		+ "unique_identifier_new--> " + inputOpen.unique_identifier_new
		+ "\n"
		+ "ip_wan        		--> " + inputOpen.ip_wan
		+ "\n"
		+ "pe_name   			--> " + inputOpen.pe_name
		+ "\n"
		+ "vrf_vlan        		--> " + inputOpen.vrf_vlan
		+ "\n"
		+ "uninet_change   		--> " + inputOpen.uninet_change
		+ "\n"
		+ "uninet_contact  		--> " + inputOpen.uninet_contact
		+ "\n"
		+ "uninet_phone_cont	--> " + inputOpen.uninet_phone_cont
		+ "\n"
		+ "remarks        		--> " + inputOpen.remarks
		+ "\n"
		+ "street_new        	--> " + inputOpen.street_new
		+ "\n"
		+ "outside_num_new      --> " + inputOpen.outside_num_new
		+ "\n"
		+ "inside_num_new       --> " + inputOpen.inside_num_new
		+ "\n"
		+ "neighborhood_new     --> " + inputOpen.neighborhood_new
		+ "\n"
		+ "country_new        	--> " + inputOpen.country_new
		+ "\n"
		+ "state_new        	--> " + inputOpen.state_new
		+ "\n"
		+ "city_new        		--> " + inputOpen.city_new
		+ "\n"
		+ "district_new        	--> " + inputOpen.district_new
		+ "\n"
		+ "zip_new        		--> " + inputOpen.zip_new
		+ "\n"
		+ "source_information 	--> " + inputOpen.source_information
		+ "\n"
		
		+ "order_id    			--> " + inputOpen.order_id
		+ "\n"
		+ "equip_id    			--> " + inputOpen.equip_id
		+ "\n"
		+ "equip_type    		--> " + inputOpen.equip_type
		+ "\n"
		+ "axs_link_id    		--> " + inputOpen.axs_link_id
		+ "\n"
		+ "workflow_id    		--> " + inputOpen.workflow_id
		+ "\n"
		+ "rfc		    		--> " + inputOpen.rfc
		+ "\n"
		+ "message_oper    		--> " + inputOpen.message_oper
		+"\n");
	 
	 
	 
	 		if(	inputOpen.type_change != null &&
				inputOpen.date_request != null &&		
				inputOpen.project_manager != null &&
				inputOpen.eng_supervisor != null &&
				inputOpen.company != null &&
				inputOpen.location_name != null &&
				inputOpen.location != null &&
				inputOpen.location_new != null &&
				inputOpen.unique_identifier != null &&
				inputOpen.unique_identifier_new != null &&
				inputOpen.ip_wan != null &&
				inputOpen.vrf_vlan != null &&
				inputOpen.pe_name != null &&
				inputOpen.uninet_change != null &&
				inputOpen.street_new != null &&
				inputOpen.outside_num_new != null &&
				inputOpen.inside_num_new != null &&
				inputOpen.neighborhood_new != null &&
				inputOpen.country_new != null &&
				inputOpen.state_new != null &&
				inputOpen.city_new != null &&
				inputOpen.district_new != null &&
				inputOpen.zip_new != null &&
				inputOpen.uninet_contact != null &&
				inputOpen.uninet_phone_cont != null &&
				inputOpen.remarks != null &&
				inputOpen.source_information != null &&
				
				inputOpen.order_id != null &&
				inputOpen.equip_id != null &&
				inputOpen.equip_type != null &&
				inputOpen.axs_link_id != null &&
				inputOpen.workflow_id != null &&
				inputOpen.rfc != null &&
				inputOpen.message_oper != null
			 ){ 
			 
			 
				var flg_validState = null;
			 	
			 	if(inputOpen.state_new == "AGS"){inputOpen.state_new = "AGUASCALIENTES"; flg_validState = 1;}
			 	else if(inputOpen.state_new == "BCN"){inputOpen.state_new = "BAJA CALIFORNIA"; flg_validState = 1;}
			 	else if(inputOpen.state_new == "BCS"){inputOpen.state_new = "BAJA CALIFORNIA SUR"; flg_validState = 1;}
			 	else if(inputOpen.state_new == "CAMP"){inputOpen.state_new = "CAMPECHE"; flg_validState = 1;}
			 	else if(inputOpen.state_new == "CHIS" || inputOpen.state_new == "CHI"){inputOpen.state_new = "CHIAPAS"; flg_validState = 1;}
			 	else if(inputOpen.state_new == "CHIH"){inputOpen.state_new = "CHIHUAHUA"; flg_validState = 1;}
			 	else if(inputOpen.state_new == "COAH" || inputOpen.state_new == "CO"){inputOpen.state_new = "COAHUILA DE ZARAGOZA"; flg_validState = 1;}
			 	else if(inputOpen.state_new == "COL"){inputOpen.state_new = "COLIMA"; flg_validState = 1;}
			 	else if(inputOpen.state_new == "D.F." || inputOpen.state_new == "DF"){inputOpen.state_new = "DISTRITO FEDERAL"; flg_validState = 1;}
			 	else if(inputOpen.state_new == "DGO"){inputOpen.state_new = "DURANGO"; flg_validState = 1;}
			 	else if(inputOpen.state_new == "MEX"){inputOpen.state_new = "ESTADO DE MEXICO"; flg_validState = 1;}
			 	else if(inputOpen.state_new == "GTO"){inputOpen.state_new = "GUANAJUATO"; flg_validState = 1;}
			 	else if(inputOpen.state_new == "GRO"){inputOpen.state_new = "GUERRERO"; flg_validState = 1;}
			 	else if(inputOpen.state_new == "HGO"){inputOpen.state_new = "HIDALGO"; flg_validState = 1;}
			 	else if(inputOpen.state_new == "JAL"){inputOpen.state_new = "JALISCO"; flg_validState = 1;}
			 	else if(inputOpen.state_new == "MICH"){inputOpen.state_new = "MICHOACAN DE OCAMPO"; flg_validState = 1;}
			 	else if(inputOpen.state_new == "MOR"){inputOpen.state_new = "MORELOS"; flg_validState = 1;}
			 	else if(inputOpen.state_new == "NAY"){inputOpen.state_new = "NAYARIT"; flg_validState = 1;}
			 	else if(inputOpen.state_new == "N.L." || inputOpen.state_new == "MTY"){inputOpen.state_new = "NUEVO LEON"; flg_validState = 1;}
			 	else if(inputOpen.state_new == "OAX"){inputOpen.state_new = "OAXACA"; flg_validState = 1;}
			 	else if(inputOpen.state_new == "PUE"){inputOpen.state_new = "PUEBLA"; flg_validState = 1;}
			 	else if(inputOpen.state_new == "QRO"){inputOpen.state_new = "QUERETARO"; flg_validState = 1;}
			 	else if(inputOpen.state_new == "QROO"){inputOpen.state_new = "QUINTANA ROO"; flg_validState = 1;}
			 	else if(inputOpen.state_new == "SLP"){inputOpen.state_new = "SAN LUIS POTOSI"; flg_validState = 1;}
			 	else if(inputOpen.state_new == "SIN"){inputOpen.state_new = "SINALOA"; flg_validState = 1;}
			 	else if(inputOpen.state_new == "SON"){inputOpen.state_new = "SONORA"; flg_validState = 1;}
			 	else if(inputOpen.state_new == "TAB"){inputOpen.state_new = "TABASCO"; flg_validState = 1;}
			 	else if(inputOpen.state_new == "TAMP"){inputOpen.state_new = "TAMAULIPAS"; flg_validState = 1;}
			 	else if(inputOpen.state_new == "TLAX"){inputOpen.state_new = "TLAXCALA"; flg_validState = 1;}
			 	else if(inputOpen.state_new == "VER"){inputOpen.state_new = "VERACRUZ DE IGNACIO DE LA LLAVE"; flg_validState = 1;}
			 	else if(inputOpen.state_new == "YUC"){inputOpen.state_new = "YUCATAN"; flg_validState = 1;}
			 	else if(inputOpen.state_new == "ZAC"){inputOpen.state_new = "ZACATECAS"; flg_validState = 1;}
			 	else {
			 			flg_validState = 0;
			 			inputOpen.message_oper = "FAIL - ESTADO NO VALIDO";
					 	inputOpen.location = null;
					 	writeFile("/sm/HP/ServiceManager9.30/Server/logs/Iom_Cnoc.log","a",system.functions.tod()+" ******* FAIL - ESTADO NO VALIDO ******\n");
			 	}
			 			 
			  
			 	if(flg_validState == 1)
			 	{
				 	inputOpen.message_oper = "SUCCESS - CAMBIO DE DOMICILIO";
				 	inputOpen.type = "CIRCUIT";
				 	writeFile("/sm/HP/ServiceManager9.30/Server/logs/Iom_Cnoc.log","a",system.functions.tod()+" ******* SUCCESS - CAMBIO DE DOMICILIO ******\n");
			 	}
			 
			 			 
			 }
			 else{
			 	inputOpen.message_oper = "FAIL - NULL VALUE CAMBIO DE DOMICILIO";
			 	inputOpen.location = null;
			 	writeFile("/sm/HP/ServiceManager9.30/Server/logs/Iom_Cnoc.log","a",system.functions.tod()+" ******* FAIL - CAMBIO DE DOMICILIO ******\n");
			 }
 
	 }else if(inputOpen.type_change == "CAMBIO BW"){
	 
	 	writeFile("/sm/HP/ServiceManager9.30/Server/logs/Iom_Cnoc.log","a",system.functions.tod()+" ******* CAMBIO DE BW ******\n");
	 	writeFile("../logs/Iom_Cnoc.log","a",system.functions.tod()
		+ "\n" 
		+ "type_change			--> " + inputOpen.type_change 
		+ "\n" 
		+ "date_request         --> " + inputOpen.date_request
		+ "\n"
		+ "project_manager      --> " + inputOpen.project_manager
		+ "\n"
		+ "eng_supervisor       --> " + inputOpen.eng_supervisor
		+ "\n"
		+ "company              --> " + inputOpen.company
		+ "\n"
		+ "location_name        --> " + inputOpen.location_name
		+ "\n"
		+ "location 			--> " + inputOpen.location
		+ "\n"
		+ "unique_identifier 	--> " + inputOpen.unique_identifier
		+ "\n"
		+ "unique_identifier_new--> " + inputOpen.unique_identifier_new
		+ "\n"
		+ "ip_wan        		--> " + inputOpen.ip_wan
		+ "\n"
		+ "pe_name   			--> " + inputOpen.pe_name
		+ "\n"
		+ "vrf_vlan   			--> " + inputOpen.vrf_vlan
		+ "\n"
		+ "bandwidth        	--> " + inputOpen.bandwidth
		+ "\n"
		+ "bandwidth_new        --> " + inputOpen.bandwidth_new
		+ "\n"
		+ "service_quality      --> " + inputOpen.service_quality
		+ "\n"
		+ "profile        		--> " + inputOpen.profile
		+ "\n"
		+ "q1        			--> " + inputOpen.q1
		+ "\n"
		+ "q2        			--> " + inputOpen.q2
		+ "\n"
		+ "q3        			--> " + inputOpen.q3
		+ "\n"
		+ "uninet_change        --> " + inputOpen.uninet_change
		+ "\n"
		+ "uninet_contact  		--> " + inputOpen.uninet_contact
		+ "\n"
		+ "uninet_phone_cont	--> " + inputOpen.uninet_phone_cont
		+ "\n"
		+ "service_provider		--> " + inputOpen.service_provider
		+ "\n"
		+ "remarks        		--> " + inputOpen.remarks
		+ "\n"
		+ "source_information 	--> " + inputOpen.source_information
		+ "\n"		
		+ "order_id    			--> " + inputOpen.order_id
		+ "\n"
		+ "equip_id    			--> " + inputOpen.equip_id
		+ "\n"
		+ "equip_type    		--> " + inputOpen.equip_type
		+ "\n"
		+ "axs_link_id    		--> " + inputOpen.axs_link_id
		+ "\n"
		+ "workflow_id    		--> " + inputOpen.workflow_id
		+ "\n"
		+ "rfc		    		--> " + inputOpen.rfc
		+ "\n"
		+ "message_oper    		--> " + inputOpen.message_oper
		+"\n");
	 	
	 
	 		if(	inputOpen.type_change != null &&
				inputOpen.date_request != null &&		
				inputOpen.project_manager != null &&
				inputOpen.eng_supervisor != null &&
				inputOpen.company != null &&
				inputOpen.location_name != null &&
				inputOpen.location != null &&
				inputOpen.unique_identifier != null &&
				inputOpen.unique_identifier_new != null &&
				inputOpen.ip_wan != null &&
				inputOpen.pe_name != null &&
				inputOpen.vrf_vlan != null &&
				inputOpen.bandwidth != null &&
				inputOpen.bandwidth_new != null &&
				inputOpen.service_quality != null &&
				inputOpen.profile != null &&
				inputOpen.q1 != null &&
				inputOpen.q2 != null &&		
				inputOpen.q3 != null &&		
				inputOpen.uninet_change != null &&
				inputOpen.uninet_contact != null &&
				inputOpen.uninet_phone_cont != null &&
				inputOpen.remarks != null &&
				inputOpen.service_provider != null &&
				inputOpen.source_information != null &&				
				inputOpen.order_id != null &&
				inputOpen.equip_id != null &&
				inputOpen.equip_type != null &&
				inputOpen.axs_link_id != null &&
				inputOpen.workflow_id != null &&
				inputOpen.rfc != null &&
				inputOpen.message_oper != null

			 ){ 
			 
			 	inputOpen.message_oper = "SUCCESS - CAMBIO DE BW";
			 	inputOpen.type = "CIRCUIT";
			 	writeFile("/sm/HP/ServiceManager9.30/Server/logs/Iom_Cnoc.log","a",system.functions.tod()+" ******* SUCCESS - CAMBIO DE BW ******\n");
			 }
			 else{
			 	inputOpen.message_oper = "FAIL - NULL VALUE CAMBIO DE BW";
			 	inputOpen.location = null;
			 	writeFile("/sm/HP/ServiceManager9.30/Server/logs/Iom_Cnoc.log","a",system.functions.tod()+" ******* FAIL - CAMBIO DE BW ******\n");
			 }
 
	 }else if(inputOpen.type_change == "CAMBIO DE PERFIL"){
	 
	    writeFile("/sm/HP/ServiceManager9.30/Server/logs/Iom_Cnoc.log","a",system.functions.tod()+" ******* CAMBIO DE PERFIL ******\n");
	 	writeFile("../logs/Iom_Cnoc.log","a",system.functions.tod()
		+ "\n" 
		+ "type_change			--> " + inputOpen.type_change 
		+ "\n" 
		+ "date_request         --> " + inputOpen.date_request
		+ "\n"
		+ "project_manager      --> " + inputOpen.project_manager
		+ "\n"
		+ "eng_supervisor       --> " + inputOpen.eng_supervisor
		+ "\n"
		+ "company              --> " + inputOpen.company
		+ "\n"
		+ "location_name        --> " + inputOpen.location_name
		+ "\n"
		+ "location 			--> " + inputOpen.location
		+ "\n"
		+ "unique_identifier 	--> " + inputOpen.unique_identifier
		+ "\n"
		+ "ip_wan        		--> " + inputOpen.ip_wan
		+ "\n"
		+ "pe_name   			--> " + inputOpen.pe_name
		+ "\n"
		+ "vrf_lan        		--> " + inputOpen.vrf_lan
		+ "\n"
		+ "bandwidth        	--> " + inputOpen.bandwidth
		+ "\n"
		+ "service_quality      --> " + inputOpen.service_quality
		+ "\n"
		+ "profile        		--> " + inputOpen.profile
		+ "\n"
		+ "profile_new        	--> " + inputOpen.profile_new
		+ "\n"
		+ "q1        			--> " + inputOpen.q1
		+ "\n"
		+ "q2        			--> " + inputOpen.q2
		+ "\n"
		+ "q3        			--> " + inputOpen.q3
		+ "\n"
		+ "uninet_change        --> " + inputOpen.uninet_change
		+ "\n"
		+ "uninet_contact  		--> " + inputOpen.uninet_contact
		+ "\n"
		+ "uninet_phone_cont	--> " + inputOpen.uninet_phone_cont
		+ "\n"
		+ "service_provider		--> " + inputOpen.service_provider
		+ "\n"
		+ "remarks        		--> " + inputOpen.remarks
		+ "\n"
		+ "source_information 	--> " + inputOpen.source_information
		+ "\n"
		
		+ "order_id    			--> " + inputOpen.order_id
		+ "\n"
		+ "equip_id    			--> " + inputOpen.equip_id
		+ "\n"
		+ "equip_type    		--> " + inputOpen.equip_type
		+ "\n"
		+ "axs_link_id    		--> " + inputOpen.axs_link_id
		+ "\n"
		+ "workflow_id    		--> " + inputOpen.workflow_id
		+ "\n"
		+ "rfc		    		--> " + inputOpen.rfc
		+ "\n"
		+ "message_oper    		--> " + inputOpen.message_oper
		+"\n");
	 
	 
	 		if(	inputOpen.type_change != null &&
				inputOpen.date_request != null &&		
				inputOpen.project_manager != null &&
				inputOpen.eng_supervisor != null &&
				inputOpen.company != null &&
				inputOpen.location_name != null &&
				inputOpen.location != null &&
				inputOpen.unique_identifier != null &&
				inputOpen.ip_wan != null &&
				inputOpen.pe_name != null &&
				inputOpen.vrf_lan != null &&
				inputOpen.bandwidth != null &&
				inputOpen.service_quality != null &&
				inputOpen.profile != null &&
				inputOpen.profile_new != null &&
				inputOpen.q1 != null &&
				inputOpen.q2 != null &&		
				inputOpen.q3 != null &&		
				inputOpen.uninet_change != null &&
				inputOpen.uninet_contact != null &&
				inputOpen.uninet_phone_cont != null &&
				inputOpen.remarks != null &&
				inputOpen.service_provider != null &&
				inputOpen.source_information != null &&
				
				inputOpen.order_id != null &&
				inputOpen.equip_id != null &&
				inputOpen.equip_type != null &&
				inputOpen.axs_link_id != null &&
				inputOpen.workflow_id != null &&
				inputOpen.rfc != null &&
				inputOpen.message_oper != null

			 ){ 
			 
			 	inputOpen.message_oper = "SUCCESS - CAMBIO DE PERFIL";
			 	inputOpen.type = "CIRCUIT";
			 	writeFile("/sm/HP/ServiceManager9.30/Server/logs/Iom_Cnoc.log","a",system.functions.tod()+" ******* SUCCESS - CAMBIO DE PERFIL ******\n");
			 }
			 else{
			 	inputOpen.message_oper = "FAIL - NULL VALUE CAMBIO DE PERFIL";
			 	inputOpen.location = null;
			 	writeFile("/sm/HP/ServiceManager9.30/Server/logs/Iom_Cnoc.log","a",system.functions.tod()+" ******* FAIL - CAMBIO DE PERFIL ******\n");
			 }
 
	 }else if(inputOpen.type_change == "SERVICIO BAJA"){
	 			
	 			writeFile("/sm/HP/ServiceManager9.30/Server/logs/Iom_Cnoc.log","a",system.functions.tod()+" ******* BAJA SERVICIO ******\n");
			 	writeFile("../logs/Iom_Cnoc.log","a",system.functions.tod()
				+ "\n" 
				+ "type_change			--> " + inputOpen.type_change 
				+ "\n" 
				+ "date_request         --> " + inputOpen.date_request
				+ "\n"
				+ "rfc		    		--> " + inputOpen.rfc
				+ "\n"
				+ "company              --> " + inputOpen.company
				+ "\n"
				+ "location 			--> " + inputOpen.location
				+ "\n"
				+ "unique_identifier 	--> " + inputOpen.unique_identifier
				+ "\n"
				+ "ip_wan        		--> " + inputOpen.ip_wan
				+ "\n"
				+ "ip_lan        		--> " + inputOpen.ip_lan
				+ "\n");
	 
	 
	 			if(	inputOpen.type_change != null &&
				inputOpen.date_request != null &&
				inputOpen.rfc != null &&		
				inputOpen.company != null &&
				inputOpen.location != null &&
				inputOpen.unique_identifier != null &&
				inputOpen.ip_wan != null &&
				inputOpen.ip_lan != null
				){ 
			 
			 	inputOpen.message_oper = "SUCCESS - BAJA SERVICIO";
			 	inputOpen.type = "CIRCUIT";
			 	writeFile("/sm/HP/ServiceManager9.30/Server/logs/Iom_Cnoc.log","a",system.functions.tod()+" ******* SUCCESS - BAJA SERVICIO ******\n");
				}
				else{
					inputOpen.message_oper = "FAIL - NULL VALUE BAJA SERVICIO";
				 	inputOpen.location = null;
				 	writeFile("/sm/HP/ServiceManager9.30/Server/logs/Iom_Cnoc.log","a",system.functions.tod()+" ******* FAIL - BAJA SERVICIO ******\n");
				}
	 
	 }else{
	 	inputOpen.message_oper = "FAIL - Type_Change UNDEFINED";
		inputOpen.location = null;
	 }
	 
	writeFile("/sm/HP/ServiceManager9.30/Server/logs/Iom_Cnoc.log","a",system.functions.tod()+" Key Location -->>> "+ inputOpen.location+"\n");
	 
	return inputOpen;
}