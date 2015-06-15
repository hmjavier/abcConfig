<?xml version="1.0" encoding="US-ASCII" ?>
<%@ page language="java" contentType="text/html; charset=US-ASCII"
    pageEncoding="US-ASCII"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII" />
	<title>CNOC ... ABC v1.0</title>
	
	<!-- Bootstrap Core CSS -->
	<!-- <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"/>-->
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css"/>
	<link rel="stylesheet" type="text/css" href="css/bootstrap-multiselect.css"/>
	<link rel="stylesheet" type="text/css" href="css/jquery.timepicker.css"/>
	<link rel="stylesheet" type="text/css" href="css/datepicker.css"/>
	<link rel="stylesheet" type="text/css" href="css/dataTables.bootstrap.css"/>

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
				
				<div id="containerFormLocation">
					<div id="formLocationC" >
						<form id= "formLocation">
							<fieldset>
							<legend>Datos Location:</legend>
							<div class="row">
								<div class="col-lg-3">
									<div class="form-group">
								        <label class="control-label" for="location">Site:</label>
								        <div class="input-group">
								            <span class="input-group-addon">*</span>
								            <input class="form-control" placeholder="Site" name="location" id="location" type="text" required/>
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
								        <label class="control-label" for="">Node Type:</label>
								        <!-- <div class="input-group">
								            <span class="input-group-addon">*</span>
								            <select id='nodeType' name='nodeType' style='width:100%; margin-left: 5%;'>
								            	<option  value=''>None Selected</option>
								            	<option  value='CORPORATE SITE'>CORPORATE SITE</option>
								            	<option  value='BRANCH'>BRANCH</option>
								            	<option  value='REGIONAL BRANCH'>REGIONAL BRANCH</option>
								            </select>
								            
								        </div>-->
								    </div>
								    <div class="form-group">
								        <label class="control-label" for="street">Street:</label>
								        <div class="input-group">
								            <span class="input-group-addon">*</span>
								            <input class="form-control" placeholder="Street" name="street" id="street" type="text" required/>
								        </div>
								    </div>
								</div>
								<!-- / col-lg-3 -->
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
								    <div class="form-group">
								        <label class="control-label" for="district">District:</label>
								        <div class="input-group">
								            <span class="input-group-addon">*</span>
								            <input class="form-control" placeholder="District" name="district" id="district" type="text" />
								        </div>
								    </div>
								    <div class="form-group">
								        <label class="control-label" for="Country:">Country:</label>
								        <div class="input-group">
								            <span class="input-group-addon">*</span>
								            <input class="form-control" placeholder="Country:" name="country" id="country" type="text" required/>
								        </div>
								    </div>
								</div>
								<!-- / col-lg-3 -->
								<div class="col-lg-3">
								    
								    <div class="form-group">
								        <label class="control-label" for="state">Sate:</label>
								        <div class="input-group">
								            <span class="input-group-addon">*</span>
								            <input class="form-control" placeholder="State" name="state" id="state" type="text" required/>
								        </div>
								    </div>
								    <div class="form-group">
								        <label class="control-label" for="city">City:</label>
								        <div class="input-group">
								            <span class="input-group-addon">*</span>
								            <input class="form-control" placeholder="City" name="city" id="city" type="text" required/>
								        </div>
								    </div>
								    <div class="form-group">
								        <label class="control-label" for="neighborhood">Neighborhood:</label>
								        <div class="input-group">
								            <span class="input-group-addon">*</span>
								            <input class="form-control" placeholder="Neighborhood" name="neighborhood" id="neighborhood" type="text" />
								        </div>
								    </div>
								    <div class="form-group">
								        <label class="control-label" for="company">Company:</label>
								        <div class="input-group">
								            <span class="input-group-addon">*</span>
								            <input class="form-control" placeholder="Company" name="company" id="company" type="text" required/>
								        </div>
								    </div>						    
								</div>
								<!-- / col-lg-3 -->
								<div class="col-lg-3">
								    
								    <div class="form-group">
								        <label class="control-label" for="networkCode">Network Code:</label>
								        <div class="input-group">
								            <span class="input-group-addon">*</span>
								            <input class="form-control" placeholder="Network Code" name="networkCode" id="networkCode" type="text" required/>
								        </div>
								    </div>
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
								<!-- / col-lg-3 -->
							</div>	
							
							
							<!-- /.row -->
							</fieldset>
							<!-- /.fieldset -->
						</form>
					</div>
				</div>
				<!-- /  end FormLocation -->
				<!-- /  end containerFormLocation -->
				
				<div id="containerFormDevice">
					<div id="formDeviceC" >
						<form id="formDevice">
							<fieldset>
							<legend>Datos Network Component:</legend>
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
								    <div class="form-group">
								        <label class="control-label" for="istatus">Istatus:</label>
								        <div class="input-group">
								            <span class="input-group-addon">*</span>
								            <input class="form-control" placeholder="Istatus" name="istatus" id="istatus" type="text" required/>
								        </div>
								    </div>
								    <div class="form-group">
								        <label class="control-label" for="subtype">Subtype:</label>
								        <div class="input-group">
								            <span class="input-group-addon">*</span>
								            <input class="form-control" placeholder="Subtype" name="subtype" id="subtype" type="text" required/>
								        </div>
								    </div>
								    <div class="form-group">
								        <label class="control-label" for="locationCode">Location Code:</label>
								        <div class="input-group">
								            <span class="input-group-addon">*</span>
								            <input class="form-control" placeholder="Location Code" name="locationCode" id="locationCode" type="text" required/>
								        </div>
								    </div>
								    <div class="form-group">
								        <label class="control-label" for="problemPriority">Problem Priority:</label>
								        <div class="input-group">
								            <span class="input-group-addon">*</span>
								            <input class="form-control" placeholder="Problem Priority" name="problemPriority" id="problemPriority" type="text" required/>
								        </div>
								    </div>
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
								    <div class="form-group">
								        <label class="control-label" for="allowSubscription">Allow Subscription:</label>
								        <div class="input-group">
								            <span class="input-group-addon">*</span>
								            <input class="form-control" placeholder="Allow Subscription" name="allowSubscription" id="allowSubscription" type="text" required/>
								        </div>
								    </div>
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
								    <div class="form-group">
								        <label class="control-label" for="ipLoopback">IP Loopback:</label>
								        <div class="input-group">
								            <span class="input-group-addon">*</span>
								            <input class="form-control" placeholder="IP Loopback" name="ipLoopback" id="ipLoopback" type="text" required/>
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
								        <label class="control-label" for="hostname">Hostname:</label>
								        <div class="input-group">
								            <span class="input-group-addon">*</span>
								            <input class="form-control" placeholder="Hostname" name="hostname" id="hostname" type="text" required/>
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
								        <label class="control-label" for="scope">Scope:</label>
								        <div class="input-group">
								            <span class="input-group-addon">*</span>
								            <input class="form-control" placeholder="Scope" name="scope" id="scope" type="text" required/>
								        </div>
								    </div>
								    <div class="form-group">
								        <label class="control-label" for="scope">Owner:</label>
								        <div class="input-group">
								            <span class="input-group-addon">*</span>
								            <input class="form-control" placeholder="Owner" name="owner" id="owner" type="text" required/>
								        </div>
								    </div>
								    <div class="form-group">
								        <label class="control-label" for="requiredModule">Required Module:</label>
								        <div class="input-group">
								            <span class="input-group-addon">*</span>
								            <input class="form-control" placeholder="requiredModule" name="requiredModule" id="requiredModule" type="text" required/>
								        </div>
								    </div>
								    <div class="form-group">
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
								    </div>
								</div>
								<!-- / col-lg-3 -->
							</div>
							<!-- / row -->
							</fieldset>
							
						</form>
						<!-- /  end formDevice -->
					</div>
					<!-- /  end formDeviceC -->
				</div>
				<!-- /  end containerFormDevice -->
				
				<div id="containerFormCircuit">
					<div id="formCircuitC" >
						<form id="formCircuit">
							<fieldset>
							<legend>Datos Circuit:</legend>
							<div class="row">
								<div class="col-lg-3">
									<div class="form-group">
								        <label class="control-label" for="vendorDC">Vendor:</label>
								        <div class="input-group">
								            <span class="input-group-addon">*</span>
								            <input class="form-control" placeholder="Vendor" name="vendorDC" id="vendorDC" type="text" required/>
								        </div>
								    </div>
								    <div class="form-group">
								        <label class="control-label" for="typeDC">Type:</label>
								        <div class="input-group">
								            <span class="input-group-addon">*</span>
								            <input class="form-control" placeholder="Type" name="typeDC" id="typeDC" type="text" required/>
								        </div>
								    </div>
								    <div class="form-group">
								        <label class="control-label" for="istatusDC">Istatus:</label>
								        <div class="input-group">
								            <span class="input-group-addon">*</span>
								            <input class="form-control" placeholder="Istatus" name="istatusDC" id="istatusDC" type="text" required/>
								        </div>
								    </div>
								    <div class="form-group">
								        <label class="control-label" for="problemPriorityDC">Problem Priority:</label>
								        <div class="input-group">
								            <span class="input-group-addon">*</span>
								            <input class="form-control" placeholder="Problem Priority" name="problemPriorityDC" id="problemPriorityDC" type="text" required/>
								        </div>
								    </div>
								    <div class="form-group">
								        <label class="control-label" for="manufacturerDC">Manufacturer:</label>
								        <div class="input-group">
								            <span class="input-group-addon">*</span>
								            <input class="form-control" placeholder="Manufacturer" name="manufacturerDC" id="manufacturerDC" type="text" required/>
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
								    </div>
								</div>
								<!-- / col-lg-3 -->
								<div class="col-lg-3">
								    <div class="form-group">
								        <label class="control-label" for="alertNameDC">Alert Name:</label>
								        <div class="input-group">
								            <span class="input-group-addon">*</span>
								            <input class="form-control" placeholder="Alert Name" name="alertNameDC" id="alertNameDC" type="text" required/>
								        </div>
								    </div>
								    <div class="form-group">
								        <label class="control-label" for="nsr">NSR:</label>
								        <div class="input-group">
								            <span class="input-group-addon">*</span>
								            <input class="form-control" placeholder="NSR" name="nsr" id="nsr" type="text" required/>
								        </div>
								    </div>
								    <div class="form-group">
								        <label class="control-label" for="linkScheme">Link Scheme:</label>
								        <div class="input-group">
								            <span class="input-group-addon">*</span>
								            <input class="form-control" placeholder="Link Scheme" name="linkScheme" id="linkScheme" type="text" required/>
								        </div>
								    </div>
								    <div class="form-group">
								        <label class="control-label" for="linkBalancertype">Link Balancer type:</label>
								        <div class="input-group">
								            <span class="input-group-addon">*</span>
								            <input class="form-control" placeholder="Link Balancer type" name="linkBalancertype" id="linkBalancertype" type="text" required/>
								        </div>
								    </div>
								    <div class="form-group">
								        <label class="control-label" for="bandwidth">Band Width:</label>
								        <div class="input-group">
								            <span class="input-group-addon">*</span>
								            <input class="form-control" placeholder="Band Width" name="bandwidth" id="bandwidth" type="text" required/>
								        </div>
								    </div>
								    <div class="form-group">
								        <label class="control-label" for="bwUnit">BW Unit:</label>
								        <div class="input-group">
								            <span class="input-group-addon">*</span>
								            <input class="form-control" placeholder="BW Unit" name="bwUnit" id="bwUnit" type="text" required/>
								        </div>
								    </div>
								    <div class="form-group">
								        <label class="control-label" for="serviceType">Service Type:</label>
								        <div class="input-group">
								            <span class="input-group-addon">*</span>
								            <input class="form-control" placeholder="serviceType" name="serviceType" id="serviceType" type="text" required/>
								        </div>
								    </div>	
								</div>
								<!-- / col-lg-3 -->
								<div class="col-lg-3">								    								   
								    <div class="form-group">
								        <label class="control-label" for="vendor">Vendor Circuit:</label>
								        <div class="input-group">
								            <span class="input-group-addon">*</span>
								            <input class="form-control" placeholder="Vendor Circuit" name="vendor" id="vendor" type="text" required/>
								        </div>
								    </div>
								    <div class="form-group">
								        <label class="control-label" for="requiredPort">Required Port:</label>
								        <div class="input-group">
								            <span class="input-group-addon">*</span>
								            <input class="form-control" placeholder="Required Port" name="requiredPort" id="requiredPort" type="text" required/>
								        </div>
								    </div>
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
								    <div class="form-group">
								        <label class="control-label" for="interfaceType">Interface Type:</label>
								        <div class="input-group">
								            <span class="input-group-addon">*</span>
								            <input class="form-control" placeholder="Interface Type" name="interfaceType" id="interfaceType" type="text" required/>
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
								<!-- / col-lg-3 -->
								<div class="col-lg-3">								    
								    <div class="form-group">
								        <label class="control-label" for="vrfVlan">VRF Vlan:</label>
								        <div class="input-group">
								            <span class="input-group-addon">*</span>
								            <input class="form-control" placeholder="VRF Vlan" name="vrfVlan" id="vrfVlan" type="text" required/>
								        </div>
								    </div>
								    <div class="form-group">
								        <label class="control-label" for="serviceQuality">Service Quality:</label>
								        <div class="input-group">
								            <span class="input-group-addon">*</span>
								            <input class="form-control" placeholder="Service Quality" name="serviceQuality" id="serviceQuality" type="text" required/>
								        </div>
								    </div>
								    <div class="form-group">
								        <label class="control-label" for="profile">Profile:</label>
								        <div class="input-group">
								            <span class="input-group-addon">*</span>
								            <input class="form-control" placeholder="Profile" name="profile" id="profile" type="text" required/>
								        </div>
								    </div>
								    <div class="form-group">
								        <label class="control-label" for="q1">Q1:</label>
								        <div class="input-group">
								            <span class="input-group-addon">*</span>
								            <input class="form-control" placeholder="Q1" name="q1" id="q1" type="text" required/>
								        </div>
								    </div>
								    <div class="form-group">
								        <label class="control-label" for="q2">Q2:</label>
								        <div class="input-group">
								            <span class="input-group-addon">*</span>
								            <input class="form-control" placeholder="Q2" name="q2" id="q2" type="text" required/>
								        </div>
								    </div>
								    <div class="form-group">
								        <label class="control-label" for="q3">Q3:</label>
								        <div class="input-group">
								            <span class="input-group-addon">*</span>
								            <input class="form-control" placeholder="Q3" name="q3" id="q3" type="text" required/>
								        </div>
								    </div>
								</div>
								<!-- / col-lg-3 -->
							</div>
							<!-- / row -->
							</fieldset>
						</form>
						<!-- /  end formCircuit -->
					</div>
					<!-- /  end formCircuitC -->
				</div>
				<!-- /  end containerFormCircuit -->
	
				<div id="containerFormBizservice">
					<div id="containerFormBizserviceC" >
						<form id="formBizservice">
							<fieldset>
							<legend>Datos Bizservice:</legend>
							<div class="row">
								<div class="col-lg-3">	
									<div class="form-group">
								        <label class="control-label" for="typeBS">Type:</label>
								        <div class="input-group">
								            <span class="input-group-addon">*</span>
								            <input class="form-control" placeholder="Type" name="typeBS" id="typeBS" type="text" required/>
								        </div>
								    </div>
								    <div class="form-group">
								        <label class="control-label" for="istatusBS">Istatus:</label>
								        <div class="input-group">
								            <span class="input-group-addon">*</span>
								            <input class="form-control" placeholder="Istatus" name="istatusBS" id="istatusBS" type="text" required/>
								        </div>
								    </div>
								    <div class="form-group">
								        <label class="control-label" for="subtypeBS">Subtype:</label>
								        <div class="input-group">
								            <span class="input-group-addon">*</span>
								            <input class="form-control" placeholder="Subtype" name="subtypeBS" id="subtypeBS" type="text" required/>
								        </div>
								    </div>
								</div>
								<!-- / col-lg-3 -->
								<div class="col-lg-3">								    
								    <div class="form-group">
								        <label class="control-label" for="locationCodeBS">Location Code:</label>
								        <div class="input-group">
								            <span class="input-group-addon">*</span>
								            <input class="form-control" placeholder="Location Code" name="locationCodeBS" id="locationCodeBS" type="text" required/>
								        </div>
								    </div>
								    <div class="form-group">
								        <label class="control-label" for="problemPriorityBS">Problem Priority:</label>
								        <div class="input-group">
								            <span class="input-group-addon">*</span>
								            <input class="form-control" placeholder="Problem Priority" name="problemPriorityBS" id="problemPriorityBS" type="text" required/>
								        </div>
								    </div>
								</div>
								<!-- / col-lg-3 -->
								<div class="col-lg-3">								    	
								    <div class="form-group">
								        <label class="control-label" for="defaultImpactBS">Default Impact:</label>
								        <div class="input-group">
								            <span class="input-group-addon">*</span>
								            <input class="form-control" placeholder="Default Impact" name="defaultImpactBS" id="defaultImpactBS" type="text" required/>
								        </div>
								    </div>
								    <div class="form-group">
								        <label class="control-label" for="alertNameBS">Alert Name:</label>
								        <div class="input-group">
								            <span class="input-group-addon">*</span>
								            <input class="form-control" placeholder="Alert Name" name="alertNameBS" id="alertNameBS" type="text" required/>
								        </div>
								    </div>
								</div>
								<!-- / col-lg-3 -->
								<div class="col-lg-3">								    
								    <div class="form-group">
								        <label class="control-label" for="serviceName">Service Name:</label>
								        <div class="input-group">
								            <span class="input-group-addon">*</span>
								            <input class="form-control" placeholder="Service Name" name="serviceName" id="serviceName" type="text" required/>
								        </div>
								    </div>
								    <div class="form-group">
								        <label class="control-label" for="serviceScope">Service Scope:</label>
								        <div class="input-group">
								            <span class="input-group-addon">*</span>
								            <input class="form-control" placeholder="Service Scope" name="serviceScope" id="serviceScope" type="text" required/>
								        </div>
								    </div>								   
								</div>
								<!-- / col-lg-3 -->
							</div>
							<!-- / row -->
							</fieldset>
						</form>
						<!-- /  end formCircuit -->
					</div>
					<!-- /  end formCircuitC -->
				</div>
				<!-- /  end containerFormBizservice -->

				<div id="containerFormPeripheral">
					<div id="containerFormPeripheralC" >
						<form id="formPeripheral">
							<fieldset>
							<legend>Datos Peripheral:</legend>
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
								            <input class="form-control" placeholder="Type" name="typeP" id="typeP" type="text" required/>
								        </div>
								    </div>
								    <div class="form-group">
								        <label class="control-label" for="istatusP">Istatus:</label>
								        <div class="input-group">
								            <span class="input-group-addon">*</span>
								            <input class="form-control" placeholder="Istatus" name="istatusP" id="istatusP" type="text" required/>
								        </div>
								    </div>
								</div>
								<!-- / col-lg-3 -->
								<div class="col-lg-3">
								    <div class="form-group">
								        <label class="control-label" for="subtypeP">Subtype:</label>
								        <div class="input-group">
								            <span class="input-group-addon">*</span>
								            <input class="form-control" placeholder="Subtype" name="subtypeP" id="subtypeP" type="text" required/>
								        </div>
								    </div>
								    <div class="form-group">
								        <label class="control-label" for="locationCodeP">Location Code:</label>
								        <div class="input-group">
								            <span class="input-group-addon">*</span>
								            <input class="form-control" placeholder="Location Code" name="locationCodeP" id="locationCodeP" type="text" required/>
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
								<!-- / col-lg-3 -->
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
								            <input class="form-control" placeholder="Extension" name="extensionP" id="extensionP" type="text" required/>
								        </div>
								    </div>
								    <div class="form-group">
								        <label class="control-label" for="serviceScopeP">Service Scope:</label>
								        <div class="input-group">
								            <span class="input-group-addon">*</span>
								            <input class="form-control" placeholder="Service Scope" name="serviceScopeP" id="serviceScopeP" type="text" required/>
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
								<!-- / col-lg-3 -->
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
								<!-- / col-lg-3 -->
							</div>
							</fieldset>
						</form>
						<!-- /  end formCircuit -->
					</div>
					<!-- /  end formCircuitC -->
				</div>
				<!-- /  end containerFormPeripheral -->
				
				<button type="button" class="btn btn-primary" id="save">Guardar</button>
													
			</div>
		</div>		
	</div>

	<!-- jQuery Version 1.11.0 -->	
	<script type="text/javascript" src="js/jquery-1.11.0.min.js"></script>
	
	<!-- Bootstrap Core JavaScript -->
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/bootstrap-multiselect.js"></script>
    <script type="text/javascript" src="js/jquery.validate.min.js"></script>    
    <script type="text/javascript" src="js/additional-methods.js"></script>
    <script type="text/javascript" src="js/jquery.i18n.properties-min-1.0.9.js"></script>
    <script type="text/javascript" src="js/jquery.timepicker.js"></script>
    <script type="text/javascript" src="js/bootstrap-datepicker.js"></script>
    
    <!-- CNOC  LIBRARY -->
    <script type="text/javascript" src="js/cnocConnector.js"></script>
    <script type="text/javascript" src="js/drawElementsMainConfig.js"></script>
    
    <!-- DataTables JavaScript -->
    <script src="js/jquery.dataTables.js"></script>
    <script src="js/dataTables.bootstrap.js"></script>
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
		    	
				cnocConnector.service1 = serviceRetrieveInbox;
				cnocConnector.service2 = serviceRetrieveInboxSearch;
				
		    }
		});
		$("#nodeType").multiselect();
		
		drawElementsMainConfig.init();
		
		$( "#save" ).click(function() {
			drawElementsMainConfig.insertAllConfInbox();
		});
		
		
		/*************************************************************************************/
		$('#formLocation').validate({
            rules: {
            	location: {
            		number: true,
            		integer: true,
                    minlength: 8,
                    maxlength: 8
                }
            },
            highlight: function(element) {
                $(element).closest('.form-group').addClass('has-error');
            },
            unhighlight: function(element) {
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
            },submitHandler: function(form) {
            	console.log(form);
            }
        });
		
		
		$('#formDevice').validate({
            rules: {
            	
            },
            highlight: function(element) {
                $(element).closest('.form-group').addClass('has-error');
            },
            unhighlight: function(element) {
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
            },submitHandler: function(form) {
            	console.log(form);
            }
        });
		

    });
    
    </script>
</body>
</html>