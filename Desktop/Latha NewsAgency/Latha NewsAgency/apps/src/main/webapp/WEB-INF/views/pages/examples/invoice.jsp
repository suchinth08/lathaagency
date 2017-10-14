<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Latha NewsAgency</title>
        <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
        <!-- bootstrap 3.0.2 -->
        <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <!-- font Awesome -->
        <link href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
        <!-- Ionicons -->
        <link href="${pageContext.request.contextPath}/resources/css/ionicons.min.css" rel="stylesheet" type="text/css" />
        <!-- Theme style -->
        <link href="${pageContext.request.contextPath}/resources/css/AdminLTE.css" rel="stylesheet" type="text/css" />

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
          <script src="https://oss.maxcdn.com/libs/respond.${pageContext.request.contextPath}/resources/js/1.3.0/respond.min.js"></script>
        <![endif]-->
    </head>
    <body>

	<!-- Content Header (Page header) -->
	<%-- <section class="content-header">
		<h1>
			Invoice <small>${invoiceNum}</small>
		</h1>
	</section> --%>

<!-- 	<div class="pad margin no-print">
		<div class="alert alert-info" style="margin-bottom: 0 !important;">
			<i class="fa fa-info"></i> <b>Note:</b> This page has been enhanced
			for printing. Click the print button at the bottom of the invoice to
			test.
		</div>
	</div> -->

	<!-- Main content -->
	<section class="content invoice">
		<!-- title row -->
		<div class="row">
			<div class="col-xs-12">
				<h2 class="page-header">
			 <img
			src="${pageContext.request.contextPath}/resources/img/credit/lathaAgency2.png"
			alt="latha agency" width="1100" height="50"/> 
				</h2>
			</div>
			<!-- /.col -->
		</div>
		<!-- info row -->
		<div class="row invoice-info">
			<div class="col-sm-4 invoice-col">
				From
				<address>
					<strong>Admin, <br>Latha NewsAgency.</strong><br> RT Nagar<br>
					Bengaluru, KA 560072<br> Phone: +91-9902026925<br /> Email:
					lathanewsagency@gmail.com
				</address>
			</div>
			<!-- /.col -->
			<div class="col-sm-4 invoice-col">
				To
				<address>
					<strong>${firstName} ${lastName}</strong><br> ${hNo}, ${floorNo}, ${apartment}<br>
					${street}, ${city} - ${pin}<br> <br /> Email:
					${email}
				</address>
			</div>
			<!-- /.col -->
			<div class="col-sm-4 invoice-col">
				<b>Invoice: </b>${invoiceNum} <br />  
				<b>Payment made for Month: </b> ${month} <br /> <br /> 
				 <b>Payment Type:</b> ${paymentType} <br /> 
				 <b>Payment ID:</b> ${transactionNo} <br /> 
				<b>Registration ID:</b> ${regNum}
			</div>
			<!-- /.col -->
		</div>
		<!-- /.row -->

		<!-- Table row -->
		<div class="row">
			<div class="col-xs-12 table-responsive">
				<table class="table table-striped">
					<thead>
						<tr>
							<th>Qty</th>
							<th>Product</th>
							<th>Invoice #</th>
							<th>Description</th>
							<th>Subtotal</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>1</td>
							<td>Payment for Subscription</td>
							<td>${invoiceNum}</td>
							<td>Total amount made for ${month}</td>
							<td>${amount}</td>
						</tr>
					</tbody>
				</table>
			</div>
			<!-- /.col -->
		</div>
		<!-- /.row -->

		<div class="row">
			<!-- accepted payments column -->
			<div class="col-xs-6">
				<p class="lead">Payment Methods:</p>
					<img
					src="${pageContext.request.contextPath}/resources/img/credit/onlinebanking.png"
					alt="online banking" width="60" height="55"/> 
					<img
					src="${pageContext.request.contextPath}/resources/img/credit/paytm.png"
					alt="paytm" width="100" height="50"/> <img
					src="${pageContext.request.contextPath}/resources/img/credit/phonepe.png"
					alt="phonepe" width="100" height="100"/>
					<img 
					src="${pageContext.request.contextPath}/resources/img/credit/bhim.png"
					alt="bhim" width="80" height="30"/>
					<br>
					
			</div>
			<!-- /.col -->
			<div class="col-xs-6">
				<p class="lead">Amount paid for ${month}</p>
				<div class="table-responsive">
					<table class="table">
						<tr>
							<th style="width: 50%">Subtotal:</th>
							<td>${amount} INR</td>
						</tr>
						<tr>
							<th>Tax (0%)</th>
							<td>0</td>
						</tr>
						
						<tr>
							<th>Total:</th>
							<td>${amount} INR</td>
						</tr>
					</table>
				</div>
			</div>
			<!-- /.col -->
		</div>
		<!-- /.row -->

		<!-- this row will not appear when printing -->
		<div class="row no-print">
			<div class="col-xs-12">
				<button class="btn btn-primary pull-right" onclick="window.print();">
					<i class="fa fa-print"></i> Print
				</button>
				<!-- <button class="btn btn-success pull-right">
					<i class="fa fa-credit-card"></i> Submit Payment
				</button>
				<button class="btn btn-primary pull-right"
					style="margin-right: 5px;">
					<i class="fa fa-download"></i> Generate PDF
				</button> -->
			</div>
		</div>
	</section>
	<!-- /.content -->



	<!-- jQuery 2.0.2 -->
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
        <!-- Bootstrap -->
        <script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js" type="text/javascript"></script>
        <!-- AdminLTE App -->
        <script src="${pageContext.request.contextPath}/resources/js/AdminLTE/app.js" type="text/javascript"></script>
        <!-- AdminLTE for demo purposes -->
        <script src="${pageContext.request.contextPath}/resources/js/AdminLTE/demo.js" type="text/javascript"></script>
    </body>
</html>