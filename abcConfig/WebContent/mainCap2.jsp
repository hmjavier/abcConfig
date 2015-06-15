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
	
	<!-- jQuery Loadmask -->
	<link rel="stylesheet" type="text/css" href="js/jquery-loadmask-0.4/jquery.loadmask.css">

</head>

<body>
	<div id="wrapper">	
		<div id="page-wrapper">
			<div id="formContainer" class="formContainer" style="margin-top: 5%; margin-left:5%; width: 90%;">
				<form id="formAll">
					<fieldset>
					<legend>Informacion Para Programacion de Actividad Implementaciones:</legend>
					<div class="row">
						<div class="col-lg-2">
							<div class="form-group">
						        <label class="control-label" for="listCustomer">Cliente:</label>
						        <div class="input-group" id="listCustomerG"></div>
						    </div>
						</div>
						<div class="col-lg-2">
							<div class="form-group">
						        <label class="control-label" for="typeChange">Tipo de Cambio:</label>
						        <div class="input-group">
						            <span class="input-group-addon">*</span>
						            <!--<input class="form-control" placeholder="Tipo de Cambio" name="typeChange" id="typeChange" type="text" required/>-->
						            <select id='typeChange' style='width:100%; margin-left: 5%;' required>
						            	<option id='' value=''>None Selected</option>
						            	<option id='' value='ALTA-MPLS'>Alta</option>
						            	<option id='' value='baja'>Baja</option>
						            	<option id='' value='cambio'>Cambio</option>
						            	<option id='' value='incrementoBW'>Incremento de BW</option>
						            </select>
						        </div>
						    </div>
						</div>
						<div class="col-lg-3">
							<div class="form-group ">
						        <label class="control-label" for="sid">SID:</label>
						        <div class="input-group">
						            <span class="input-group-addon">*</span>
						            <input class="form-control" placeholder="SID" name="location" id="location"/>
						        </div>
						    </div>
						</div>
						
						
						<div class="col-lg-3">
							<div class="form-group">
						        <label class="control-label" for="siteName">Nombre sitio:</label>
						        <div class="input-group">
						            <span class="input-group-addon">*</span>
						            <input class="form-control" placeholder="Nombre sitio" name="siteName" id="siteName" type="text" required/>
						        </div>
						    </div>
						</div>		
						<!--<div class="col-lg-2">
							<div class="form-group">
						        <label class="control-label" for="sla">SLA (Disponibilidad):</label>
						        <div class="input-group">
						            <span class="input-group-addon">*</span>
						            <input class="form-control" placeholder="SLA" name="sla" id="sla" type="text" required/>
						        </div>
						    </div>
						</div>-->				
					</div>	
					<!-- / end Row -->
					
					<div class="row">
						<div class="col-lg-2">
							<div class="form-group">
						        <label class="control-label" for="nodeTypeL">Node Type:</label>
						        <div class="input-group" id="nodeTypeLG"></div>
					    	</div>
						</div>						
						<div class="col-lg-2">
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
						</div>
						<div class="col-lg-3">
							<div class="form-group">
						        <label class="control-label" for="vrfVlan">VRF/VLAN:</label>
						        <div class="input-group">
						            <span class="input-group-addon">*</span>
						            <input class="form-control" placeholder="VRF Vlan" name="vrfVlan" id="vrfVlan" type="text"/>
						        </div>
						    </div>								
						</div>
						<div class="col-lg-2">
							<div class="form-group nsrInternacional">
						        <label class="control-label" for="nsr">NSR:</label>
						        <div class="input-group">
						            <span class="input-group-addon">*</span>
						            <input class="form-control" placeholder="NSR" name="nsr" id="nsr" type="text"/>
						        </div>
						    </div>
						</div>
						
					</div>
					<!-- / end Row -->
					<div  class="row">
						<div  class="col-lg-3">
							<div class="form-group">
						        <label class="control-label" for="requiredPort">Required Port:</label>
						        <div class="input-group">
						            <span class="input-group-addon">*</span>
						            <select name="requiredPort" id='requiredPort' style='width:100%; margin-left: 5%;'>
						            	<option id='' value='YES'>YES</option>
						            	<option id='' value='NO'>NO</option>
					            	</select>
						        </div>
						    </div>	
						</div>
						<div class="col-lg-3 requiredPort">
							<div class="form-group">
						        <label class="control-label" for="peName">PE Name:</label>
						        <div class="input-group">
						            <span class="input-group-addon">*</span>
						            <input class="form-control" placeholder="PE Name" name="peName" id="peName" type="text" required/>
						        </div>
						    </div>
						</div>
						<div class="col-lg-3 requiredPort">
							<div class="form-group">
					        <label class="control-label" for="serviceQuality">Service Quality:</label>
					        <div class="input-group">
					            <span class="input-group-addon">*</span>
					            <select name="serviceQuality" id='serviceQuality' style='width:100%; margin-left: 5%;'>
					            	<option id='' value='N/A'>N/A</option>
					            	<option id='' value='V2.5'>V2.5</option>
					            	<option id='' value='V3.0'>V3.0</option>										            	
				            	</select>
					        </div>
					    </div>
						</div>						
					</div>
					<div  class="row profileC requiredPort">
						<div class="col-lg-3">
							<div class="form-group ">
						        <label class="control-label" for="profile">Profile:</label>
						        <div class="input-group">
						            <span class="input-group-addon">*</span>
						            <input class="form-control profileFields" placeholder="Profile" name="profile" id="profile" type="text" />
						        </div>
						    </div>
						</div>
					</div>
					<div  class="row qos requiredPort">						
						<div class="col-lg-3">
							<div class="form-group ">
						        <label class="control-label" for="q1">Q1:</label>
						        <div class="input-group">
						            <span class="input-group-addon">*</span>
						            <input class="form-control qosFields" placeholder="Q1" name="q1" id="q1" type="text" />
						        </div>
						    </div>
						</div>
						<div class="col-lg-3">
							<div class="form-group ">
						        <label class="control-label" for="q2">Q2:</label>
						        <div class="input-group">
						            <span class="input-group-addon">*</span>
						            <input class="form-control qosFields" placeholder="Q2" name="q2" id="q2" type="text" />
						        </div>
						    </div>
						</div>
						<div class="col-lg-3">
							<div class="form-group ">
						        <label class="control-label" for="q3">Q3:</label>
						        <div class="input-group">
						            <span class="input-group-addon">*</span>
						            <input class="form-control qosFields" placeholder="Q3" name="q3" id="q3" type="text" />
						        </div>
						    </div>
						</div>
					</div>
					<!-- / end Row -->
					<div class="row tCambio">
						<div class="col-lg-3">
							<div class="form-group">
						        <label class="control-label" for="uniqueIdentifierActual">Referencia Actual:</label>
						        <div class="input-group">
						            <span class="input-group-addon">*</span>
						            <input class="form-control" placeholder="Referencia Actual" name="uniqueIdentifierActual" id="uniqueIdentifierActual" type="text" required/>
						        </div>
						    </div>
						</div>
						<div  class="col-lg-3">
							<div class="form-group">
						        <label class="control-label" for="newReference">Referencia Nueva:</label>
						        <div class="input-group">
						            <span class="input-group-addon">*</span>
						            <input class="form-control" placeholder="Referencia Nueva" name="newReference" id="newReference" type="text" required/>
						        </div>
						    </div>
						</div>
						<div  class="col-lg-3">
							<div class="form-group">
						        <label class="control-label" for="locationActual">SID Actual:</label>
						        <div class="input-group">
						            <span class="input-group-addon">*</span>
						            <input class="form-control" placeholder="SID Actual" name="locationActual" id="locationActual" required />
						        </div>
						    </div>
						</div>
						<div  class="col-lg-3">
							<div class="form-group ">
						        <label class="control-label" for="newSid">SID Nuevo:</label>
						        <div class="input-group">
						            <span class="input-group-addon">*</span>
						            <input class="form-control" placeholder="SID Nuevo" name="locationNew" id="locationNew"/>
						        </div>
						    </div>						    				    
						</div>
					</div>
					<div class="row">
						<div class="col-lg-3">
							
						    
						    <div class="form-group">
						        <label class="control-label" for="ipWanUninet">IP Wan Uninet:</label>
						        <div class="input-group">
						            <span class="input-group-addon">*</span>
						            <input class="form-control" placeholder="IP Wan Uninet" name="ipPe" id="ipPe" type="text" required/>
						        </div>
						    </div>
						    <!--<div class="form-group">
						        <label class="control-label" for="popUninet">POP Uninet:</label>
						        <div class="input-group">
						            <span class="input-group-addon">*</span>
						            <input class="form-control" placeholder="POP Uninet" name="peName" id="peName" type="text" required/>
						        </div>
						    </div>-->
						    
						    <!-- 
						    <div class="form-group">
						        <label class="control-label" for="approvedPeticion">Peticion Uninet Aprobado:</label>
						        <div class="input-group">
						            <span class="input-group-addon">*</span>
						            <input class="form-control" placeholder="NO ESTA" name="approvedPeticion" type="text" required/>
						        </div>
						    </div>-->
						</div>
						
						<!-- /.row -->
						
						<div class="col-lg-3">							
						    
						    <div class="form-group">
						        <label class="control-label" for="fecha">Fecha Implementacion:</label>
						        <div class="input-group">
						            <span class="input-group-addon">*</span>
						            <input class="form-control" placeholder="Fecha Implementacion" name="dateRequest" id="dateRequest" required/>
						        </div>
						    </div>
						    <!--<div class="form-group">
						        <label class="control-label" for="bw">Ancho de banda:</label>
						        <div class="input-group">
						            <span class="input-group-addon">*</span>
						            <input class="form-control" placeholder="Ancho de Banda" name="bandwidth" id="bandwidth" type="text" id="" required/>
						        </div>
						    </div>	-->					    
						    
						    
						</div>
						
						<!-- /.row -->
						
						<div class="col-lg-3">
							
						    <div class="form-group">
						        <label class="control-label" for="hora">Hora Implementacion:</label>
						        <div class="input-group">
						            <span class="input-group-addon">*</span>
						            <input class="form-control" placeholder="Hora Implementacion" name="dateRequestHour" id="dateRequestHour" type="text" id="hora" required/>
						        </div>
						    </div>
						    <!--<div class="form-group">
						        <label class="control-label" for="ipWanCliente">IP Wan Cliente:</label>
						        <div class="input-group">
						            <span class="input-group-addon">*</span>
						            <input class="form-control" placeholder="IP Wan Cliente" name="ipWan" id="ipWan" type="text" required/>
						        </div>
						    </div>-->
						    						    						    
						</div>
						
						<!-- /.row -->
						
						
						
						
						<!-- /.row -->
					</div>
					<!-- /.row -->
						<div class="row tAlta">
						
						<!--<form id="formReference">-->
							<div class="col-lg-3">
								<div class="form-group">
									<label class="control-label" for="reference">Referencia:</label>
									<div class="input-group">
										<span class="input-group-addon">*</span>
										<input id="reference" type="text" class="form-control" placeholder="Referencia"/>
									</div>
								</div>
							</div>								   												   	
							<div class="col-lg-3">
				   				<div class="form-group">
						   			<label class="control-label" for="ipReference">IP:</label>
							        <div class="input-group">
							            <span class="input-group-addon">*</span>
							            <input id="ipReference" type="text" class="form-control" placeholder="IP"/>
							        </div>
						   		</div>
				   			</div>
				   			<div class="col-lg-2">
				   				<div class="form-group">
						   			<label class="control-label" for="bandwidthReference">BW Referencia:</label>
							        <div class="input-group">
							            <span class="input-group-addon">*</span>
							            <input id="bandwidthReference" type="text" class="form-control" placeholder="Ancho de Banda Referencia"/>
							        </div>
						   		</div>
				   			</div>
				   			<div class="col-lg-2">
				   				<div class="form-group">
						   			<label class="control-label" for="referenceLinkScheme">Link Scheme:</label>
							        <div class="input-group">
							            <span class="input-group-addon">*</span>
							            <select id='referenceLinkScheme' style='width:100%; margin-left: 5%;' required>
						            	<option id='' value=''>None Selected</option>
						            	<option id='' value='MAIN'>MAIN</option>
						            	<option id='' value='BACK UP'>BACK UP</option>
						            </select>
							        </div>
						   		</div>
				   			</div>
				   			<div class="col-lg-2">
				   				<div class="form-group">
						   			<label class="control-label" for="">Add Part</label>
							        <div class="input-group">
							            <button type="button" id="addReference" class="btn btn-primary">Agregar</button>
							            <!--<button type="submit" id="addReference" class="btn btn-primary">Agregar</button>-->
							        </div>
						   		</div>
				   			</div>
						<!--</form>-->				   														
				   			<div class="col-lg-12">
				   				<div class="panel panel-default">
								  <!-- Default panel contents -->
								  <div class="panel-heading">Referencias Alta</div>
								
								  <!-- Table -->
								  <table class="table" id="tableReferenciasG">
								  	
								  </table>
								</div>
				   			</div>
						</div>
				    </fieldset>
				    <!-- /.fieldset -->
				    
				    <fieldset>
					<legend>Direccion:</legend>
				    <div class="row">
				    	<div class="col-lg-3">
							<div class="form-group">
						        <label class="control-label" for="calle">Calle:</label>
						        <div class="input-group">
						            <span class="input-group-addon">*</span>
						            <input class="form-control" placeholder="Calle" name="street" id="street" type="text" required/>
						        </div>
						    </div>						    
						    <div class="form-group">
						    	<label class="control-label" for="listState">Estado:</label>
						        <div class="input-group" id="listStateG"></div>
						    </div>						    
						    <div class="form-group">
						        <label class="control-label" for="cp">C.P.:</label>
						        <div class="input-group">
						            <span class="input-group-addon">*</span>
						            <input class="form-control" placeholder="C.P." name="zip" id="zip" required/>
						        </div>
						    </div>
						</div>
						<!-- /.row -->
						<div class="col-lg-3">
							<div class="form-group">
						        <label class="control-label" for="extNum">Numero Exterior:</label>
						        <div class="input-group">
						            <span class="input-group-addon">*</span>
						            <input class="form-control" placeholder="Numero Exterior" name="outsideNum" id="outsideNum" required/>
						        </div>
						    </div>	
						    <div class="form-group">
						    	<label class="control-label" for="listCity">Ciudad:</label>
						        <div class="input-group" id="listCityG"></div>
						    </div>							    						    				    
						</div>
						<!-- /.row -->
						<div class="col-lg-3">
							<div class="form-group">
						        <label class="control-label" for="intNum">Numero Interior:</label>
						        <div class="input-group">
						            <span class="input-group-addon">*</span>
						            <input class="form-control" placeholder="Numero Interior" name="insideNum" id="insideNum" required/>
						        </div>						        
						    </div>	
						    <div class="form-group">
						        <label class="control-label" for="delMun">Delegacion o Municipio:</label>
						        <div class="input-group" id="delMunG">
						            <span class="input-group-addon">*</span>
						            <input class="form-control" placeholder="Delegacion o Municipio" name="delMun" id="delMun" type="text" required/>
						        </div>
						    </div>							    										
						</div>
						<!-- /.row -->
						<div class="col-lg-3">
							<div class="form-group">
						        <label class="control-label" for="listCountry">Pais:</label>
						        <div class="input-group" id="listCountryG"></div>
						    </div>
						    <div class="form-group">
						        <label class="control-label" for="colonia">Colonia:</label>
						        <div class="input-group">
						            <span class="input-group-addon">*</span>
						            <input class="form-control" placeholder="NO ESTA" name="district" id="district" type="text" required/>
						        </div>
							</div>															
						</div>						
				    </div>
					</fieldset>
					<!-- /.fieldset -->
					
					<fieldset>
					<legend>Contacto:</legend>
						<div class="row">
				    		<div class="col-lg-3">
								<div class="form-group">
							        <label class="control-label" for="firstName">Nombre Completo:</label>
							        <div class="input-group">
							            <span class="input-group-addon">*</span>
							            <input class="form-control" placeholder="Nombre Completo" name="contact" id="contact" type="text" required/>
							        </div>
							    </div>
							</div>
							<div class="col-lg-3">
								<div class="form-group">
							        <label class="control-label" for="phoneContact">Telefono Contacto:</label>
							        <div class="input-group">
							            <span class="input-group-addon">*</span>
							            <input class="form-control" placeholder="Telefono Contacto" name="phoneContact" id="phoneContact" type="text" required/>
							        </div>
							    </div>
							</div>
							<div class="col-lg-3">
				    			<div class="form-group">
							        <label class="control-label" for="mail">Correo Electronico:</label>
							        <div class="input-group">
							            <span class="input-group-addon">*</span>
							            <input class="form-control" placeholder="Correo Electronico" name="mailContact" id="mailContact" type="email" required/>
							        </div>
								</div>
				    		</div>
				    	</div>
				    	<!-- /.row -->
				    				    	
					</fieldset>
					<!-- /.fieldset -->
					
					<button type="submit" class="btn btn-primary">Submit</button>
				</form>
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
    
    <!-- jQuery Loadmask -->
	<script src="js/jquery-loadmask-0.4/jquery.loadmask.min.js"></script>
    
    <!-- CNOC  LIBRARY -->
    <script type="text/javascript" src="js/cnocConnector.js"></script>
    <script type="text/javascript" src="js/drawElementsMainCap.js"></script>
    <script>
    
    $(document).ready(function(){
    	// just for the demos, avoids form submit
    	
    	$(".tAlta").hide();
    	$(".tCambio").hide();
    	$(".nsrInternacional").hide();
    	
        jQuery.validator.setDefaults({
          debug: true,
          success: "valid"
        });
        
        $('#referenceLinkScheme').multiselect();
        $('#serviceType').multiselect();                        
        $('#typeChange').multiselect({
			enableFiltering: true,
        	maxHeight: 450,
        	enableCaseInsensitiveFiltering: true,
        	onChange: function(element, checked) {
        		$('option:selected', $('#typeChange')).each(function() {
        			var typeChange = $(this).val();
        			
        			/*
        				.tCambio = Clase para Ocultar/Mostrar campos que se ocuparan para cuando es un Update de sitios
        				.tAlta = Clase para Ocultar/Mostrar campos que se ocuparan para cuando es un Alta de sitios 
        			*/
        			
        			if(typeChange === "cambio"){
        				$(".tCambio").show();
        				$(".tAlta").hide();
        				$("#tableReferenciasG").empty();
        			}else if(typeChange === "ALTA-MPLS"){
        				$(".tCambio").hide();
        				$(".tAlta").show();
        			}
        			
        		});        		
        	}
		});
        
        /*******************************************************************************************************/
        /* FUNCIONALIDAD PARA EL Required Port DE CIRCUIT */
        
        $("#requiredPort").multiselect({
        	onChange: function(element, checked) {
        		$('option:selected', $('#requiredPort')).each(function() {
        			if($(this).val() === "NO"){
        				$(".requiredPort").hide();	
        				drawElementsMainCap.utilrequiredPort();
        			}else if($(this).val() === "YES"){
        				$(".requiredPort").show();
        				drawElementsMainCap.utilrequiredPort();
        			}
        		});
        	}
        });
        
        drawElementsMainCap.utilrequiredPort();
        
        /*******************************************************************************************************/
        /* FUNCIONALIDAD PARA EL serviceQuality DE CAP */
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
        
        drawElementsMainCap.utilServiceQuality();
        
        /**********************************************************************************************************/
        
    	
        $('#dateRequest').datepicker({
			format: "yyyy-mm-dd",
			todayBtn: true,
		    autoclose: true,
		    todayHighlight: true
		});
        
        $('#dateRequestHour').timepicker({ 'timeFormat': 'H:i:s' });
        
		jQuery.i18n.properties({
		    name:'config', 
		    path:'prop/', 
		    mode:'both',
		    callback: function() {
		    	
				cnocConnector.service1 = serviceCatCountries;
				cnocConnector.service2 = serviceCatCity;
				cnocConnector.service3 = serviceConfInbox;
				cnocConnector.service4 = serviceListCustomer;
				
		    }
		});
		
		drawElementsMainCap.init();
		
		
		$("#addReference").on("click", function() {
        	if($('#reference').val() != "" && $('#ipReference').val() != "" && $('#referenceLinkScheme').val() != "" && $('#bandwidthReference').val() != ""){ 
        		$("#tableReferenciasG").append("<tr><td>"+$('#reference').val()+"</td><td>"+$('#ipReference').val()+"</td><td>"+$('#bandwidthReference').val()+"</td><td>"+$('#referenceLinkScheme').val()+"</td></tr>");	
        	}else{
        		alert("Se requieren datos en Referencia, IP, BW y Link Scheme");
        	}			
		});
		
		/*$('#formReference').validate({
			rules: {
            	ipReference:{
                	ipv4: true
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
            	if($('#reference').val() != "" && $('#ipReference').val() != "" && $('#referenceLinkScheme').val() != "" && $('#bandwidthReference').val() != ""){ 
            		$("#tableReferenciasG").append("<tr><td>"+$('#reference').val()+"</td><td>"+$('#ipReference').val()+"</td><td>"+$('#bandwidthReference').val()+"</td><td>"+$('#referenceLinkScheme').val()+"</td></tr>");	
            	}else{
            		alert("Se requieren datos en Referencia, IP, BW y Link Scheme");
            	}
            }
			
		});*/
		
		$('#formAll').validate({
            rules: {
            	location: {
            		number: true,
            		integer: true,
                    minlength: 8,
                    maxlength: 8
                },
                locationNew: {
                	number: true,
                	integer: true,
                    minlength: 8,
                    maxlength: 8                
                },zip:{
                	number: true,
                	integer: true,
                    minlength: 5,
                    maxlength: 5
                }/*,ipWan:{
                	ipv4 : true
                }*/,ipPe:{
                	ipv4: true
                },outsideNum:{
                	number: true
                },insideNum:{
                	number: true
                },ipReference:{
                	ipv4: true
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
            	console.log("si estoy entranfo aqui");
            	$( "#formAll").mask("Waiting... Save Data ");
            	var companyTmp = 	$('#listCustomer').val().split("|");
            	var company = 		companyTmp[1];// company
            	var network_code = 	companyTmp[0];// networkCode
            	var type_change  = 	$('#typeChange').val(); //"typeChange";
            	var location  	= 	$('#location').val(); //"location";
            	var siteName  	= 	$('#siteName').val(); //"siteName";            	
            	//var sla  		= 	$('#sla').val(); //"typeChange";
            	var nodeTypeL  	= 	$('#nodeTypeL').val(); //"nodeTypeL";
            	var pe_name  	= 	$('#peName').val(); //"peName";
            	var serviceType  = 	$('#serviceType').val(); //"serviceType";
            	//var nsr  		= 	$('#nsr').val(); //"nsr";
            	var vrfVlan  	= 	$('#vrfVlan').val(); //"vrfVlan";
            	var requiredPort = 	$('#requiredPort').val(); //"requiredPort";
            	var serviceQuality=	$('#serviceQuality').val(); //"serviceQuality";
            	var profile  	= 	$('#profile').val(); //"profile";
            	var q1  		= 	$('#q1').val(); //"q1";
            	var q2  		= 	$('#q2').val(); //"q2";
            	var q3  		= 	$('#q3').val(); //"q3";
            	var uniqueIdentifierActual  = $('#uniqueIdentifierActual').val(); //"uniqueIdentifierActual";
            	var newReference = 	$('#newReference').val(); //"newReference";
            	var ip_pe  		= 	$('#ipPe').val(); //"ipPe";
            	var locationActual=	$('#locationActual').val(); //"locationActual";
            	var date_request = 	$('#dateRequest').val()+"T"+$('#dateRequestHour').val(); //"dateRequest";            	
            	var locationNew  = 	$('#locationNew').val(); //"locationNew";
            	var street  	= 	$('#street').val(); //"typeChange";
            	var state  	= 		$('#listState').val(); //"typeChange";
            	var zip  		= 	$('#zip').val(); //"zip";
            	var outside_num  = 	$('#outsideNum').val(); //"outsideNum";
            	var city  	= 		$('#listCity').val(); //"listCity";
            	var inside_num  = 	$('#insideNum').val(); //"insideNum";
            	var district  	= 	$('#delMun').val(); //"district";
            	var country = 		$('#listCountry').val(); //"typeChange";
            	var colonia = 		$('#district').val(); //"district";
            	var contact  	= 	$('#contact').val(); //"contact";
            	var mail_contact = 	$('#mailContact').val(); //"mailContact";
            	var phone_contact= 	$('#phoneContact').val(); //"phoneContact";
            	var type = "CIRCUIT";
           	
            	
            	console.log(company);
            	console.log(network_code);
            	console.log(type_change);
            	console.log(location);
            	console.log(siteName);
            	//console.log(sla);
            	console.log(nodeTypeL);
            	console.log(pe_name);
            	console.log(serviceType);
            	//console.log(nsr);
            	console.log(vrfVlan);
            	console.log(requiredPort);
            	console.log(serviceQuality);
            	console.log(profile);
            	console.log(q1);
            	console.log(q2);
            	console.log(q3);
            	console.log(uniqueIdentifierActual);
            	console.log(newReference);
            	console.log(ip_pe);
            	console.log(locationActual);
            	console.log(date_request);
            	console.log(locationNew);
            	console.log(street);
            	console.log(state);
            	console.log(zip);
            	console.log(outside_num);
            	console.log(city);
            	console.log(inside_num);
            	console.log(district);
            	console.log(country);
            	console.log(colonia);
            	console.log(contact);
            	console.log(mail_contact);
            	console.log(phone_contact);
            	console.log(type);         	
            	
            	
            	$("#tableReferenciasG tr").each(function (row, tr) {
            		/*if(row == 0){
            			type = "LOCATION";
            		}else {
            			type = "";
            		}*/
            		console.log("type: "+type);
            		console.log(companyTmp);
           			console.log($(tr).find('td:eq(0)').text());
           			console.log($(tr).find('td:eq(1)').text());
           			console.log($(tr).find('td:eq(2)').text());
           			console.log($(tr).find('td:eq(3)').text());
                	
           			console.log("date request");
           			console.log("date request: "+date_request);
           			
           			cnocConnector.invokeMashup(cnocConnector.service3, {
           				"type_change":type_change,
           				//"sla":sla,
           				"date_request":date_request,
           				"location":location,
           				"node_type":nodeTypeL,
           				"street":street,
                		"outside_num":outside_num,
                		"inside_num":inside_num,
                		"country":country,
                		"state":state,
                		"city":city,
                		"district":district,
                		"zip":zip,
                		"company":company,
                		"network_code":network_code,
           				"type": type,
                		//"nsr": nsr,
                		"ip_wan":$(tr).find('td:eq(1)').text(), //IP_WAN
                		"unique_identifier":$(tr).find('td:eq(0)').text(), //REFERENCIA
                		"bandwidth":$(tr).find('td:eq(2)').text(), //BW
                		"pe_name":pe_name,
                		"ip_pe":ip_pe,
                		"service_type":serviceType,
                		"required_port":requiredPort,
                		"vrf_vlan": vrfVlan,
                		"service_quality": serviceQuality,
                		"profile":profile,
                		"q1":q1,
                		"q2":q2,
                		"q3":q3,
                		
                		"location_name":siteName,

                		"contact":contact,
                		"mail_contact":mail_contact,
                		"phone_contact":phone_contact,
                		"link_scheme":$(tr).find('td:eq(3)').text() //link_scheme
                		}, drawElementsMainCap.insertConfInbox, null, null);
 
    	        });            	
			}
        });
        
    });
    
    </script>
</body>
</html>