<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>AdminLTE | Data Tables</title>
        <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
       
     <link href='https://fonts.googleapis.com/css?family=Montserrat' rel='stylesheet'>
	<style>
	body {
  	  font-family: 'Montserrat';font-size: 22px;
	}
	</style>
        <!--  Style sheets  -->
        
        <!-- bootstrap 3.0.2 -->
        <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <!-- font Awesome -->
        <link href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
        <!-- Ionicons -->
        <link href="${pageContext.request.contextPath}/resources/css/ionicons.min.css" rel="stylesheet" type="text/css" />
        <!-- DATA TABLES -->
        <link href="${pageContext.request.contextPath}/resources/css/datatables/dataTables.bootstrap.css" rel="stylesheet" type="text/css" />
        <!-- iCheck for check boxes and radio inputs -->
        <link href="${pageContext.request.contextPath}/resources/css/iCheck/all.css" rel="stylesheet" type="text/css" />
 		<link href="${pageContext.request.contextPath}/resources/css/iCheck/checkbocRadio.css" rel="stylesheet" type="text/css" />
        <!-- Theme style -->
        <link href="${pageContext.request.contextPath}/resources/css/AdminLTE.css" rel="stylesheet" type="text/css" />
 		<!-- POP up style -->
        <link href="${pageContext.request.contextPath}/resources/css/table.popup.css" rel="stylesheet" type="text/css" />
     	<!-- multiSelect -->
        <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="${pageContext.request.contextPath}/resources/css/bootstrap-multiselect.css" rel="stylesheet" type="text/css" />
        <!-- label -->
    	<link href="${pageContext.request.contextPath}/resources/css/label.css" rel="stylesheet" type="text/css" />
 		 <!-- iCheck for check boxes and radio inputs -->
        <link href="${pageContext.request.contextPath}/resources/css/iCheck/all.css" rel="stylesheet" type="text/css" />
 		<link href="${pageContext.request.contextPath}/resources/css/iCheck/checkbocRadio.css" rel="stylesheet" type="text/css" />
 		<link href="${pageContext.request.contextPath}/resources/css/bootstrap-multiselect.css" rel="stylesheet" type="text/css" />
 		<!-- Date picker css -->
    	<link href="${pageContext.request.contextPath}/resources/css/datepicker-jquery-ui.css" rel="stylesheet" type="text/css" />
    	
        <!--JS Files  -->
         <!-- POP up script -->
          <script src="${pageContext.request.contextPath}/resources/js/table-popup-page.js" type="text/javascript"></script>	 		 
     	  <!-- jQuery 1.8.2 -->
     	  <script src="${pageContext.request.contextPath}/resources/js/jquery-1.8.2.min.js" type="text/javascript"></script>
         <!-- DATA TABES SCRIPT --> 
          <script src="${pageContext.request.contextPath}/resources/js/jquery.dataTables.min.js"></script>     
          <script src="${pageContext.request.contextPath}/resources/js/plugins/datatables/jquery.dataTables.js" type="text/javascript"></script>
          <script src="${pageContext.request.contextPath}/resources/js/plugins/datatables/dataTables.bootstrap.js" type="text/javascript"></script>
         <!-- multiSelect -->
          <script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
    	  <script src="${pageContext.request.contextPath}/resources/js/bootstrap-multiselect.js"></script>
    	 <!-- date picker  -->
		  <script src="${pageContext.request.contextPath}/resources/js/datepicker-jquery-ui.js"></script>		
		  <script src="${pageContext.request.contextPath}/resources/js/datepicker.js"></script>		
    	   <script src="${pageContext.request.contextPath}/resources/js/update.js"></script>			
        
 <script type="text/javascript">
$(document).ready(function(){
						var data =eval(${jsonVal});
						
						var table = $('#example1').DataTable( {
						"aaData": data,
						"aoColumns": [
										{ "mData": "regNum"},
										{ "mData": "firstName"},
										{ "mData": "lastName"},
										{ "mData": "hNo"}, 
										{ "mData": "floorNo"},
										{ "mData": "apartment"},
										{ "mData": "months"},
										{ "mData": "paymentType"},
										{ "mData": "transactionNo"}
										
									]
						});
						
						
					       $('#example1 tbody').on('click', 'tr', function () {
					    	  
					           var data = table.row(this).data();
					           //addPopup(JSON.stringify(data));
					          
					          	 addPopup(data);
				       });  	
			 		});
</script>
        
    </head>
    <body>
    <br/>
   
    


<div id="addEmp" class="modal">
<span onclick="document.getElementById('addEmp').style.display='none'" class="close" title="Close Modal">×</span>
							
