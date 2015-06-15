/**
 * hmjavier
 */

var cnocConnector = {
		invokeMashup : function(invokeUrl, params, callback,divelements, divcontainer) {
            
			//$( "#container").mask("Waiting...");
            try {
                    $.ajax({
                            type : 'GET',
                            dataType : 'jsonp',
                            url : invokeUrl,
                            data : params,
                            error : function(jqXHR, textStatus, errorThrown) {
                                    console.log(jqXHR);
                                    console.log(textStatus);
                                    console.log(errorThrown);
                            },
                            success : function(response) {
                            	console.log(invokeUrl);
                            	console.log(response);
                                    try {
                                            var ce = response.PrestoResponse.PrestoError.ErrorDetails.code;
                                            if (ce == 401) {
                                                    alert("Insuficientes Prvilegios");
                                                    window.location = "/dashboardTest/";
                                            }
                                    } catch (err) {
                                            callback(response, divelements, divcontainer);
                                            //$( "#container").unmask("Waiting...");
                                            
                                    };
                            }
                    });
            } catch (error) {
                    alert(error);
                    //$( "#container").unmask("Waiting...");
            };
    }
	/*,
     invokeMashup : function(invokeUrl, params, callback, divcontainer, divelements) {
               $( "#" + divcontainer ).mask("Waiting...");
               try {
                       $.ajax({
                               type : 'GET',
                               dataType : 'json',
                               url : invokeUrl,
                               data : params,
                               statusCode : {
                                       401 : function() {
                                               alert('Session Time Out');
                                               window.location = "/dashboard/index.html";
                                       }
                               },
                               error : function(jqXHR, textStatus, errorThrown) {
                                       console.log(jqXHR);
                                       console.log(textStatus);
                                       console.log(errorThrown);
                               },
                               success : function(response) {
                                       try {
                                               var ce = response.PrestoResponse.PrestoError.ErrorDetails.code;
                                               if (ce == 401) {
                                                       alert("Insuficientes Prvilegios");
                                                       window.location = "/dashboard/index.html";
                                               }
                                       } catch (err) {
                                               callback(response, divcontainer,divelements);
                                               $( "#" + divcontainer ).unmask();
                                       }
                               }
                       });
               } catch(error) {
                       alert(error);
                       $( "#" + divcontainer ).unmask();
               }
       },*/    
};