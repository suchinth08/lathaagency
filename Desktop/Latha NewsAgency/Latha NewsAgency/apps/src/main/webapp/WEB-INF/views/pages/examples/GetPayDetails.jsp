<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta charset="UTF-8">
        <title>Latha NewsAgency|UserPayDetails</title>
        <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
        <!-- bootstrap 3.0.2 -->
        
        <!-- css files -->
       <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.5.5/angular.js"></script>
        <!-- font Awesome -->
         <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.5.5/angular.js"></script>
         
        <link href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
        <!-- Ionicons -->
        <link href="${pageContext.request.contextPath}/resources/css/ionicons.min.css" rel="stylesheet" type="text/css" />
         <!-- iCheck for check boxes and radio inputs -->
        <link href="${pageContext.request.contextPath}/resources/css/iCheck/all.css" rel="stylesheet" type="text/css" />
           <!-- jvectormap -->
        <link href="${pageContext.request.contextPath}/resources/css/jvectormap/jquery-jvectormap-1.2.2.css" rel="stylesheet" type="text/css" />
 		<link href="${pageContext.request.contextPath}/resources/css/iCheck/checkbocRadio.css" rel="stylesheet" type="text/css" />      
        <!-- Theme style -->
        <link href="${pageContext.request.contextPath}/resources/css/AdminLTE.css" rel="stylesheet" type="text/css"/>      
         <!-- label -->
    	<link href="${pageContext.request.contextPath}/resources/css/getPayDetails.css" rel="stylesheet" type="text/css"/>
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
   
     <body class="skin-blue">
        <!-- header logo: style can be found in header.less -->
        <header class="header">
            <a href="${pageContext.request.contextPath}/" class="logo" style="width: 220px;height: 50px;">
                <!-- Add the class icon to your logo image or logo icon to add the margining -->
               Latha NewsAgency
            </a>
            <!-- Header Navbar: style can be found in header.less -->
            <nav class="navbar navbar-static-top" role="navigation">
                <!-- Sidebar toggle button-->
                <a href="#" class="navbar-btn sidebar-toggle" data-toggle="offcanvas" role="button">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </a>
                <div class="navbar-right">
                    <ul class="nav navbar-nav">
                          <!-- User Account: style can be found in dropdown.less -->
                        <li class="dropdown user user-menu">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="glyphicon glyphicon-user"></i>
                                <span>Welcome <%=session.getAttribute("loggedInUser")%><i class="caret"></i></span>
                            </a>
                            <ul class="dropdown-menu">
                                <!-- User image -->
                                <li class="user-header bg-light-blue">
                                    <img src="${pageContext.request.contextPath}/resources/img/avatar3.png" class="img-circle" alt="User Image" />
                                    <p>
                                      <%=session.getAttribute("loggedInUser")%>
                                    </p>
                                </li>
                               
                                <!-- Menu Footer-->
                                <li class="user-footer">
                                    <div class="pull-left">
                                        <a href="#" class="btn btn-default btn-flat">Profile</a>
                                    </div>
                                    <div class="pull-right">
                                        <a href="#" class="btn btn-default btn-flat">Sign out</a>
                                    </div>
                                </li>
                            </ul>
                        </li>
 			   </ul>
    </div>
    </nav>
    </header>

			<!-- left column -->
			
			<div class="col-xs-offset-1">
				<!-- general form elements -->
				<div class="box box-primary" style="
    width: 1100px;
    height: 502px;
    border-top-width: 4px;
    margin-top: 1px;
    top: 6px;
    bottom: -2;
    margin-bottom: 30px;
