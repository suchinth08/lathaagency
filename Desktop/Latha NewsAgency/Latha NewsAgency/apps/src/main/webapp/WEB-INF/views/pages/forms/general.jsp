<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta charset="UTF-8">
        <title>AdminLTE | Dashboard</title>
        <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
        <!-- bootstrap 3.0.2 -->
        
        <!-- css files -->
       
        <!-- font Awesome -->
        <link href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
        <!-- Ionicons -->
        <link href="${pageContext.request.contextPath}/resources/css/ionicons.min.css" rel="stylesheet" type="text/css" />
         <!-- iCheck for check boxes and radio inputs -->
        <link href="${pageContext.request.contextPath}/resources/css/iCheck/all.css" rel="stylesheet" type="text/css" />
 		<link href="${pageContext.request.contextPath}/resources/css/iCheck/checkbocRadio.css" rel="stylesheet" type="text/css" />      
        <!-- Theme style -->
        <link href="${pageContext.request.contextPath}/resources/css/Admin/AdminLTE.css" rel="stylesheet" type="text/css" />      
         <!-- label -->
    	<link href="${pageContext.request.contextPath}/resources/css/general.css" rel="stylesheet" type="text/css" />
        <!-- multiSelect -->
        <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="${pageContext.request.contextPath}/resources/css/bootstrap-multiselect.css" rel="stylesheet" type="text/css" />
        <!-- Date picker css -->
        <link href="${pageContext.request.contextPath}/resources/css/datepicker-jquery-ui.css" rel="stylesheet" type="text/css" />
        
        
        
        <!--  js files --> 
         <script src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
           <!-- multiSelect -->
         <script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
    	 <script src="${pageContext.request.contextPath}/resources/js/bootstrap-multiselect.js"></script>
 		 <!-- Date picker -->
      	 <script src="${pageContext.request.contextPath}/resources/js/datepicker-jquery-ui.js"></script>		
		 <script src="${pageContext.request.contextPath}/resources/js/datepicker.js"></script>		
    	
 		
 		
		 
 		 
    </head>
    <body>
    
    <div class="row">
			<!-- left column -->
			<div class="col-md-6">
				<!-- general form elements -->
				<div class="box box-primary">
					<!-- /.box-header -->
					<!-- form start -->
					<form role="form" commandName="ticketForm" id="myForm">
					
						<div class="box-body">
						</br>
						</br>
						

				 	<div class="form-group">
						<!-- <div class="text-left"> -->
							<!-- First Name-->
							<label class="label1">&nbsp&nbsp&nbspFirst Name</label>
								<input type="text" class="search" id="firstName" name="firstName" placeholder="Enter First Name" required />
							
							<!-- First Name-->
							<label class="label1">Last Name</label>
								<input type="text" class="search" id="lastName" name="lastName" placeholder="Enter Last Name" required />
						</div>		
						<div class="form-group">	
				  			<!--Dev Contact-->
				  			<label class="label1">H.No/P:No</label>	
				  				<input type="text" class="search" id = "hNo"
				  								 name="hNo" placeholder="Enter H.No/P:No" required />
				  								 
				  			<label class="label1">Floor No</label>
				  				<input type="text" class="search" id = "floorNo"  name="floorNo" placeholder="Enter  Floor No" required />
				 
   					</div>							
   					<div class="form-group">
   					<label class="label1">Apartment Name</label>	
				  				<input type="text" class="search" id = "apartment"
				  								 name="apartment" placeholder="Enter Apartment Name" required />
				  	<label class="label1">Street/Rd No</label>	
				  				<input type="text" class="search" id = "street"
				  								 name="street" placeholder="Enter Street/Rd No" required />
				  	</div>
				  	
				  	</div>							
   					<div class="form-group">
   					<label class="label1">Locality</label>	
				  				<input type="text" class="search" id = "locality"
				  								 name="locality" placeholder="Enter locality" required />
				  	<label class="label1">City</label>	
				  				<input type="text" class="search" id = "city"
				  								 name="city" placeholder="Enter City" required />
				  	<label class="label1">Pin</label>	
				  				<input type="text" class="search" id = "pin"
				  								 name="pin" placeholder="Enter Pin" required />
				  	
				  	</div>
		
   					<div class="form-group">
   					
						
							<label class="labelRegion">Subscription</label>
								
									<label> <input type="checkbox" class="flat-red" 
									name="monthly" checked="checked"  /> Monthly
									</label>
							
									<label> <input type="checkbox" class="flat-red" 
									name="quaterly"  /> Quarterly
									</label>
								
									<label> <input type="checkbox" class="flat-red" 
									name="halfyearly"  /> Halfyearly
									
										<label> <input type="checkbox" class="flat-red" 
									name="annual"  /> Annual
									</label>										
						</div>
						<div class="form-group">
							<!-- Regression Required-->
							<label class="labelRequired">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspI agree to terms</label>
									 <label> <input type="radio" name="regReq"  class="flat-red" required /> YES&nbsp&nbsp&nbsp&nbsp
									</label> 
						</div>
   					
   		<div class="box-footer"> 
   							<div style="text-align: center;">		 	
   							<button type="button" class="btn btn-primary" onclick="myFunction()">Reset
   							</button>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
   									&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
							<button type="submit" class="btn btn-primary">Submit</button>
							</div>
						</div>
   					
   					
   				</div>
   				
   					
   						
   				
   			</form>
   		 </div>
   	 </div>
  </div>
   						 
    <script type="text/javascript">
    
    function myFunction() {
    	document.getElementById("myForm").reset();
    	}

    
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
    
     <script type="text/javascript">
     $(document).ready(function() {
              //Flat red color scheme for iCheck
                $('input[type="checkbox"].flat-red, input[type="radio"].flat-red').iCheck({
                    checkboxClass: 'icheckbox_flat-red',
                    radioClass: 'iradio_flat-red'
                });
     });
        </script>  
 								
	
	
    </body>
</html>