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
			<div id="container" style="margin-top: 2%; margin-left:5%; width: 90%;">
				<div id="containerListInbox">
					<fieldset>
					<legend>Lista de Cambios Programados:</legend>						
						<div class="row">
							<div class="col-lg-12">
			            	 	<div id="containerTable" style="width: 100%; border: 1px;"></div>
			            	 </div>
						</div>	
					</fieldset>
					<!-- /.fieldset -->
				</div>
				<!-- /.containerListInbox -->
				
				<div id="formContainer">
					<fieldset>
						<legend>Datos Customer:</legend>
						<div class="row">
							<div class="col-lg-3">
								<div class="form-group">
									<label class="control-label" for="company">Company:</label>
									<div class="input-group">
								    	<span class="input-group-addon">*</span>
										<input class="form-control" placeholder="Company" name="company" id="company" type="text" required/>
									</div>
								</div>
							</div>
							<div class="col-lg-3">
								<div class="form-group">
									<label class="control-label" for="networkCode">Network Code:</label>
									<div class="input-group">
										<span class="input-group-addon">*</span>
										<input class="form-control" placeholder="Network Code" name="networkCode" id="networkCode" type="text" required/>
									</div>
								</div>
							</div>
							<div class="col-lg-3">
								<div class="form-group">
									<label class="control-label" for="typeChange">Type Change:</label>
									<div class="input-group">
										<span class="input-group-addon">*</span>
										<input class="form-control" placeholder="Type Change" name="typeChange" id="typeChange" type="text" required/>
									</div>
								</div>
							</div>
							<div class="col-lg-3" style="display: none;">
								<div class="form-group">
									<label class="control-label" for="fechaImple">Fecha Implementaci&oacute;n:</label>
									<div class="input-group">
										<span class="input-group-addon">*</span>
										<input class="form-control" placeholder="Fecha Implementacion" name="fechaImple" id="fechaImple" type="text" required/>
									</div>
								</div>
							</div>
						</div>
					</fieldset>
				</div>
				
				<div id="formContainer">
					<div id="formLocationC" >
						<form name="myform">
																												
							<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
							  
							  <!-- FORM PARA LOCATION  -->
							  <div class="panel panel-info">
							    <div class="panel-heading" role="tab" id="headingLocation">
							      <h4 class="panel-title">
							        <a data-toggle="collapse" data-parent="#accordion" href="#collapseLocation" aria-expanded="false" aria-controls="collapseLocation">
							          Datos Location:
							        </a>
							      </h4>
							    </div>
							    <div id="collapseLocation" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingLocation">
							      <div class="panel-body">
							        <div class="row">
										<div class="col-lg-3">
											<div class="form-group">
										        <label class="control-label" for="location">Site:</label>
										        <div class="input-group">
										            <span class="input-group-addon">*</span>
										            <input class="form-control" placeholder="Site" name="location" id="location" type="text" required disabled="disabled"/>
										        </div>
										    </div>
										    <div class="form-group">
										        <label class="control-label" for="locationName">Site Name:</label>
										        <div class="input-group">
										            <span class="input-group-addon">*</span>
										            <input class="form-control" placeholder="Site Name" name="locationName" id="locationName" type="text" required/>
										        </div>
										    </div>
										    <div class="form-group">
										        <label class="control-label" for="customerSiteAlias">Customer Site Alias:</label>
										        <div class="input-group">
										            <span class="input-group-addon">*</span>
										            <input class="form-control" placeholder="Customer Site Alias" name="customerSiteAlias" id="customerSiteAlias" type="text" required/>
										        </div>
										    </div>
										    <div class="form-group">
										        <label class="control-label" for="nodeTypeL">Node Type:</label>
										        <div class="input-group" id="nodeTypeLG"></div>
										    </div>
										    <div class="form-group">
										        <label class="control-label" for="street">Street:</label>
										        <div class="input-group">
										            <span class="input-group-addon">*</span>
										            <input class="form-control" placeholder="Street" name="street" id="street" type="text" required/>
										        </div>
										    </div>
										</div>
										<!-- /.row -->
										<div class="col-lg-3">
										    
										    <div class="form-group">
										        <label class="control-label" for="outsideNum">Outside Num:</label>
										        <div class="input-group">
										            <span class="input-group-addon">*</span>
										            <input class="form-control" placeholder="Outside Num" name="outsideNum" id="outsideNum" type="text" required/>
										        </div>
										    </div>
										    <div class="form-group">
										        <label class="control-label" for="insideNum">Inside Num:</label>
										        <div class="input-group">
										            <span class="input-group-addon">*</span>
										            <input class="form-control" placeholder="Inside Num" name="insideNum" id="insideNum" type="text" />
										        </div>
										    </div>
										    <div class="form-group">
										        <label class="control-label" for="zip">Zip:</label>
										        <div class="input-group">
										            <span class="input-group-addon">*</span>
										            <input class="form-control" placeholder="Zip" name="zip" id="zip" type="text" required/>
										        </div>
										    </div>
										    
										    <!--<div class="form-group">
										        <label class="control-label" for="Country:">Country:</label>
										        <div class="input-group">
										            <span class="input-group-addon">*</span>
										            <input class="form-control" placeholder="Country:" name="country" id="country" type="text" required/>
										        </div>
										    </div>-->
										    <div class="form-group">
										        <label class="control-label" for="listCountry">Country:</label>
										        <div class="input-group" id="listCountryG"></div>
										    </div>
										    <!-- <div class="form-group">
										        <label class="control-label" for="state">Sate:</label>
										        <div class="input-group">
										            <span class="input-group-addon">*</span>
										            <input class="form-control" placeholder="State" name="state" id="state" type="text" required/>
										        </div>
										    </div>-->
										    <div class="form-group">
										    	<label class="control-label" for="listState">Estado:</label>
										        <div class="input-group" id="listStateG"></div>
										    </div>
										</div>
										<!-- / col-lg-3 -->
										<div class="col-lg-3">
										    <!--<div class="form-group">
										        <label class="control-label" for="city">City:</label>
										        <div class="input-group">
										            <span class="input-group-addon">*</span>
										            <input class="form-control" placeholder="City" name="city" id="city" type="text" required/>
										        </div>
										    </div>-->
										    <div class="form-group">
										    	<label class="control-label" for="listCity">Ciudad:</label>
										        <div class="input-group" id="listCityG"></div>
										    </div>
										    <!-- <div class="form-group">
										        <label class="control-label" for="district">District:</label>
										        <div class="input-group">
										            <span class="input-group-addon">*</span>
										            <input class="form-control" placeholder="District" name="district" id="district" type="text" />
										        </div>
										    </div>-->
										    <div class="form-group">
										        <label class="control-label" for="delMun">Distric:</label>
										        <div class="input-group" id="delMunG">
										            <span class="input-group-addon">*</span>
										            <input class="form-control" placeholder="Distric" name="delMun" id="delMun" type="text" required/>
										        </div>
										    </div>
										    <div class="form-group">
										        <label class="control-label" for="neighborhood">Neighborhood:</label>
										        <div class="input-group">
										            <span class="input-group-addon">*</span>
										            <input class="form-control" placeholder="Neighborhood" name="neighborhood" id="neighborhood" type="text" />
										        </div>
										    </div>
										</div>
										<!-- / col-lg-3 -->
										<div class="col-lg-3">
										    <div class="form-group">
										        <label class="control-label" for="contact">Contact:</label>
										        <div class="input-group">
										            <span class="input-group-addon">*</span>
										            <input class="form-control" placeholder="Contact" name="contact" id="contact" type="text" required/>
										        </div>
										    </div>
										    <div class="form-group">
										        <label class="control-label" for="phoneContact">Phone Contact:</label>
										        <div class="input-group">
										            <span class="input-group-addon">*</span>
										            <input class="form-control" placeholder="Phone Contact" name="phoneContact" id="phoneContact" type="text" required/>
										        </div>
										    </div>
										    <div class="form-group">
										        <label class="control-label" for="mailContact">Mail Contact:</label>
										        <div class="input-group">
										            <span class="input-group-addon">*</span>
										            <input class="form-control" placeholder="Mail Contact" name="mailContact" id="mailContact" type="email" required/>
										        </div>
										    </div>								    								   
										</div>
									</div>
							      </div>
							    </div>
							  </div>
							  <!-- / end panel -->
							  
							  <!-- FORM CIRCUIT  -->
							  <div class="panel panel-info">
							    <div class="panel-heading" role="tab" id="headingOne">
							      <h4 class="panel-title">
							        <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="false" aria-controls="collapseOne">
							          Datos Circuit:
							        </a>
							        <input  id="toggleCircuit" type="checkbox" data-toggle="toggle" data-size="small">							        
							      </h4>
							      
							    </div>
							    <div id="collapseOne" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingOne">
							      <div class="panel-body">
							        <div class="row">
										<div class="col-lg-3">											
										    <div class="form-group">
										        <label class="control-label" for="typeDC">Type:</label>
										        <div class="input-group">
										            <span class="input-group-addon">*</span>
										            <input class="form-control" placeholder="Type" name="typeDC" id="typeDC" type="text" value="CIRCUIT" disabled="disabled" required/>
										        </div>
										    </div>
										    <div class="form-group">
										        <label class="control-label" for="vendorDC">Vendor:</label>
										        <div class="input-group">
										            <span class="input-group-addon">*</span>
										            <input class="form-control" placeholder="Vendor" name="vendorDC" id="vendorDC" type="text" required/>
										        </div>
										    </div>
										    <div class="form-group">
										        <label class="control-label" for="manufacturerDC">Manufacturer:</label>
										        <div class="input-group">
										            <span class="input-group-addon">*</span>
										            <input class="form-control" placeholder="Manufacturer" name="manufacturerDC" id="manufacturerDC" type="text" required/>
										        </div>
										    </div>
										    <!--
										    <div class="form-group">
										        <label class="control-label" for="problemPriorityDC">Problem Priority:</label>
										        <div class="input-group">
										            <span class="input-group-addon">*</span>
										            <input class="form-control" placeholder="Problem Priority" name="problemPriorityDC" id="problemPriorityDC" type="text" required/>
										        </div>
										    </div> 
										    <div class="form-group">
										        <label class="control-label" for="defaultImpactDC">Default Impact:</label>
										        <div class="input-group">
										            <span class="input-group-addon">*</span>
										            <input class="form-control" placeholder="Default Impact" name="defaultImpactDC" id="defaultImpactDC" type="text" required/>
										        </div>
										    </div>
										    <div class="form-group">
										        <label class="control-label" for="allowSubscriptionDC">Allow Subscription:</label>
										        <div class="input-group">
										            <span class="input-group-addon">*</span>
										            <input class="form-control" placeholder="Allow Subscription" name="allowSubscriptionDC" id="allowSubscriptionDC" type="text" required/>
										        </div>
										    </div>-->
										</div>
										<!-- / col-lg-3 -->
										<div class="col-lg-3">
											<div class="form-group">
										        <label class="control-label" for="subtypeDC">Subtype:</label>
										        <!--<div class="input-group">
										            <span class="input-group-addon">*</span>
										            <input class="form-control" placeholder="Subtype" name="subtypeDC" id="subtypeDC" type="text" required/>
										        </div>-->
										        <div class="input-group">
										            <span class="input-group-addon">*</span>
										            <select name="subtypeDC" id='subtypeDC' style='width:100%; margin-left: 5%;' required>
										            	<option id='' value=''>None Selected</option>
										            	<option id='' value='WIRELESS'>WIRELESS</option>
										            	<option id='' value='COPPER'>COPPER</option>
										            	<option id='' value='OPTICAL'>OPTICAL</option>
										            	<option id='' value='SATELITE'>SATELITE</option>
									            	</select>
										        </div>
										    </div>
										    <div class="form-group">
										        <label class="control-label" for="istatusDC">Istatus:</label>
										        <!--<div class="input-group">
										            <span class="input-group-addon">*</span>
										            <input class="form-control" placeholder="Istatus" name="istatusDC" id="istatusDC" type="text" required/>
										        </div>-->
										        <div class="input-group">
										            <span class="input-group-addon">*</span>
										            <select name="istatusDC" id='istatusDC' style='width:100%; margin-left: 5%;' required>
										            	<option id='' value=''>None Selected</option>
										            	<option id='' value='IN USE'>IN USE</option>
										            	<option id='' value='SUSPENDED'>SUSPENDED</option>
										            	<option id='' value='RETIRED/CONSUMED'>RETIRED/CONSUMED</option>
									            	</select>
										        </div>										        
										    </div>
										    <div class="form-group">
										        <label class="control-label" for="linkBalancertype">Link Balancer Type:</label>
										        <div class="input-group">
										            <span class="input-group-addon">*</span>
										            <select id='linkBalancertype' style='width:100%; margin-left: 5%;' required>
										            	<option id='' value=''>None Selected</option>
										            	<option id='' value='N/A'>N/A</option>
										            	<option id='' value='MULTILINK'>MULTILINK</option>
										            	<option id='' value='PACKAGE'>PACKAGE</option>
										            	<option id='' value='TARGET'>TARGET</option>				            	
										            </select>
										        </div>
										    </div>
										    <!--<div class="form-group">
										        <label class="control-label" for="alertNameDC">Alert Name:</label>
										        <div class="input-group">
										            <span class="input-group-addon">*</span>
										            <input class="form-control" placeholder="Alert Name" name="alertNameDC" id="alertNameDC" type="text" required/>
										        </div>
										    </div>-->
										</div>
										<!-- / col-lg-3 -->
										<div class="col-lg-3">		
											<!--<div class="form-group">
										        <label class="control-label" for="serviceType">Service Type:</label>
										        <div class="input-group">
										            <span class="input-group-addon">*</span>
										            <input class="form-control" placeholder="serviceType" name="serviceType" id="serviceType" type="text" required/>
										        </div>
										    </div>-->
										    <div class="form-group">
										        <label class="control-label" for="serviceType">Service Type:</label>
										        <div class="input-group">
										            <span class="input-group-addon">*</span>
										            <select id='serviceType' style='width:100%; margin-left: 5%;' required>
										            	<option id='' value=''>None Selected</option>
										            	<option id='' value='MPLS'>MPLS</option>
										            	<option id='' value='IDE'>IDE</option>
										            	<option id='' value='ADSL'>ADSL</option>
										            	<option id='' value='FRAME RELAY'>FRAME RELAY</option>
										            	<option id='' value='DEDICATE LINK'>DEDICATE LINK</option>
										            	<option id='' value='DID'>DID</option>
										            	<option id='' value='TKS'>TKS</option>
										            	<option id='' value='I800'>I800</option>
										            	<option id='' value='VOICE FRAMES'>VOICE FRAMES</option>
										            	<option id='' value='DIGITAL NAME'>DIGITAL NAME</option>
										            	<option id='' value='ATM'>ATM</option>
										            	<option id='' value='IPL/DPL'>IPL/DPL</option>
										            	<option id='' value='HOUSING'>HOUSING</option>
										            	<option id='' value='SATELLITE'>SATELLITE</option>
										            	<option id='' value='DIA'>DIA</option>
										            	<option id='' value='METROETHERNET'>METROETHERNET</option>
										            	<option id='' value='3G/4G'>3G/4G</option>						            	
										            </select>
										        </div>
										    </div>
											<div class="form-group">
										        <label class="control-label" for="nsr">NSR:</label>
										        <div class="input-group">
										            <span class="input-group-addon">*</span>
										            <input class="form-control" placeholder="NSR" name="nsr" id="nsr" type="text" required/>
										        </div>
										    </div>
										    <!--<div class="form-group">
										        <label class="control-label" for="linkScheme">Link Scheme:</label>
										        <div class="input-group">
										            <span class="input-group-addon">*</span>
										            <input class="form-control" placeholder="Link Scheme" name="linkScheme" id="linkScheme" type="text" required/>
										        </div>
										    </div>-->
										    <!--<div class="form-group">
										        <label class="control-label" for="linkBalancertype">Link Balancer type:</label>
										        <div class="input-group">
										            <span class="input-group-addon">*</span>
										            <input class="form-control" placeholder="Link Balancer type" name="linkBalancertype" id="linkBalancertype" type="text" required/>
										        </div>
										    </div>-->										   	
										    <!--<div class="form-group">
										        <label class="control-label" for="bandwidth">Band Width:</label>
										        <div class="input-group">
										            <span class="input-group-addon">*</span>
										            <input class="form-control" placeholder="Band Width" name="bandwidth" id="bandwidth" type="text" required/>
										        </div>
										    </div>-->
										</div>
										<!-- / col-lg-3 -->
										<div class="col-lg-3">
											<div class="form-group">
										        <label class="control-label" for="bwUnit">BW Unit:</label>
										        <div class="input-group">
										            <span class="input-group-addon">*</span>
										            <input class="form-control" placeholder="BW Unit" name="bwUnit" id="bwUnit" type="text" required/>
										        </div>
										    </div>						    								   								    
										    <div class="form-group">
										        <label class="control-label" for="requiredPort">Required Port:</label>
										        <div class="input-group">
										            <span class="input-group-addon">*</span>
										            <select name="requiredPort" id='requiredPort' style='width:100%; margin-left: 5%;' required>
										            	<option id='' value='NO'>NO</option>
										            	<option id='' value='YES'>YES</option>										            	
									            	</select>
										        </div>
										    </div>										    										    
										    								    
										    <!--<div class="form-group">
										        <label class="control-label" for="ipWanDC">ip Wan:</label>
										        <div class="input-group">
										            <span class="input-group-addon">*</span>
										            <input class="form-control" placeholder="ip Wan" name="ipWanDC" id="ipWanDC" type="text" required/>
										        </div>
										    </div>-->
										<!-- / col-lg-3 -->
										</div>
									</div>
									<!-- / row -->
									<div class="row requiredPort" >
										<div class="col-lg-3">
											<div class="form-group">
										        <label class="control-label" for="peName">PE Name:</label>
										        <div class="input-group">
										            <span class="input-group-addon">*</span>
										            <input class="form-control" placeholder="PE Name" name="peName" id="peName" type="text" required/>
										        </div>
										    </div>
										    <div class="form-group">
										        <label class="control-label" for="interfaceName">Interface Name:</label>
										        <div class="input-group">
										            <span class="input-group-addon">*</span>
										            <input class="form-control" placeholder="Interface Name" name="interfaceName" id="interfaceName" type="text" required/>
										        </div>
										    </div>
										    
										</div>
										<div class="col-lg-3">
											<div class="form-group">
										        <label class="control-label" for="interfaceType">Interface Type:</label>
										        <!--<div class="input-group">
										            <span class="input-group-addon">*</span>
										            <input class="form-control" placeholder="Interface Type" name="interfaceType" id="interfaceType" type="text" required/>
										        </div>-->
										        <div class="input-group">
										            <span class="input-group-addon">*</span>
										            <select name="interfaceType" id='interfaceType' style='width:100%; margin-left: 5%;' required>
										            	<option id='' value=''>None Selected</option>
										            	<option id='' value='SERIAL'>SERIAL</option>
										            	<option id='' value='POS'>POS</option>
										            	<option id='' value='E3'>E3</option>
										            	<option id='' value='GIGABIT'>GIGABIT</option>
										            	<option id='' value='ETHERNET'>ETHERNET</option>
									            	</select>
										        </div>
										    </div>
											<div class="form-group">
										        <label class="control-label" for="ipPe">IP Pe:</label>
										        <div class="input-group">
										            <span class="input-group-addon">*</span>
										            <input class="form-control" placeholder="IP Pe" name="ipPe" id="ipPe" type="text" required/>
										        </div>
										    </div>
										    
										</div>
										<div class="col-lg-3">
											<div class="form-group">
										        <label class="control-label" for="vrfVlan">VRF/VLAN:</label>
										        <div class="input-group">
										            <span class="input-group-addon">*</span>
										            <input class="form-control" placeholder="VRF Vlan" name="vrfVlan" id="vrfVlan" type="text" required/>
										        </div>
										    </div>
											<div class="form-group">
										        <label class="control-label" for="serviceQuality">Service Quality:</label>
										        <div class="input-group">
										            <span class="input-group-addon">*</span>
										            <select name="serviceQuality" id='serviceQuality' style='width:100%; margin-left: 5%;' required>
										            	<option id='' value='N/A'>N/A</option>
										            	<option id='' value='V2.5'>V2.5</option>
										            	<option id='' value='V3.0'>V3.0</option>										            	
									            	</select>
										        </div>
										    </div>
										</div>
										<div class="col-lg-3 serviceQualityFields">
											<div class="form-group profileC">
										        <label class="control-label" for="profile">Profile:</label>
										        <div class="input-group">
										            <span class="input-group-addon">*</span>
										            <input class="form-control profileFields" placeholder="Profile" name="profile" id="profile" type="text" />
										        </div>
										    </div>
											 <div class="form-group qos">
										        <label class="control-label" for="q1">Q1:</label>
										        <div class="input-group">
										            <span class="input-group-addon">*</span>
										            <input class="form-control qosFields" placeholder="Q1" name="q1" id="q1" type="text" />
										        </div>
										    </div>
										    <div class="form-group qos">
										        <label class="control-label" for="q2">Q2:</label>
										        <div class="input-group">
										            <span class="input-group-addon">*</span>
										            <input class="form-control qosFields" placeholder="Q2" name="q2" id="q2" type="text" />
										        </div>
										    </div>
										    <div class="form-group qos">
										        <label class="control-label" for="q3">Q3:</label>
										        <div class="input-group">
										            <span class="input-group-addon">*</span>
										            <input class="form-control qosFields" placeholder="Q3" name="q3" id="q3" type="text" />
										        </div>
										    </div>
										</div>										
									</div>
									<!-- / row -->
									<div class="row">
										<div class="col-lg-12">
							   				<div class="panel panel-default">
											  <!-- Default panel contents -->
											  <div class="panel-heading">Referencias Alta</div>
											
											  <!-- Table -->
											  <table class="table" id="tableReferenciasGConf">
											  	
											  </table>
											</div>
							   			</div>
									</div>
									<!-- / row -->									
							      </div>
							    </div>
							  </div>
							  <!-- / end panel -->
							  
							  <!-- FORM  NETWORK COMPONENT -->
							  <div class="panel panel-info">
							    <div class="panel-heading" role="tab" id="headingNC">
							      <h4 class="panel-title">
							        <a data-toggle="collapse" data-parent="#accordion" href="#collapseNC" aria-controls="collapseNC">
							          Datos Network Component:
							        </a>
							        <input  id="toggleNetworkC" type="checkbox" data-toggle="toggle" data-size="small">
							      </h4>
							    </div>
							    <div id="collapseNC" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingNC">
							      <div class="panel-body">
							        <div class="row">
										<div class="col-lg-3">
										    <div class="form-group">
										        <label class="control-label" for="model">Model:</label>
										        <div class="input-group">
										            <span class="input-group-addon">*</span>
										            <input class="form-control" placeholder="Model" name="model" id="model" type="text" required/>
										        </div>
										    </div>
										    <div class="form-group">
										        <label class="control-label" for="typeDNC">Type:</label>
										        <div class="input-group">
										            <span class="input-group-addon">*</span>
										            <input class="form-control" placeholder="Type" name="typeDNC" id="typeDNC" type="text" value="NETWORKCOMP" disabled="disabled" required/>
										        </div>
										    </div>
										    <div class="form-group">
										        <label class="control-label" for="serialNo">Serial No:</label>
										        <div class="input-group">
										            <span class="input-group-addon">*</span>
										            <input class="form-control" placeholder="SerialNo" name="serialNo" id="serialNo" type="text" required/>
										        </div>
										    </div>
										    <!--<div class="form-group">
										        <label class="control-label" for="istatus">Istatus:</label>
										        <div class="input-group">
										            <span class="input-group-addon">*</span>
										            <input class="form-control" placeholder="Istatus" name="istatus" id="istatus" type="text" required/>
										        </div>
										    </div>-->
										    <div class="form-group">
										        <label class="control-label" for="subtype">Subtype:</label>
										        <div class="input-group">
										            <!--<span class="input-group-addon">*</span>
										            <input class="form-control" placeholder="Subtype" name="subtype" id="subtype" type="text" required/>-->
										            <div class="input-group" id="subTypeG"></div>
										        </div>
										    </div>
										    <!-- <div class="form-group">
										        <label class="control-label" for="locationCode">Location Code:</label>
										        <div class="input-group">
										            <span class="input-group-addon">*</span>
										            <input class="form-control" placeholder="Location Code" name="locationCode" id="locationCode" type="text" required/>
										        </div>
										    </div>-->										    
										</div>
										<!-- / col-lg-3 -->
										<div class="col-lg-3">
										    <div class="form-group">
										        <label class="control-label" for="manufacturer">Manufacturer:</label>
										        <div class="input-group">
										            <span class="input-group-addon">*</span>
										            <input class="form-control" placeholder="Manufacturer" name="manufacturer" id="manufacturer" type="text" required/>
										        </div>
										    </div>
										    <!--<div class="form-group">
										        <label class="control-label" for="allowSubscription">Allow Subscription:</label>
										        <div class="input-group">
										            <span class="input-group-addon">*</span>
										            <input class="form-control" placeholder="Allow Subscription" name="allowSubscription" id="allowSubscription" type="text" required/>
										        </div>
										    </div>-->
										    <div class="form-group">
										        <label class="control-label" for="ipWan">IP Wan:</label>
										        <div class="input-group">
										            <span class="input-group-addon">*</span>
										            <input class="form-control" placeholder="IP Wan" name="ipWan" id="ipWan" type="text" required/>
										        </div>
										    </div>
										    <div class="form-group">
										        <label class="control-label" for="monitoringProfile">Monitoring Profile:</label>
										        <div class="input-group">
										            <span class="input-group-addon">*</span>
										            <input class="form-control" placeholder="Monitoring Profile" name="monitoringProfile" id="monitoringProfile" type="text" required/>
										        </div>
										    </div>
										    <div class="form-group">
										        <label class="control-label" for="monitoringIp">Monitoring Ip:</label>
										        <div class="input-group">
										            <span class="input-group-addon">*</span>
										            <input class="form-control" placeholder="Monitoring Ip" name="monitoringIp" id="monitoringIp" type="text" required/>
										        </div>
										    </div>
										   
										</div>
										<!-- / col-lg-3 -->
										<div class="col-lg-3">
										    <div class="form-group">
										        <label class="control-label" for="ipLan">IP Lan:</label>
										        <div class="input-group">
										            <span class="input-group-addon">*</span>
										            <input class="form-control" placeholder="IP Lan" name="ipLan" id="ipLan" type="text" />
										        </div>
										    </div>
										    <div class="form-group">
										        <label class="control-label" for="hostname">Host Name:</label>
										        <div class="input-group">
										            <span class="input-group-addon">*</span>
										            <input class="form-control" placeholder="Host Name" name="hostname" id="hostname" type="text" required/>
										        </div>
										    </div>
										    <div class="form-group">
										        <label class="control-label" for="osVersion">OS Version:</label>
										        <div class="input-group">
										            <span class="input-group-addon">*</span>
										            <input class="form-control" placeholder="OS Version" name="osVersion" id="osVersion" type="text" required/>
										        </div>
										    </div>
										    <div class="form-group">
										        <label class="control-label" for="osRelease">OS Release:</label>
										        <div class="input-group">
										            <span class="input-group-addon">*</span>
										            <input class="form-control" placeholder="OS Release" name="osRelease" id="osRelease" type="text" required/>
										        </div>
										    </div>
										    <div class="form-group">
										        <label class="control-label" for="dependence">Dependence:</label>
										        <div class="input-group">
										            <span class="input-group-addon">*</span>
										            <input class="form-control" placeholder="Dependence" name="dependence" id="dependence" type="text" >
										        </div>
										    </div>
										</div>
										<!-- / col-lg-3 -->
										<div class="col-lg-3">
										    <div class="form-group">
										        <!--<label class="control-label" for="scope">Scope:</label>
										        <div class="input-group">
										            <span class="input-group-addon">*</span>
										            <input class="form-control" placeholder="Scope" name="scope" id="scope" type="text" required/>
										        </div>-->
										        <label class="control-label" for="scope">Scope:</label>
										        <div class="input-group">
										            <span class="input-group-addon">*</span>
										            <select id='scope' style='width:100%; margin-left: 5%;' required>
										            	<option id='' value=''>None Selected</option>
										            	<option id='' value='ADMINISTRATION'>ADMINISTRATION</option>
										            	<option id='' value='MONITORING'>MONITORING</option>
										            	<option id='' value='MANAGEMENT'>MANAGEMENT</option>
										            	<option id='' value='M & M'>M & M</option>				            	
										            </select>
										        </div>
										    </div>
										    <div class="form-group">
										        <!--<label class="control-label" for="scope">Owner:</label>
										        <div class="input-group">
										            <span class="input-group-addon">*</span>
										            <input class="form-control" placeholder="Owner" name="owner" id="owner" type="text" required/>
										        </div>-->
										        <label class="control-label" for="Owner">Owner:</label>
										        <div class="input-group">
										            <span class="input-group-addon">*</span>
										            <select id='owner' style='width:100%; margin-left: 5%;' required>
										            	<option id='' value=''>None Selected</option>
										            	<option id='' value='OWNED'>OWNED</option>
										            	<option id='' value='EXTERNAL'>EXTERNAL</option>
										            	<option id='' value='CUSTOMER'>CUSTOMER</option>
										            	<option id='' value='OWNED/EXTERNAL'>OWNED/EXTERNAL</option>				            	
										            </select>
										        </div>
										    </div>
										    <!--<div class="form-group">
										        <label class="control-label" for="requiredModule">Required Module:</label>
										        <div class="input-group">
										            <span class="input-group-addon">*</span>
										            <input class="form-control" placeholder="requiredModule" name="requiredModule" id="requiredModule" type="text" required/>
										        </div>
										    </div>-->
										    <div class="form-group">
										        <label class="control-label" for="requiredModule">Required Module:</label>
										        <div class="input-group">
										            <span class="input-group-addon">*</span>
										            <select name="requiredModule" id='requiredModule' style='width:100%; margin-left: 5%;' required>
										            	<option id='' value='NO'>NO</option>
										            	<option id='' value='YES'>YES</option>										            											            	
									            	</select>
										        </div>
										    </div>
										    
										    <div class="form-group">
										        <label class="control-label" for="ipLoopback">IP Loopback:</label>
										        <div class="input-group">
										            <span class="input-group-addon">*</span>
										            <input class="form-control" placeholder="IP Loopback" name="ipLoopback" id="ipLoopback" type="text" required/>
										        </div>
										    </div>
										    <div class="form-group">
										    	<label class="control-label" for="listCity">Dashboard Classification:</label>
										        <div class="input-group" id="dashClassG"></div>
										    </div>
										    <!--<div class="form-group">
										        <label class="control-label" for="problemPriority">Problem Priority:</label>
										        <div class="input-group">
										            <span class="input-group-addon">*</span>
										            <input class="form-control" placeholder="Problem Priority" name="problemPriority" id="problemPriority" type="text" required/>
										        </div>
										    </div>-->
										    <!-- <div class="form-group">
										        <label class="control-label" for="modulePartNo">Module Part No:</label>
										        <div class="input-group">
										            <span class="input-group-addon">*</span>
										            <input class="form-control" placeholder="Module Part No" name="modulePartNo" id="modulePartNo" type="text" required/>
										        </div>
										    </div>
										    <div class="form-group">
										        <label class="control-label" for="moduleSerialNo">Module Serial No:</label>
										        <div class="input-group">
										            <span class="input-group-addon">*</span>
										            <input class="form-control" placeholder="Module Serial No" name="moduleSerialNo" id="moduleSerialNo" type="text" required/>
										        </div>
										    </div>-->
										</div>
										<!-- / col-lg-3 -->
									</div>
								   		<div class="row requiredModule">
								   			<div class="col-lg-2">
								   				<div class="form-group">
										   			<label class="control-label" for="moduleSerialNo">Module Part No:</label>
											        <div class="input-group">
											            <span class="input-group-addon">*</span>
											            <input id="modulePartNo" type="text" class="form-control" placeholder="Module Part No"/>
											        </div>
										   		</div>
								   			</div>									   		
											<div class="col-lg-2">
								   				<div class="form-group">
										   			<label class="control-label" for="moduleSerialNo">Module Serial No:</label>
											        <div class="input-group">
											            <span class="input-group-addon">*</span>
											            <input id="moduleSerialNo" type="text" class="form-control" placeholder="Module Serial No"/>
											        </div>
										   		</div>
								   			</div>
								   			<div class="col-lg-2">
								   				<div class="form-group">
										   			<label class="control-label" for="moduleSerialNo">Add Part</label>
											        <div class="input-group">
											            <button type="button" id="addModulePart" class="btn btn-primary">Agregar</button>
											        </div>
										   		</div>
								   			</div>
								   			<div class="col-lg-6">
								   				<div class="panel panel-default">
												  <!-- Default panel contents -->
												  <div class="panel-heading">Model Parts Table</div>
												
												  <!-- Table -->
												  <table class="table" id="tableModulePart">
												  	<tr><td>Module Part No</td><td>Module Serial No</td></tr>
												  </table>
												</div>
								   			</div>
								   		</div>
							      </div>
							    </div>
							  </div>
							  <!-- / end panel -->							  							  							  
							  
							  <!-- FORM BIZSERVICE  -->
							  <div class="panel panel-info">
							    <div class="panel-heading" role="tab" id="headingTwo">
							      <h4 class="panel-title">
							        <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
							          Datos Bizservice:
							        </a>
							      </h4>
							    </div>
							    <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
							      <div class="panel-body">
							        <div class="row">
										<div class="col-lg-2">	
											<div class="form-group">
										        <label class="control-label" for="typeBS">Type:</label>
										        <div class="input-group">
										            <span class="input-group-addon">*</span>
										            <input class="form-control" placeholder="Type" name="typeBS" id="typeBS" type="text" value="bizservice" disabled="disabled" required/>
										        </div>
										    </div>								    										    
										</div>
										<!-- / col-lg-3 -->
										<div class="col-lg-3">								    								    
										    <div class="form-group">
										        <label class="control-label" for="subtypeBS">Subtype:</label>
										        <div class="input-group">
										            <span class="input-group-addon">*</span>
										            <select name="subtypeBS" id='subtypeBS' style='width:100%; margin-left: 5%;' required>
										            	<option id='' value='BUSINESS SERVICE'>BUSINESS SERVICE</option>
										            	<option id='' value='APLICATION SERVICE'>APLICATION SERVICE</option>
										            	<option id='' value='MANAGED SERVICE'>MANAGED SERVICE</option>
										            	<option id='' value='INFRASTRUCTURE SERVICE'>INFRASTRUCTURE SERVICE</option>										            	
									            	</select>
										        </div>
										    </div>
										</div>
										<!-- / col-lg-3 -->
										<div class="col-lg-3">								    	
										    <div class="form-group">
										        <label class="control-label" for="functionBS">Function:</label>
										        <div class="input-group" id="functionBSG"></div>
										        <!--<div class="input-group">
										            <span class="input-group-addon">*</span>
										            <input class="form-control" placeholder="Default Impact" name="functionBS" id="functionBS" type="text" required/>
										        </div>-->
										    </div>										    
										</div>
										<!-- / col-lg-3 -->
										<div class="col-lg-2">								    
										    <div class="form-group">
										        <label class="control-label" for="serviceName">Service Name:</label>
										        <div class="input-group">
										            <span class="input-group-addon">*</span>
										            <input class="form-control" placeholder="Service Name" name="serviceName" id="serviceName" type="text" required/>
										        </div>
										    </div>									    								  
										</div>
										<!-- / col-lg-3 -->
										<div class="col-lg-2">
											<div class="form-group">
										        <label class="control-label" for="serviceScope">Service Scope:</label>
										        <div class="input-group">
										            <span class="input-group-addon">*</span>
										            <select name="serviceScope" id='serviceScope' style='width:100%; margin-left: 5%;' required>
										            	<option id='' value='ADMINISTRATION'>ADMINISTRATION</option>
										            	<option id='' value='MONITORING'>MONITORING</option>
										            	<option id='' value='MANAGEMENT'>MANAGEMENT</option>
										            	<option id='' value='M & M'>M & M</option>										            	
									            	</select>
										        </div>
										    </div>
										</div>
									</div>
							      </div>
							    </div>
							  </div>							  
							  <!-- / end panel -->							  
							  
							  <!-- FORM PARA PERIFERICOS  -->
							  <!--
							  <div class="panel panel-info">
							    <div class="panel-heading" role="tab" id="headingThree">
							      <h4 class="panel-title">
							        <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
										Datos Peripheral:
							        </a>
							      </h4>
							    </div>
							    <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
							      <div class="panel-body">
							        <div class="row">
										<div class="col-lg-3">
											<div class="form-group">
										        <label class="control-label" for="modelP">Model:</label>
										        <div class="input-group">
										            <span class="input-group-addon">*</span>
										            <input class="form-control" placeholder="Model" name="modelP" id="modelP" type="text" required/>
										        </div>
										    </div>
										    <div class="form-group">
										        <label class="control-label" for="serialNoP">Serial No.:</label>
										        <div class="input-group">
										            <span class="input-group-addon">*</span>
										            <input class="form-control" placeholder="Serial No." name="serialNoP" id="serialNoP" type="text" required/>
										        </div>
										    </div>
										    <div class="form-group">
										        <label class="control-label" for="typeP">Type:</label>
										        <div class="input-group">
										            <span class="input-group-addon">*</span>
										            <input class="form-control" placeholder="Type" name="typeP" id="typeP" type="text" value="PERIPHERAL" disabled="disabled" required/>
										        </div>
										    </div>
										</div>
										
										<div class="col-lg-3">
										    <div class="form-group">
										        <label class="control-label" for="subtypeP">Subtype:</label>
										        <div class="input-group">
										            <span class="input-group-addon">*</span>
										            <input class="form-control" placeholder="Subtype" name="subtypeP" id="subtypeP" type="text" required/>
										        </div>
										    </div>
										    <div class="form-group">
										        <label class="control-label" for="problemPriorityP">Problem Priority:</label>
										        <div class="input-group">
										            <span class="input-group-addon">*</span>
										            <input class="form-control" placeholder="Problem Priority" name="problemPriorityP" id="problemPriorityP" type="text" required/>
										        </div>
										    </div>
										    <div class="form-group">
										        <label class="control-label" for="manufacturerP">Manufacturer:</label>
										        <div class="input-group">
										            <span class="input-group-addon">*</span>
										            <input class="form-control" placeholder="Manufacturer" name="manufacturerP" id="manufacturerP" type="text" required/>
										        </div>
										    </div>
										</div>
										
										<div class="col-lg-3">								    
										    <div class="form-group">
										        <label class="control-label" for="assignmentP">Assignment:</label>
										        <div class="input-group">
										            <span class="input-group-addon">*</span>
										            <input class="form-control" placeholder="Assignment" name="assignmentP" id="assignmentP" type="text" required/>
										        </div>
										    </div>
										    <div class="form-group">
										        <label class="control-label" for="extensionP">Extension:</label>
										        <div class="input-group">
										            <span class="input-group-addon">*</span>
										            <input class="form-control" placeholder="Extension" name="extensionP" id="extensionP" type="text" />
										        </div>
										    </div>
										    <div class="form-group">
										        <label class="control-label" for="defaultImpactP">Default Impact</label>
										        <div class="input-group">
										            <span class="input-group-addon">*</span>
										            <input class="form-control" placeholder="Default Impact" name="defaultImpactP" id="defaultImpactP" type="text" required/>
										        </div>
										    </div>
										</div>
										
										<div class="col-lg-3">								    
										    <div class="form-group">
										        <label class="control-label" for="ipWanP">IP Wan:</label>
										        <div class="input-group">
										            <span class="input-group-addon">*</span>
										            <input class="form-control" placeholder="IP Wan" name="ipWanP" id="ipWanP" type="text" required/>
										        </div>
										    </div>
										    <div class="form-group">
										        <label class="control-label" for="alertNameP">Alert Name:</label>
										        <div class="input-group">
										            <span class="input-group-addon">*</span>
										            <input class="form-control" placeholder="Alert Name" name="alertNameP" id="alertNameP" type="text" required/>
										        </div>
										    </div>
										    <div class="form-group">
										        <label class="control-label" for="monitoringProfileP">Monitoring Profile:</label>
										        <div class="input-group">
										            <span class="input-group-addon">*</span>
										            <input class="form-control" placeholder="Monitoring Profile" name="monitoringProfileP" id="monitoringProfileP" type="text" required/>
										        </div>
										    </div>
										    <div class="form-group">
										        <label class="control-label" for="macImei">MAC Imei:</label>
										        <div class="input-group">
										            <span class="input-group-addon">*</span>
										            <input class="form-control" placeholder="MAC Imei" name="macImei" id="macImei" type="text" required/>
										        </div>
										    </div>
										</div>
									</div>
							      </div>
							    </div>
							  </div>-->
							  <!-- / end panel -->

							</div>
							
							<button type="submit" class="btn btn-primary">Submit</button>
							<button type="button" id="save" name="save" class="btn btn-primary">Guardar</button>
							<button type="button" id="sendJMS" name="sendJMS" class="btn btn-primary">Enviar Confirmaci&oacute;n</button>
							
						</form>
					</div>
				</div>
				
			</div>
		</div>		
	</div>
	<div id="frm" style="visibility: hidden; height: 0px;">
		<div class="form-group">
	        <label class="control-label" for="serviceScope">CNOC ID:</label>
	        <div class="input-group">
	            <span class="input-group-addon">*</span>
	            <input class="form-control cnocId" placeholder="CNOC ID" name="cnocId" id="cnocId" type="text"/>
	        </div>
	    </div>
		<div class="form-group">
	        <label class="control-label" for="modelP">Error Detail:</label>
	        <div class="input-group">
	            <span class="input-group-addon">*</span>
	            <!--<input class="form-control" placeholder="Model" name="modelP" id="modelP" type="text" required/>-->
	            <textarea class="form-control descError" rows="10" id="descError"></textarea>
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
    <script type="text/javascript" src="js/drawElementsMainConfig.js"></script>
    
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
    	/*  ************************************************************  */
    	$('#toggleNetworkC').bootstrapToggle('on');
    	$('#toggleCircuit').bootstrapToggle('on');
    	
    	$('#toggleCircuit').change(function() {
    	      console.log($(this).prop('checked'));
    	      if($(this).prop('checked') === false){
    	    	  $('#toggleNetworkC').bootstrapToggle('on');
    	      }
    	      drawElementsMainConfig.flagAlertNameCircuit = $(this).prop('checked');
		});
    	
    	$('#toggleNetworkC').change(function() {
  	      	console.log($(this).prop('checked'));
	  	    if($(this).prop('checked') === false){
	  	    	$('#toggleCircuit').bootstrapToggle('on');
			}
	  	    
	  	    drawElementsMainConfig.flagAlertNameNC = $(this).prop('checked');
	  	    
		});
    	
    	/*  ************************************************************  */
    	
    	$('form').trigger("reset");
    	
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
		    	
		    	cnocConnector.service1 = serviceRetrieveInbox;
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
				cnocConnector.sendJMS = serviceSendJMS;
				cnocConnector.serviceSubtype = serviceSubtype;
				cnocConnector.serviceCatFunction = serviceFunction;
	
		    }
		});
		
        $("#addModulePart").on("click", function() {
        	if($('#modulePartNo').val() != "" && $('#moduleSerialNo').val() != ""){
        		$("#tableModulePart").append("<tr><td>"+$('#modulePartNo').val()+"</td><td>"+$('#moduleSerialNo').val()+"</td></tr>");	
        	}else{
        		alert("Se requieren datos en Part No. y Serial No.");
        	}			
		});
               
        
        /*******************************************************************************************************/
        /*   SEND JMS   */
        $("#sendJMS").on("click", function() {
        	
        	var modal = bootbox.dialog({
    			message: $("#frm").html(),
    			title: "Send JMS ",
    			buttons: [
					{
						label: "Send Success",
	    				className: "btn btn-success",
	    				callback: function(){
	    					var cnocId = (modal.find(".cnocId")).val();
	    					if(cnocId==""){
	    						alert("Add CNOC ID");
	    					}else{
	    						
	    					}
	    					return false;
	    				}					
	    			},{
    					label: "Send Error",
    					className: "btn btn-danger",
    					callback: function() {
    						var error = (modal.find(".descError")).val();
    						if(error == ""){
    							alert("Add Error Detail");    							
    						}else{
    							
    						}    		
    						return false;
    					}	    			
    			}, {
    				label: "Close",
    				className: "btn btn-default",
    				callback: function() { }
    			}],show: false,
    			onEscape: function() {
    				modal.modal("hide");
    			}
        	});
        	modal.modal("show");
        	/*cnocConnector.invokeMashup(cnocConnector.sendJMS, 
        			{"cnocImpact":"Order_ID", 
        				"cnocPriority":"Equip_Type",
        				"cnocSeverity":"Axs_Link_ID",
        				"cnocSupport3":"Gateway",
        				"cnocUrgency":"Equip_ID",
        				"description":"FAIL - Descripcion de mensaje de error",
        				"reference":"Set Key"}, 
        			drawElementsMainConfig.sendJMS, null, null);*/
		});
        
        
        
        /*******************************************************************************************************/
        /* COMBOBOX VIEW */
        
        $("#subtypeDC").multiselect();        
        $("#istatusDC").multiselect();
        $("#interfaceType").multiselect();
        $("#serviceType").multiselect();
        $("#linkBalancertype").multiselect();
        $("#subtypeBS").multiselect();
        $("#serviceScope").multiselect();
        $("#owner").multiselect();
        $("#scope").multiselect();
        $("#subType").multiselect();
        
        /*******************************************************************************************************/
        /* FUNCIONALIDAD PARA EL requiredModule DE NETWORK COMPONENT */
        $("#requiredModule").multiselect({
        	onChange: function(element, checked) {
        		$('option:selected', $('#requiredModule')).each(function() {
        			if($(this).val() === "NO"){
        				$(".requiredModule").hide();	
        			}else if($(this).val() === "YES"){
        				$(".requiredModule").show();	
        			}
        		});
        	}
        });
        
        drawElementsMainConfig.utilrequiredModule();
        
        /*******************************************************************************************************/
        /* FUNCIONALIDAD PARA EL Required Port DE CIRCUIT */
        
        $("#requiredPort").multiselect({
        	onChange: function(element, checked) {
        		$('option:selected', $('#requiredPort')).each(function() {
        			if($(this).val() === "NO"){
        				$(".requiredPort").hide();	
        			}else if($(this).val() === "YES"){
        				$(".requiredPort").show();	
        			}
        		});
        	}
        });
        
        drawElementsMainConfig.utilrequiredPort();
        
        /*******************************************************************************************************/
        /* FUNCIONALIDAD PARA EL serviceQuality DE CIRCUIT */
        $("#serviceQuality").multiselect({
        	onChange: function(element, checked) {
        		$('option:selected', $('#serviceQuality')).each(function() {
        			if($(this).val() === "V2.5"){
        				$(".qos").show();
        				$(".qosFields").attr("required", true);
        				
        				$(".profileC").hide();
        				$(".profileFields").attr("required", false);
        			}else if($(this).val() === "V3.0"){        				
        				$(".profileC").show();
        				$(".profileFields").attr("required", true);

        				
        				$(".qos").hide();
        				$(".qosFields").attr("required",false);        				
        			}else{        				
        				$(".qos").hide();
        				$(".qosFields").attr("required",false);
        				
        				$(".profileC").hide();
        				$(".profileFields").attr("required",false);
        				
        			}
        		});
        	}
        });

       drawElementsMainConfig.utilServiceQuality();
        
        /*********************************************************************************************************/
  
        $("#save").on("click", function() {
        	
        	$( "#container").mask("Waiting... Save Location");
        	
        	var networkCode  = 			$('#networkCode').val(); //"networkCode";
        	var company  = 				$('#company').val(); //"company";
        	var typeChange  = 			$('#typeChange').val(); //"typeChange";
        	var fechaImple = 			$('#fechaImple').val(); //"fechaImple";
         	//var unique_identifier  = 	$('#unique_identifier').val(); //"typeChange";
        	
        	/************************************************************************************/
        	/*  DATA LOCATION INBOX  */
        	var location  = 			$('#location').val(); //"location";
        	var locationName  = 		$('#locationName').val(); //"locationName";
        	var customerSiteAlias  =	$('#customerSiteAlias').val(); //"customerSiteAlias";
        	var street  = 				$('#street').val(); //"street";
        	var outsideNum  = 			$('#outsideNum').val(); //"outsideNum";
        	var insideNum  = 			$('#insideNum').val(); //"insideNum";
        	var zip  =	 				$('#zip').val(); //"zip";
        	var district  = 			$('#delMun').val(); //"district";
        	var country  = 				$('#listCountry').val(); //"country";
        	var state  = 				$('#listState').val(); //"state";
        	var city  = 				$('#listCity').val(); //"city";
        	var neighborhood  = 		$('#neighborhood').val(); //"neighborhood";            	
        	var contact  = 				$('#contact').val(); //"contact";
        	var phoneContact  =			$('#phoneContact').val(); //"phoneContact";
        	var mailContact  =			$('#mailContact').val(); //"mailContact";
        	var nodeTypeL =				$('#nodeTypeL').val(); //"nodeType";            	
        	
        	
        	var parametersL =  {
        		"company":company,
        		"network_code":networkCode,
        		"type_change":typeChange,
        		"location":location,
        		"location_name":locationName,
        		"logical_name":locationName,
        		"date_request":fechaImple,
        		//"unique_identifier":unique_identifier,
        		
        		"type":"LOCATION",
        		"street":street,            		            		
        		"outside_num":outsideNum,
        		"inside_num":insideNum,
        		"country":country,
        		"state":state,
        		"city":city,
        		"district":district,
        		"zip":zip,            		
        		"contact":contact,
        		"mail_contact":mailContact,
        		"phone_contact":phoneContact,
        		"customer_site_alias":customerSiteAlias,
        		"neighborhood": neighborhood,
        		"node_type": nodeTypeL
        		};
        	
        	if(drawElementsMainConfig.rowL){            		
        		console.log("update Location");
        		cnocConnector.invokeMashup(cnocConnector.service4, parametersL, drawElementsMainConfig.insertConfInbox, null, null);
        	}else{
        		console.log("insert Location");
        		cnocConnector.invokeMashup(cnocConnector.service3, parametersL, drawElementsMainConfig.insertConfInbox, null, null);	
        	}
        	/*************************************************************************************/
        	
        	$( "#container").mask("Waiting... Save Circuit");
        	
        	/*  DATA LOCATION CIRCUIT  */
        	var vendorDC  = 			$('#vendorDC').val(); //"vendorDC";
        	var typeDC  = 				$('#typeDC').val(); //"typeDC";
        	var subtypeDC  = 			$('#subtypeDC').val(); //"subtypeDC";
        	var istatusDC  = 			$('#istatusDC').val(); //"istatusDC";        
        	var manufacturerDC  = 		$('#manufacturerDC').val(); //"manufacturerDC";        	
        	var alertNameDC  = 			$('#alertNameDC').val(); //"alertNameDC";
        	var nsr  = 					$('#nsr').val(); //"nsr";
        	//var linkScheme  = 			$('#linkScheme').val(); //"linkScheme";
        	var linkBalancertype  = 	$('#linkBalancertype').val(); //"linkBalancertype";
        	//var bandwidth  = 			$('#bandwidth').val(); //"bandwidth";
        	var bwUnit  = 				$('#bwUnit').val(); //"bwUnit";
        	var serviceType  = 			$('#serviceType').val(); //"serviceType";
        	var requiredPort  = 		$('#requiredPort').val(); //"requiredPort";
        	var peName  = 				$('#peName').val(); //"peName";
        	var interfaceName  = 		$('#interfaceName').val(); //"interfaceName";
        	var interfaceType  = 		$('#interfaceType').val(); //"interfaceType";
        	var ipPe  = 				$('#ipPe').val(); //"ipPe";
        	//var ipWanDC  = 				$('#ipWanDC').val(); //"ipPe";
        	var vrfVlan  = 				$('#vrfVlan').val(); //"vrfVlan";            	
        	var serviceQuality  = 		$('#serviceQuality').val(); //"serviceQuality";
        	var profile  = 				$('#profile').val(); //"profile";
        	var q1  = 					$('#q1').val(); //"q1";
        	var q2  = 					$('#q2').val(); //"model";
        	var q3  = 					$('#q3').val(); //"model";            	
        	
        	var problemPriorityDC  = 	drawElementsMainConfig.typeLocation[0];
        	var defaultImpactDC  = 		drawElementsMainConfig.typeLocation[1];
        	var allowSubscriptionDC  = 	drawElementsMainConfig.typeLocation[2];
        	
        	
        	$("#tableReferenciasGConf tr").each(function (row, tr) {
        		console.log($(tr).find('td:eq(0)').text()); 
       			console.log($(tr).find('td:eq(1)').text());
       			console.log($(tr).find('td:eq(2)').text());
       			console.log($(tr).find('td:eq(3)').text());
       			
       			var linkScheme  = $(tr).find('td:eq(3)').text(); //"linkScheme";
       			var bandwidth   = $(tr).find('td:eq(2)').text();
       			var ipWanDC  	= $(tr).find('td:eq(1)').text();
       			var unique_identifier = $(tr).find('td:eq(0)').text();
       			
       			var parametersDC = {
            		"company":company,
            		"network_code":networkCode,
            		"type_change":typeChange,
            		"location":location,
            		"location_name":locationName,
            		"logical_name":locationName,
            		"unique_identifier":unique_identifier,
            		"date_request":fechaImple,
            		
            		"vendor":vendorDC,
            		"type":typeDC,
            		"subtype":subtypeDC,
            		"istatus":istatusDC,
            		"problema_priority":problemPriorityDC,
            		"manufacturer":manufacturerDC,
            		"default_impact":defaultImpactDC,
            		"allow_subscription":allowSubscriptionDC,
            		"alert_name":alertNameDC,
            		"nsr":nsr,
            		"link_scheme":linkScheme,
            		"link_balancertype":linkBalancertype,
            		"bandwidth":bandwidth,
            		"bw_unit":bwUnit,
            		"service_type":serviceType,
            		"required_port":requiredPort,
            		"pe_name":peName,
            		"interface_name":interfaceName,
            		"interface_type":interfaceType,
            		"ip_pe":ipPe,
            		"vrf_vlan":vrfVlan,
            		"service_quality":serviceQuality,
            		"profile":profile,
            		"q1":q1,
            		"q2":q2,
            		"q3":q3,
            		"ip_wan":ipWanDC
            		};
        	
        	
	        	if(drawElementsMainConfig.rowDC){            		
	        		console.log("update CIRCUIT");
	        		cnocConnector.invokeMashup(cnocConnector.service11, parametersDC, drawElementsMainConfig.insertConfInbox, null, null);
	        	}else{
	        		console.log("insert CIRCUIT");
	        		cnocConnector.invokeMashup(cnocConnector.service3, parametersDC, drawElementsMainConfig.insertConfInbox, null, null);	
	        	}
       			
        	});
        	/*************************************************************************************/
        	/*  DATA NETWORK COMPONENT  */
			
        	$( "#container").mask("Waiting... Save Network Component");
        	
        	var modulePartNoData = "";
			var moduleSerialNoData = "";

        	$("#tableModulePart tr").each(function (row, tr) {
        		if(row > 0){
            		modulePartNoData = modulePartNoData + $(tr).find('td:eq(0)').text()+",";
            		moduleSerialNoData += $(tr).find('td:eq(1)').text()+",";
        		} 
	        });
        	
        	
        	var model  = 			$('#model').val(); //"model";
        	var typeDNC  = 			$('#typeDNC').val(); //"typeDNC";
        	var serialNo  =			$('#serialNo').val(); //"serialNo";
        	//var istatus  = 			$('#istatus').val(); //"istatus";
        	var subtype  = 			$('#subType').val(); //"subtype";
        	//var problemPriority  = 	$('#problemPriority').val(); //"problemPriority";
        	var manufacturer  = 	$('#manufacturer').val(); //"manufacturer";
        	//var allowSubscription  =$('#allowSubscription').val(); //"allowSubscription";
        	var ipWan  = 			$('#ipWan').val(); //"ipWan";
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
        	//var modulePartNo  = 	$('#modulePartNo').val(); //"modulePartNo"; // array
        	//var moduleSerialNo  = 	$('#moduleSerialNo').val(); //"moduleSerialNo"; // array
			var siteCategory = 		$('#dashClass').val(); //dashboard classification
        	var problemPriority  = drawElementsMainConfig.typeLocation[0];
        	//var defaultImpact = drawElementsMainConfig.typeLocation[1];	
        	var allowSubscription  = drawElementsMainConfig.typeLocation[2];
        	
        	var parametersNC = {
        			"company":company,
            		"network_code":networkCode,
            		"type_change":typeChange,
            		"location":location,
            		"location_name":locationName,
            		"logical_name":locationName,
            		"date_request":fechaImple,
            		//"unique_identifier":unique_identifier,
            		
            		"model":model,
            		"type":typeDNC,
            		"serial_no":serialNo,
            		"istatus":istatusDC,
            		"subtype":subtype,
            		"problema_priority":problemPriority,
            		"manufacturer":manufacturer,
            		"allow_subscription":allowSubscription,
            		"ip_wan":ipWan,
            		"monitoring_profile":monitoringProfile,
            		"monitor_ip":monitoringIp,
            		"ip_loopback":ipLoopback,
            		"ip_lan":ipLan,
            		"os_version":osVersion,
            		"os_release":osRelease,
            		"dependence":dependence,
            		"scope":scope,
            		"owner":owner,
            		"ci_name":hostname,
            		"site_category":siteCategory,
            		"required_module":requiredModule,
            		"module_part_no":modulePartNoData, //array
            		"module_serial_no":moduleSerialNoData  //array          		
            		//"hostname": hostname, // no esta en inbox
        	};
        	
  	      	
        	if(drawElementsMainConfig.rowNC){            		
        		console.log("update NetworkComponent");
        		cnocConnector.invokeMashup(cnocConnector.service4, parametersNC, drawElementsMainConfig.insertConfInbox, null, null);
        	}else{
        		console.log("insert NetworkComponent");
        		cnocConnector.invokeMashup(cnocConnector.service3, parametersNC, drawElementsMainConfig.insertConfInbox, null, null);	
        	}
	
        	
        	
        	/*************************************************************************************/
        	/*  DATA LOCATION BIZSERVICE  */
        	
        	$( "#container").mask("Waiting... Save BizService");
        	
        	var typeBS  = 			$('#typeBS').val(); //"typeBS";
        	//var istatusBS  = 		$('#istatusBS').val(); //"istatusBS";
        	var subtypeBS  = 		$('#subtypeBS').val(); //"subtypeBS";
        	//var problemPriorityBS  =$('#problemPriorityBS').val(); //"problemPriorityBS";
        	//var defaultImpactBS  = 	$('#defaultImpactBS').val(); //"defaultImpactBS";
        	//var alertNameBS  = 		$('#alertNameBS').val(); //"alertNameBS";
        	var serviceName  = 		$('#serviceName').val(); //"serviceName";
        	var serviceScope = 		$('#serviceScope').val(); //"typeBS";
        	var catFunction  =		$('#functionBS').val(); // function 
        	
        	var problemPriorityBS  = drawElementsMainConfig.typeLocation[0];
        	var defaultImpactBS = drawElementsMainConfig.typeLocation[1];	
        	//var allowSubscription  = drawElementsMainConfig.typeLocation[2];
        	
        	var parametersBS = {
        			"company":company,
            		"network_code":networkCode,
            		"type_change":typeChange,
            		"location":location,
            		"location_name":locationName,
            		"logical_name":locationName,
            		"date_request":fechaImple,
            		//"unique_identifier":unique_identifier,
            		"vendor": catFunction, // Se reutiliza el campo de nsr para function
            		"type":typeBS,
            		"istatus":istatusDC,
            		"subtype":subtypeBS,
            		"problema_priority":problemPriorityBS,
            		"default_impact":defaultImpactBS,
            		//"alert_name":alertNameBS,
            		"service_name":serviceName,
            		"scope_biz":serviceScope
        	};
        	
        	
        	
        	if(drawElementsMainConfig.rowBS){            		
        		console.log("update BS");
        		cnocConnector.invokeMashup(cnocConnector.service4, parametersBS, drawElementsMainConfig.insertConfInbox, null, null);
        	}else{
        		console.log("insert BS");
        		cnocConnector.invokeMashup(cnocConnector.service3, parametersBS, drawElementsMainConfig.insertConfInbox, null, null);	
        	}
        	
        	
        	/*************************************************************************************/
        	/*  DATA LOCATION PERIPHERAL  */
        	
        	$( "#container").mask("Waiting... Save Peripherial");
        	
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
        			"company":company,
            		"network_code":networkCode,
            		"type_change":typeChange,
            		"location":location,
            		"location_name":locationName,
            		"logical_name":locationName,
            		"date_request":fechaImple,
            		//"unique_identifier":unique_identifier,
            		
            		"model":modelP,
            		"serial_no":serialNoP,
            		"type":typeP,
            		"istatus":istatusP,
            		"subtype":subtypeP,
            		"problema_priority":problemPriorityP,
            		"manufacturer":manufacturerP,
            		"assignment":assignmentP,
            		"extension":extensionP,
            		"default_impact":defaultImpactP,
            		"ip_wan":ipWanP,
            		"alert_name":alertNameP,
            		"monitoring_profile":monitoringProfileP,
            		"mac_imei":macImei
        	};
        	
        	/*
        	if(drawElementsMainConfig.rowP){            		
        		console.log("update P");
        		cnocConnector.invokeMashup(cnocConnector.service4, parametersBS, drawElementsMainConfig.insertConfInbox, null, null);
        	}else{
        		console.log("insert P");
        		cnocConnector.invokeMashup(cnocConnector.service3, parametersBS, drawElementsMainConfig.insertConfInbox, null, null);	
        	}
			*/
			
        	$( "#container").unmask();
        });
        
