<?xml version="1.0" encoding="US-ASCII" ?>
<%@ page language="java" contentType="text/html; charset=US-ASCII"
    pageEncoding="US-ASCII"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII" />
	<title>CNOC ... ABC v1.0</title>
	
	<!-- Bootstrap Core CSS -->
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"/>
	<!-- <link rel="stylesheet" type="text/css" href="css/theme1.css"/>-->
	<link rel="stylesheet" type="text/css" href="css/bootstrap-multiselect.css"/>
	<link rel="stylesheet" type="text/css" href="css/jquery.timepicker.css��"/>
	<link rel="stylesheet" type="text/css" href="css/datepicker.css"/>
	<link rel="stylesheet" type="text/css" href="css/dataTables.bootstrap.css"/>
	
	<!-- jQuery Loadmask -->
	<link rel="stylesheet" type="text/css" href="js/jquery-loadmask-0.4/jquery.loadmask.css">

	<link href="https://gitcdn.github.io/bootstrap-toggle/2.2.0/css/bootstrap-toggle.min.css" rel="stylesheet">
	
	<style type="">
		body{
			background-image: url("images/fondo1.png");
		}
		.input-group-addon.primary {
		    color: rgb(255, 255, 255);
		    background-color: rgb(50, 118, 177);
		    border-color: rgb(40, 94, 142);
		}
		.input-group-addon.success {
		    color: rgb(255, 255, 255);
		    background-color: rgb(92, 184, 92);
		    border-color: rgb(76, 174, 76);
		}
		.input-group-addon.info {
		    color: rgb(255, 255, 255);
		    background-color: rgb(57, 179, 215);
		    border-color: rgb(38, 154, 188);
		}
		.input-group-addon.warning {
		    color: rgb(255, 255, 255);
		    background-color: rgb(240, 173, 78);
		    border-color: rgb(238, 162, 54);
		}
		.input-group-addon.danger {
		    color: rgb(255, 255, 255);
		    background-color: rgb(217, 83, 79);
		    border-color: rgb(212, 63, 58);
		}
		
		.noBorder{
			background-color: transparent;
			border-width:0;
			border-bottom-width: thin;
		}
	</style>
</head>

<body>
	<div id="wrapper">	
		<div id="page-wrapper">
			<div id="container" style="margin-top: 2%; margin-left:5%; width: 90%;">
				<div id="containerListInbox">
					<fieldset>
					<legend>Lista de Cambios Programados:</legend>						
						<div class="row">
							<div class="col-lg-12">
			            	 	<div id="containerTable" style="width: 100%; border: 1px;">
			            	 		<table id="test">
			            	 		</table>
			            	 	</div>
			            	 </div>
						</div>	
					</fieldset>
					<!-- /.fieldset -->
				</div>
				<!-- /.containerListInbox -->
			</div>
		</div>
	</div>
			
				

	<!-- jQuery Version 1.11.0 -->	
	<script type="text/javascript" src="js/jquery-1.11.0.min.js"></script>
	
	<!-- Bootstrap Core JavaScript -->
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/bootstrap-multiselect.js"></script>
    <script type="text/javascript" src="js/jquery.validate.min.js"></script>
    <script type="text/javascript" src="js/bootstrapValidator.min.js"></script>    
    <script type="text/javascript" src="js/additional-methods.js"></script>
    <script type="text/javascript" src="js/jquery.i18n.properties-min-1.0.9.js"></script>
    <script type="text/javascript" src="js/jquery.timepicker.js"></script>
    <script type="text/javascript" src="js/bootstrap-datepicker.js"></script>
    
    <!-- CNOC  LIBRARY -->
    <script type="text/javascript" src="js/cnocConnector.js"></script>
    <script type="text/javascript" src="js/cnocUtilLibrary.js"></script>
    <script type="text/javascript" src="js/testClon.js"></script>
    
    <!-- jQuery Loadmask -->
	<script src="js/jquery-loadmask-0.4/jquery.loadmask.min.js"></script>
    
    <!-- DataTables JavaScript -->
    <script src="js/jquery.dataTables.js"></script>
    <script src="js/dataTables.bootstrap.js"></script>
    
    <script src="https://gitcdn.github.io/bootstrap-toggle/2.2.0/js/bootstrap-toggle.min.js"></script>
    
    <!-- Modal dialog -->
	<script type="text/javascript" src="js/bootbox.min.js"></script>
    
    <script>
    
    $(document).ready(function(){
    	
    	// just for the demos, avoids form submit
        jQuery.validator.setDefaults({
          debug: true,
          success: "valid"
        });
        
        jQuery.i18n.properties({
		    name:'config', 
		    path:'prop/', 
		    mode:'both',
		    callback: function() {
		    	
		    	/*cnocConnector.service1 = serviceRetrieveInbox;
				cnocConnector.service2 = serviceRetrieveInboxSearch;
				cnocConnector.service3 = serviceConfInbox;
				cnocConnector.service4 = serviceConfInboxUpdate;
				cnocConnector.service5 = serviceListCustomer;	
				cnocConnector.service11 = serviceConfInboxUpdateCircuit;
				
				cnocConnector.service6 = serviceCreateLocation;
				cnocConnector.service7 = serviceCreateCircuit;
				cnocConnector.service8 = serviceCreateNetworkComponent;
				cnocConnector.service9 = serviceCreateBizservice;
				cnocConnector.service10 = serviceCreatePeripheral;
				
				cnocConnector.serviceCountry = serviceCatCountries;
				cnocConnector.serviceCatState = serviceCatState;
				cnocConnector.serviceCatCity = serviceCatCity;
				cnocConnector.serviceDashboarClass = serviceDashboarClass				
				cnocConnector.serviceSubtype = serviceSubtype;
				cnocConnector.serviceCatFunction = serviceFunction;
				
				cnocConnector.sendJMS = serviceSendJMS;
				cnocConnector.getDataIom = serviceGetDataIOM;*/
				
				cnocConnector.getClon = serviceTestClon;
	
		    }
		});
		
          
        drawElementsMainConfig.init();     
        
    });
    
    </script>
</body>
</html>