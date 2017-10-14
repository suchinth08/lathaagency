<!DOCTYPE html>
<html>
    <head>
    
        <title>Latha NewAgency|DashBoard</title>
         <!-- bootstrap 3.0.2 -->
        <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <!-- font Awesome -->
        <link href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
        <!-- Ionicons -->
        <link href="${pageContext.request.contextPath}/resources/css/ionicons.min.css" rel="stylesheet" type="text/css" />
        <!-- Morris chart -->
        <link href="${pageContext.request.contextPath}/resources/css/morris/morris.css" rel="stylesheet" type="text/css" />
        <!-- jvectormap -->
        <link href="${pageContext.request.contextPath}/resources/css/jvectormap/jquery-jvectormap-1.2.2.css" rel="stylesheet" type="text/css" />
        <!-- fullCalendar -->
        <link href="${pageContext.request.contextPath}/resources/css/fullcalendar/fullcalendar.css" rel="stylesheet" type="text/css" />
        <!-- Daterange picker -->
        <link href="${pageContext.request.contextPath}/resources/css/daterangepicker/daterangepicker-bs3.css" rel="stylesheet" type="text/css" />
        <!-- bootstrap wysihtml5 - text editor -->
        <link href="${pageContext.request.contextPath}/resources/css/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css" rel="stylesheet" type="text/css" />
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
	<section class="content-header">
		<h1>
			Dashboard <small>Control panel</small>
		</h1>
		<ol class="breadcrumb">
			<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
			<li class="active">Dashboard</li>
		</ol>
	</section>

	<!-- Main content -->
	<section class="content">
	
	   

		<!-- Small boxes (Stat box) -->
		<div class="row">
			<div class="col-lg-3 col-xs-6">
				<!-- small box -->
				<div class="small-box bg-aqua">
					<div class="inner">
						<h3>3</h3>
						<p>Payments Pending</p>
					</div>
					<div class="icon">
						<i class="ion ion-bag"></i>
					</div>
					<a href="${pageContext.request.contextPath}/pages/tables/dataResults" class="small-box-footer"> More info <i
						class="fa fa-arrow-circle-right"></i>
					</a>
				</div>
			</div>
			<!-- ./col -->
			<div class="col-lg-3 col-xs-6">
				<!-- small box -->
				<div class="small-box bg-green">
					<div class="inner">
						<h3>
							53<sup style="font-size: 20px">%</sup>
						</h3>
						<p>Made Payment for October</p>
					</div>
					<div class="icon">
						<i class="ion ion-stats-bars"></i>
					</div>
					<a href="${pageContext.request.contextPath}/pages/tables/dataResults" class="small-box-footer"> More info <i
						class="fa fa-arrow-circle-right"></i>
					</a>
				</div>
			</div>
			<!-- ./col -->
			<div class="col-lg-3 col-xs-6">
				<!-- small box -->
				<div class="small-box bg-yellow">
					<div class="inner">
						<h3>200</h3>
						<p>Payments Approved for October</p>
					</div>
					<div class="icon">
						<i class="ion ion-person-add"></i>
					</div>
					<a href="#" class="small-box-footer"> More info <i
						class="fa fa-arrow-circle-right"></i>
					</a>
				</div>
			</div>
			<!-- ./col -->
			<div class="col-lg-3 col-xs-6">
				<!-- small box -->
				<div class="small-box bg-red">
					<div class="inner">
						<h3>6</h3>
						<p>New Users added</p>
					</div>
					<div class="icon">
						<i class="ion ion-pie-graph"></i>
					</div>
					<a href="${pageContext.request.contextPath}/pages/tables/dataResults" class="small-box-footer"> More info <i
						class="fa fa-arrow-circle-right"></i>
					</a>
				</div>
			</div>
			<!-- ./col -->
		</div>
		<!-- /.row -->

		<!-- top row -->
		<div class="row">
			<div class="col-xs-12 connectedSortable"></div>
			<!-- /.col -->
		</div>
		<!-- /.row -->

		<!-- Main row -->
		<div class="row">
			<!-- Left col -->
			<section class="col-lg-6 connectedSortable">
				<!-- Box (with bar chart) -->
				<div class="box box-danger" id="loading-example">
					<div class="box-header">
						<!-- tools box -->
						<div class="pull-right box-tools">
							<button class="btn btn-danger btn-sm refresh-btn"
								data-toggle="tooltip" title="Reload">
								<i class="fa fa-refresh"></i>
							</button>
							<button class="btn btn-danger btn-sm" data-widget='collapse'
								data-toggle="tooltip" title="Collapse">
								<i class="fa fa-minus"></i>
							</button>
							<button class="btn btn-danger btn-sm" data-widget='remove'
								data-toggle="tooltip" title="Remove">
								<i class="fa fa-times"></i>
							</button>
						</div>
						<!-- /. tools -->
					
				<!-- Custom tabs (Charts with tabs)-->
				<div class="nav-tabs-custom">
					<!-- Tabs within a box -->
					<ul class="nav nav-tabs pull-right">
						<li><a href="#sales-chart" data-toggle="tab">Donut</a></li>
						<li class="pull-left header"><i class="fa fa-inbox"></i>
							Month On Month Trend</li>
					</ul>
					<div class="tab-content no-padding">
						<!-- Morris chart - Sales -->
						<div class="chart tab-pane active" id="revenue-chart"
							style="position: relative; height: 300px;"></div>
						<div class="chart tab-pane" id="sales-chart"
							style="position: relative; height: 300px;"></div>
					</div>
				</div>
				<!-- /.nav-tabs-custom -->

			</section>
			<!-- /.Left col -->
			<!-- right col (We are only adding the ID to make the widgets sortable)-->
			<section class="col-lg-6 connectedSortable">
				<!-- Map box -->
				<div class="box box-primary">
					<div class="box-header">
						<!-- tools box -->
						<div class="pull-right box-tools">
							<button class="btn btn-primary btn-sm daterange pull-right"
								data-toggle="tooltip" title="Date range">
								<i class="fa fa-calendar"></i>
							</button>
							<button class="btn btn-primary btn-sm pull-right"
								data-widget='collapse' data-toggle="tooltip" title="Collapse"
								style="margin-right: 5px;">
								<i class="fa fa-minus"></i>
							</button>
						</div>
						
						
						<!-- /. tools -->

					<!-- /.box-body-->
					<div class="box-footer">
					 <a href="${pageContext.request.contextPath}/pages/examples/excel">
					<button class="btn btn-info">
                               <i class="fa fa-download"></i> Import to Excel   
                       </button>
                        </a>
					</div>
					<br>
						<!-- quick email widget -->
				<div class="box box-info">
					<div class="box-header">
						<i class="fa fa-envelope"></i>
						<h3 class="box-title">Quick Email</h3>
						<!-- tools box -->
						<div class="pull-right box-tools">
							<button class="btn btn-info btn-sm" data-widget="remove"
								data-toggle="tooltip" title="Remove">
								<i class="fa fa-times"></i>
							</button>
						</div>
						<!-- /. tools -->
					</div>
					<div class="box-body">
						<form action="#" method="post">
							<div class="form-group">
								<input type="email" class="form-control" name="emailto"
									placeholder="Email to:" />
							</div>
							<div class="form-group">
								<input type="text" class="form-control" name="subject"
									placeholder="Subject" />
							</div>
							<div>
								<textarea class="textarea" placeholder="Message"
									style="width: 100%; height: 125px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;"></textarea>
							</div>
						</form>
					</div>
					<div class="box-footer clearfix">
						<button class="pull-right btn btn-default" id="sendEmail">
							Send <i class="fa fa-arrow-circle-right"></i>
						</button>
					</div>
				</div>
					
				</div>
				<!-- /.box -->

			</section>
			<!-- right col -->
		</div>
		<!-- /.row (main row) -->
	</section>



        <!-- jQuery 2.0.2 -->
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
        <!-- jQuery UI 1.10.3 -->
        <script src="${pageContext.request.contextPath}/resources/js/jquery-ui-1.10.3.min.js" type="text/javascript"></script>
        <!-- Bootstrap -->
        <script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js" type="text/javascript"></script>
        <!-- Morris.js charts -->
        <script src="//cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/plugins/morris/morris.min.js" type="text/javascript"></script>
        <!-- Sparkline -->
        <script src="${pageContext.request.contextPath}/resources/js/plugins/sparkline/jquery.sparkline.min.js" type="text/javascript"></script>
        <!-- jvectormap -->
        <script src="${pageContext.request.contextPath}/resources/js/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js" type="text/javascript"></script>
        <script src="${pageContext.request.contextPath}/resources/js/plugins/jvectormap/jquery-jvectormap-world-mill-en.js" type="text/javascript"></script>
        <!-- fullCalendar -->
        <script src="${pageContext.request.contextPath}/resources/js/plugins/fullcalendar/fullcalendar.min.js" type="text/javascript"></script>
        <!-- jQuery Knob Chart -->
        <script src="${pageContext.request.contextPath}/resources/js/plugins/jqueryKnob/jquery.knob.js" type="text/javascript"></script>
        <!-- daterangepicker -->
        <script src="${pageContext.request.contextPath}/resources/js/plugins/daterangepicker/daterangepicker.js" type="text/javascript"></script>
        <!-- Bootstrap WYSIHTML5 -->
        <script src="${pageContext.request.contextPath}/resources/js/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js" type="text/javascript"></script>
        <!-- iCheck -->
        <script src="${pageContext.request.contextPath}/resources/js/plugins/iCheck/icheck.min.js" type="text/javascript"></script>

        <!-- AdminLTE App -->
        <script src="${pageContext.request.contextPath}/resources/js/AdminLTE/app.js" type="text/javascript"></script>
        
        <!-- AdminLTE dashboard demo (This is only for demo purposes) -->
        <script src="${pageContext.request.contextPath}/resources/js/AdminLTE/dashboard.js" type="text/javascript"></script>     
        
        <!-- AdminLTE for demo purposes -->
        <script src="${pageContext.request.contextPath}/resources/js/AdminLTE/demo.js" type="text/javascript"></script>
	
    </body>
</html>