/*    END SAVE DATA    */        
/*********************************************************************************************************************************************/
/*    SUBMIT DATA FROM SERVICE    */
        
        $('form').validate({
        	ignore: false,
            errorClass: "error text-warning",
            validClass: "success text-success",
            /*rules: {
            	modulePartNo: "required"
            },
            */
            highlight: function(element, errorClass) {
                $(element).closest('.form-group').addClass('has-error');
            },
            
            unhighlight: function(element, errorClass) {
                $(element).closest('.form-group').removeClass('has-error');
            },
            errorElement: 'span',
            errorClass: 'help-block',
            errorPlacement: function(error, element) {
                if(element.parent('.input-group').length) {
                    error.insertAfter(element.parent());
                } else {
                    error.insertAfter(element);
                }
            },
            invalidHandler: function(e,validator) {
                for (var i=0;i<validator.errorList.length;i++){  
                	console.log("validator: "+validator.errorList[i].element);
                    $(validator.errorList[i].element).parents('.panel-collapse.collapse').collapse('show');
                }
            },submitHandler: function(form) {
            	console.log(form);
				var alertName = ((new Date().getTime())/1000).toFixed(0);
            	drawElementsMainConfig.uniqueIdentifierAll = "";
       			drawElementsMainConfig.ipWanAll = "";

            	var networkCode  = 			$('#networkCode').val(); //"networkCode";
            	var company  = 				$('#company').val(); //"company";
            	var typeChange  = 			$('#typeChange').val(); //"typeChange";
            	
            	drawElementsMainConfig.locationSM(networkCode, company, typeChange, alertName);

            }
        });
        
        drawElementsMainConfig.init();     
        
    });
    
    </script>
</body>
</html>