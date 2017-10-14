function update() {
	
	
	console.log("Inside update method");
	
	
	var id= $("#id").val();
	alert(id);
	
		 
	$.ajax({
		url : "/pages/submitPayDetails",
		type : 'get',
		//contentType : "application/json",
		data : {
			'regNum' : id
		},
		
		
		success : function(data) {
			alert("Submitted Successfully!!!");
		},
		error : function(data) {
			alert("error ");
		}
	});
	
	
}