">

					
						<form   id="subForm"  modelAttribute="subForm" action="${pageContext.request.contextPath}/pages/examples/updatePayDetails"  method="post">				
						<div class="box-body" style="
						width: 1100px; height: 502px;">
						<div class="form-group">
						<p><strong><i>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspPlease use below details to make payment and provide Transaction ID to complete Transaction<br></br>
					        	
					        	<label class="label">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp1.</label>
					        	<img
								src="${pageContext.request.contextPath}/resources/img/credit/onlinebanking.png"
								alt="online banking" width="60" height="55"/> 
					        	<label class="label"><b>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspInternet Banking (Bank : Axis Bank, Name: Latha L Latha, Acc No: 347834223, IFSC Code: AX34845)</b></label> <br><br>
					        	
					        	<label class="label">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp2.</label> 
					        	<img
									src="${pageContext.request.contextPath}/resources/img/credit/phonepe.png"
									alt="paytm" width="100" height="70"/> 
					        	<img
									src="${pageContext.request.contextPath}/resources/img/credit/PayTM_Image.png"
									alt="latha agency" width="80" height="80"/>
									
								<label class="label">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp3.</label> 
								<img
									src="${pageContext.request.contextPath}/resources/img/credit/paytm.png"
									alt="paytm" width="100" height="50"/> 
					        	<img
									src="${pageContext.request.contextPath}/resources/img/credit/PayTM_Image.png"
									alt="latha agency" width="80" height="80"/>
									
								<label class="label">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp4.</label> 
								<img
									src="${pageContext.request.contextPath}/resources/img/credit/bhim.png"
									alt="paytm" width="100" height="50"/> 
					        	<img
									src="${pageContext.request.contextPath}/resources/img/credit/PayTM_Image.png"
									alt="latha agency" width="80" height="80"/> </i></strong></p>
							<br>
									
							<div class="form-group" >
								<!-- <div class="text-left"> -->
								<!-- First Name-->
								<label class="label1">First Name:</label>${firstName}
								
								<!-- Last Name-->
								<label class="lastNmae">LastName:</label> ${lastName}
								
								<label class="label1">H.No/P:No:</label> ${hNo}
								<label class="label1">Floor No:</label>${floorNo}	
								
								
							</div>
							
							
						
							<div class="form-group">
								<label class="label1">Apartment Name:</label>  ${apartment }
								<label class="label1">Street/Rd No:</label> ${street }
								<label class="locality">Locality:</label> ${locality}
							 	
							</div>

						<div class="form-group">
								<label class="label1">City:</label>${city}
							 	<label class="pin">Pin:</label>${pin} 
								<label class="label1">Registration ID:</label>
								<input type="text" name="regNum" class="search"  value=${regNum} readonly></input>
								
								
								<label class="paymentType" for="orderTypelabel">Payment Type:</label>
								<select id="orderType" name="paymentType" required >
				      				  <option >Internet Banking</option>
				      				  <option >PhonePe</option>
				       				  <option >PayTM</option>
				       				  <option >Bhim(UPI)</option>
				    			</select>
								<!-- <label class="labelInternal"
					style="width: 150px; margin-left: 3‒; border-left-width: 3px; padding-left: 3px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Registration
					ID</label> <input type="text" class="search" id = "regNum" name="regNum"  placeholder=${regNum} style="background-color: white;font-weight: bold;width: 76px;height: 33px;" /> -->
				  			</div>
		 
						
						<div class="form-group">	
	    				<label class="month" for="accessTypelabel">Choose Month(s) of Payment:</label> 	
   								<select id="accessTypeProtocol" name="month" multiple="multiple" required >
				      				  <option>January</option>
				      				  <option>February</option>
				       				  <option>March</option>
				       				  <option>April</option>
				       				  <option>May</option>
				       				   <option>June</option>
				       				   <option>July</option>
				       				    <option>August</option>
				       				    <option>September</option>
				       				    <option>October</option>
				       				     <option>November</option>
				       				     <option>December</option>
				    			</select>
				    	
				    	<label class="amount">Amount:</label>
								<input type="text" class="search" id="amount" name="amount" placeholder="Amount" required />
						<label class="transNum">Transaction Number:</label>
								<input type="text" class="search" id="transNumber" name="transactionNo" placeholder="Transaction No" required />
				    				
				    	</div>	
				 
						<div class="box-footer">
							<div style="text-align: center;">
								<button type="button" class="btn btn-primary"
									onclick="myFunction()">Reset</button>
								&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
								&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
								<button type="submit" class="btn btn-primary">Submit</button>
							</div>
						</div>
						</div>	
						</div>
						</form>
						
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
                buttonClass: 'btn btn-link',
                maxHeight: 400,
                	dropUp: true
            });
        });
    </script>
     <!-- Initialize the plugin: Order Type -->
    <script type="text/javascript">
        $(document).ready(function() {
            $('#orderType').val('').multiselect({
                buttonClass: 'btn btn-link',
                maxHeight: 200,
            	dropUp: true
            });
        });
    </script>
	 <!-- Initialize the plugin: Speed Details -->
    <script type="text/javascript">
        $(document).ready(function() {
            $('#sbSpeedOne').multiselect({
                buttonClass: 'btn btn-link',     
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