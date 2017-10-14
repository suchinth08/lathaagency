function update() {
	
	
	console.log("Inside update method");
	
	var actionType= $("#orderType").val();
	confirm("Are you sure you want to "+actionType+" ?");
	
	$.ajax({
		
		success : function(data) {
			alert("Updated Successfully!!!");
		},
		error : function(data) {
			alert("Updated Successfully!!!");
		}
	});
	
	
}