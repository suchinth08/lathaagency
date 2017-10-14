



/* 
   
		        $(function() { 			        	 
				        	$.ajax({
				        		
				        		url : "/pages/tables/dataResults",
				        		type : 'GET',
				        		dataType : 'JSON',
				        		contentType : "application/json; charset=utf-8",
				        		
				        		success : function(data) {
				        			alert(data);
				        			loadData(data);
	
				        		},
				        		
				        	});
		       					
					       $('#example1 tbody').on('click', 'tr', function () {
					    	  
					           var data = table.row(this).data();
					           //addPopup(JSON.stringify(data));
					          	 addPopup(data);
					       });    
					});
   
   
   
   
   function loadData(data) {
   	
   	var table = $("#example1").DataTable({    
          		 
           		
           		"aaData": data,
           			  
                   "aoColumns": [            				
		                            { "mData": "orderNumber"},
		                            { "mData": "maintContact"},
		                            { "mData": "devContact"} 
                 				  ]
           		});  
   			}
   
	       
  */