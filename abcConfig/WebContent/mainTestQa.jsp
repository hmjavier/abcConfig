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
	<link rel="stylesheet" type="text/css" href="css/jquery.timepicker.css"/>
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
			<button type="button" id="sendTestQA" name="sendTestQA" class="btn btn-primary">Enviar Confirmaci&oacute;n</button>
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
    <script type="text/javascript" src="js/drawElementsMainConfig.js"></script>
    
    <!-- jQuery Loadmask -->
	<script src="js/jquery-loadmask-0.4/jquery.loadmask.min.js"></script>
    
    <!-- DataTables JavaScript -->
    <script src="js/jquery.dataTables.js"></script>
    <script src="js/dataTables.bootstrap.js"></script>
    
    <script src="https://gitcdn.github.io/bootstrap-toggle/2.2.0/js/bootstrap-toggle.min.js"></script>
    
    <script>
    
    $(document).ready(function(){
        
        jQuery.i18n.properties({
		    name:'config', 
		    path:'prop/', 
		    mode:'both',
		    callback: function() {
		    	
		    	cnocConnector.serviceTestQA = serviceTestQa;
	
		    }
		});
               
        
        /*******************************************************************************************************/
        /*   SEND JMS   */
        $("#sendTestQA").on("click", function() {
        	
        	for(var i=85; i<90; i++){
        		var ci = "CIADI0000"+i;
        		console.log(ci);
        		cnocConnector.invokeMashup(cnocConnector.serviceTestQA, 
            			{"AffectedCI":ci}, 
            			function(response){
            			  console.log(response);	
            			}
            			, null, null);
        	}
        	
        			
		});
    });
    
    </script>
</body>
</html>