function assignUserData() {
	
	
	console.log("Inside assignUserData method");
	alert("Called assignUserData method......");
	var orderNumber = $("#order").val();
	var devContact= $("#dev").val();
	
	$.ajax({
		url : "/apps/pages/tables/dataSubmit",
		type : 'GET',
		dataType : 'json',
		contentType : "application/json",
		data : {
			'orderNumber' : orderNumber,
			'devContact'  : devContact
		},

		
		success : function(data) {
			alert("Updated Successfully!!!");
		},
		error : function(data, status, er) {
			alert("error: ");
		}
	});

}


    

function addUserPopup(data) {

	
	/*----------------------------------- Jquery for Input type fields     --------------------------------------------*/	
	 $("#order").attr("value", data.orderNumber);
	 $("#ATOS").attr("value", data.ATOSTicket);
	 console.log("ATOSTicket no is :"+data.ATOSTicket);
	 $("#internal").attr("value", data.internalQC);
	 $("#dev").attr("value", data.devContact);
	 $("#st").attr("value", data.seContact);
	 $("#expectedDate").attr("value", data.expectedDeployment);
	 $("#internalTkt").attr("value", data.internalTkt);
	 $("#internalTkt").text(data.internalTkt);
	// alert(data.ATOSTicket);
		 
	 /*----------------------------------- Jquery for Radio type fields     --------------------------------------------*/		 
	 if(data.regressionList && data.regressionList.length > 0) {
		 //alert(data.regressionList[0]);
		 console.log("regression"+data.regressionList[0]);
		 $('input[type=radio][name=regReq][value="'+ data.regressionList [0] +'"]').prop("checked",true);
	 }
	 /*----------------------------------- Jquery for Checkbox type fields     --------------------------------------------*/	
	 var i;
	 if(data.regionList && data.regionList.length > 0 ){
		 $('input[type=checkbox][name=DOM][value="DOM"]').prop("checked", false);
		 $('input[type=checkbox][name=MOW][value="MOW"]').prop("checked", false);
		 $('input[type=checkbox][name=Any][value="Any"]').prop("checked", false);
		for(i=0; i<data.regionList.length; i++){
			 $('input[type=checkbox][name="'+ data.regionList [i] +'"][value="' + data.regionList [i] + '"]').prop("checked", true);
		  }
		}
	 /*----------------------------------- Jquery for Textarea type fields     --------------------------------------------*/	
	 $("#test").val( data.testStepsArrive);
	 $("#email").val( data.emailChain);
	 $("#expected").val( data.expectedBehaviour);
	 $("#actual").val(data.actualBehaviour);
	 
	 /*--------- Jquery for Assign Drop down --------------------------------*/
	 $("#assignId").val(data.assignList[0]);
	 console.log("Assign to : "+data.assignList[0]);
	 //$("#assignId").html(data.assignList[0]);
	 //alert(data.assignList[0]);
	
	 /*----------------------------------- Jquery for Multiple select type fields     --------------------------------------------*/	
	var j;
	console.log("routeTypeList.................");
	 $("#routerType").val(false);
	 for(j=0; j<data.routeTypeList.length; j++){
		 //$("#routerType").val(data.routeTypeList[j]);
		 $("#routerType option[value='" + data.routeTypeList[j] + "']").prop("selected", true);
		 $("#routerType").multiselect("refresh");	
		 console.log(data.routeTypeList[j]);
	 }
	 console.log("servicelineList.................");
	 $("#serviceline").val(false);
	 for(j=0; j<data.servicelineList.length;j++){
		 $("#serviceline option[value='" + data.servicelineList[j] + "']").prop("selected", true);
		 $("#serviceline").multiselect("refresh");	
		 console.log(data.servicelineList[j]);
	 }
	 console.log("ipversionList.................");
	 $("#ipversion").val(false);
	 for(j=0; j<data.ipversionList.length;j++){
		 $("#ipversion option[value='" + data.ipversionList[j] + "']").prop("selected", true);
		 $("#ipversion").multiselect("refresh");	
		 console.log(data.ipversionList[j]);
	 }
	 console.log("accessTypeList.................");
	 $("#accessTypeProtocol").val(false);
	 for(j=0; j<data.accessTypeList.length;j++){
		 $("#accessTypeProtocol option[value='" + data.accessTypeList[j] + "']").prop("selected", true);
		 $("#accessTypeProtocol").multiselect("refresh");	
		 console.log(data.accessTypeList[j]);
	 }
	 console.log("orderTypeList.................");
	 $("#orderType").val(false);
	 for(j=0; j<data.orderTypeList.length;j++){
		 $("#orderType option[value='" + data.orderTypeList[j] + "']").prop("selected", true);
		 $("#orderType").multiselect("refresh");	
		 console.log(data.orderTypeList[j]);
	 }
	 console.log("SpeedList.................");
	 $("#sbSpeedOne").val(false);
	 for(j=0; j<data.speedDetailList.length; j++){
		   $("#sbSpeedOne option[value='" + data.speedDetailList[j] + "']").prop("selected", true);
     	   $("#sbSpeedOne").multiselect("refresh");
		 console.log(data.speedDetailList[j]); 
	 }
	 /*-------------------------------------------------------------------------------*/
	 
	 
} 


