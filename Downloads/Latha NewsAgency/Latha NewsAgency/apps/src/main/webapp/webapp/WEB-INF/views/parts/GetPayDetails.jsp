<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
     <body class="skin-blue">
        <!-- header logo: style can be found in header.less -->
        <header class="header">
            <a href="${pageContext.request.contextPath}/" class="logo">
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
                          <!-- Messages: style can be found in dropdown.less-->
                        <li class="dropdown messages-menu">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            </a>
                            <ul class="dropdown-menu">
                                <li class="header">You have 4 messages</li>
                                <li>
                                    <!-- inner menu: contains the actual data -->
                                    <ul class="menu">
                                        <li><!-- start message -->
                                            <a href="#">
                                                <div class="pull-left">
                                                    <img src="${pageContext.request.contextPath}/resources/img/avatar3.png" class="img-circle" alt="User Image"/>
                                                </div>
                                                <h4>
                                                    Geetha 
                                                    <small><i class="fa fa-clock-o"></i> 5 mins</small>
                                                </h4>
                                                <p>A new QC created for CCRT</p>
                                            </a>
                                        </li><!-- end message -->
                                        <li>
                                            <a href="#">
                                                <div class="pull-left">
                                                    <img src="${pageContext.request.contextPath}/resources/img/avatar2.png" class="img-circle" alt="user image"/>
                                                </div>
                                                <h4>
                                                    Tier-III
                                                    <small><i class="fa fa-clock-o"></i> 2 hours</small>
                                                </h4>
                                                <p>Production Outage Change Ticket Created</p>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <div class="pull-left">
                                                    <img src="${pageContext.request.contextPath}/resources/img/avatar.png" class="img-circle" alt="user image"/>
                                                </div>
                                                <h4>
                                                    Developers
                                                    <small><i class="fa fa-clock-o"></i> Today</small>
                                                </h4>
                                                <p>Changed status of QC3423 to delivered</p>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <div class="pull-left">
                                                    <img src="${pageContext.request.contextPath}/resources/img/avatar2.png" class="img-circle" alt="user image"/>
                                                </div>
                                                <h4>
                                                    Testing
                                                    <small><i class="fa fa-clock-o"></i> Yesterday</small>
                                                </h4>
                                                <p>QC45473 completed testing</p>
                                            </a>
                                        </li>
                                       
                                    </ul>
                                </li>
                                <li class="footer"><a href="#">See All Messages</a></li>
                            </ul>
                        </li>
    </ul>
    
    
    <div >
			<!-- left column -->
			</br>
			</br>
			</br>
			
			<div class="col-xs-offset-1">
				<!-- general form elements -->
				<div class="box box-primary" style="
    width: 1380px;
    height: 502px;
    border-top-width: 4px;
    margin-top: 1px;
    top: 6px;
    bottom: -2;
    margin-bottom: 30px;
">
					
					<!-- /.box-header -->
					<!-- form start -->					
						<div class="box-body">
							</br> </br>

							<div class="form-group">
								<!-- <div class="text-left"> -->
								<!-- First Name-->
								<label class="label1">&nbsp&nbsp&nbspFirst Name:</label>${firstName}

								<!-- First Name-->
								<label class="label1">&nbsp&nbsp&nbspLastName:</label> ${lastName}
							</div>
							
							<div class="form-group">
								<!--Dev Contact-->
								<label class="label1">H.No/P:No</label> ${hNo}
								<label class="label1">Floor No</label>${floorNo}	
							</div>
						
							<div class="form-group">
								<label class="label1">Apartment Name</label> <input type="text"
									 id="apartment" name="apartment"
									/> ${apartment }
									<label
									class="label1">Street/Rd No</label> <input type="text"
									id="street" name="street"
									 />${street }
							</div>

						</div>
						<div class="form-group">
							<label class="label1">Locality</label> <input type="text"
								id="locality" name="locality"
								 />${locality}
								
							 <label class="label1">City</label>
							<input type="text"  id="city" name="city"/>${city}
							

						</div>

						<div class="form-group">
								 <label class="label1">Pin</label>
							<input type="text" id="pin" name="pin"/>${pin}
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
							</form>
				</div>
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