<!-- 		<form role="form" commandName="ticketForm" id="myForm"> -->
<%-- <form action="${pageContext.request.contextPath}/pages/tables/dataResults"> --%>
  		<%-- <form class="modal-content animate" role="form" id="myForm" action="${pageContext.request.contextPath}/pages/tables/dataSubmit"> --%>
  		<!-- form start -->
  		
  		
  				<form class="modal-content animate" role="form" id="subForm"  modelAttribute="subForm" >
				<%-- <form class="modal-content animate" role="form" id="subForm"  modelAttribute="subForm" action="${pageContext.request.contextPath}/pages/examples/updatePayDetails"  method="post"> --%>
  		
 			 <div style="background-color:white;box-shadow: 10px 10px 5px #888888;"> 
 				<div class="panel-body" > 
    <!-- ---------------------       General data form --------------------------------                                    -->
          

						<!-- <div class="box-body"> -->
							</br> </br>

							<div class="form-group">
								<!-- <div class="text-left"> -->
								<!-- First Name-->
								<label class="label1">&nbsp&nbsp&nbspFirst Name</label> <input
									type="text" class="search" id="firstName" name="firstName"
									placeholder="Enter First Name" readonly required />

								<!-- First Name-->
								<label class="label1">Last Name</label> <input type="text"
									class="search" id="lastName" name="lastName"
									placeholder="Enter Last Name" readonly required />
							</div>
							<div class="form-group">
								<!--Dev Contact-->
								<label class="label1">H.No/P:No</label> <input type="text"
									class="search" id="hNo" name="hNo"
									placeholder="Enter H.No/P:No" readonly required /> <label
									class="label1">Floor No</label> <input type="text"
									class="search" id="floorNo" name="floorNo"
									placeholder="Enter  Floor No" readonly required />

							</div>
							<div class="form-group">
								<label class="label1">Apartment Name</label> <input type="text"
									class="search" id="apartment" name="apartment"
									placeholder="Enter Apartment Name" readonly required /> <label
									class="label1">Street/Rd No</label> <input type="text"
									class="search" id="street" name="street"
									placeholder="Enter Street/Rd No" readonly required />
							</div>

						
						<div class="form-group">
							<label class="label1">Locality</label> <input type="text"
								class="search" id="locality" name="locality"
								placeholder="Enter locality" readonly required /> <label class="label1">City</label>
							<input type="text" class="search" id="city" name="city"
								placeholder="Enter City" readonly  required />
							

						</div>

						<div class="form-group">
								 <label class="label1">Pin</label>
							<input type="text" class="search" id="pin" name="pin"
								placeholder="Enter Pin" readonly required />
								
								<label class="label1">ID</label>
							<input type="text" class="id" id="id" name="id"
								placeholder="Type Id" readonly required />
						</div>
						<div class="form-group">
														
							<label class="label1" for="orderTypelabel">Perform Action</label>
								<select id="orderType" name="paymentType"  required >
									<option >None selected</option>
				      				  <option >Approve</option>
				       				  <option >Delete</option>
				       				 
				    			</select>
							
						
						</div>
						
						
						<div class="box-footer">
							<div style="text-align: center;">
								<!-- <button type="button" class="btn btn-primary"
									onclick="myFunction()">Reset</button> -->
								
								<button type="submit" class="btn btn-primary" onClick="update();">Submit</button><br/><br/>
							</div>
						</div>
							

                                                       
			  </div> 
			</div>   
 		 </form>  
 	  
</div>  
    
      
    <form action="${pageContext.request.contextPath}/pages/tables/dataResults">

	<!-- Content Header (Page header) -->
	<section class="content-header">
		<h2>
			<center font-family:'Montserrat'> Payment Entries</center>
		</h2>
		<!-- <ol class="breadcrumb">
			<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
			<li><a href="#">Tables</a></li>
			<li class="active">Ticket Queue</li>
		</ol> -->
	</section>
<!-- <a href="#" onclick="addPopup();">PopUp</a> -->

	<!-- Main content -->
	<section class="content">
							
							
		<div class="row">
			<div class="col-xs-12">
				
				<div class="box">
					
					<!-- /.box-header -->
					<div class="box-body table-responsive">
						<table id="example1" class="table table-bordered table-striped">
							<thead>
								<tr>
									<th>Reg ID</th>
									<th>First Name</th>
									<th>Last Name</th>
									<th>HNo/PNo</th>
									<th>FloorNo</th>
									<th>Apartment</th>	
									<th>Month</th>	
									<th>Payment Type</th>
									<th>TransactionID</th>										
								</tr>
							</thead>
							<tbody>
							</tbody>
							
							
						</table>
					</div>
					<!-- /.box-body -->
				</div>
				<!-- /.box -->
			</div>
		</div>
		
	<%-- 	The jsonValue is ${jsonVal}
 --%>
			

	</section>
	<!-- /.content -->
	</form>

 <!-- Initialize the plugin: Select  -->
    <script type="text/javascript">
        $(document).ready(function() {
            $('#orderType').multiselect({
                buttonClass: 'btn btn-link',
                maxHeight: 200
            	
            });
        });
    </script>
    <!-- Initialize the plugin: Router Type -->
     <script type="text/javascript">
        $(document).ready(function() {
        	
            $('#routerType').multiselect({
                buttonClass: 'btn btn-link'
            });
        }); 
    </script>
    
    <!-- Initialize the plugin: Router Type -->
     <script type="text/javascript">
        $(document).ready(function() {
        	
            $('#serviceline').multiselect({
                buttonClass: 'btn btn-link'
            });
        }); 
    </script>
    
    <!-- Initialize the plugin: Router Type -->
     <script type="text/javascript">
        $(document).ready(function() {
        	
            $('#ipversion').multiselect({
                buttonClass: 'btn btn-link'
            });
        }); 
    </script>
    
     <!-- Initialize the plugin: Access Type Protocol -->
    <script type="text/javascript">
        $(document).ready(function() {
            $('#accessTypeProtocol').multiselect({
                buttonClass: 'btn btn-link'
            });
        });
    </script>
     <!-- Initialize the plugin: Order Type -->
    <script type="text/javascript">
        $(document).ready(function() {
            $('#orderType').multiselect({
                buttonClass: 'btn btn-link'
            });
        });
    </script>
	 <!-- Initialize the plugin: Speed Details -->
    <script type="text/javascript">
        $(document).ready(function() {
            $('#sbSpeedOne').multiselect({
                buttonClass: 'btn btn-link'
            });
        });
    </script>
    </body>
</html>