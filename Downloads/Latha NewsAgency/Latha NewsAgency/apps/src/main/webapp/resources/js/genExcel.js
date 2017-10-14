function genExcel() {
	
	
	console.log("Inside generate method");
	confirm("Are you sure you want to generate excel ?");
	
		 
	$.ajax({
		url : "/pages/examples/excel",
		type : 'get',
		
		success : function(data) {
			alert("Excel generated Successfully!!!");
		},
		error : function(data) {
			alert("error ");
		}
	});
	
	
}