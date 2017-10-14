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
						<h3>13</h3>
						<p>New QCs created</p>
					</div>
					<div class="icon">
						<i class="ion ion-bag"></i>
					</div>
					<a href="#" class="small-box-footer"> More info <i
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
						<p>QC Completion Rate</p>
					</div>
					<div class="icon">
						<i class="ion ion-stats-bars"></i>
					</div>
					<a href="#" class="small-box-footer"> More info <i
						class="fa fa-arrow-circle-right"></i>
					</a>
				</div>
			</div>
			<!-- ./col -->
			<div class="col-lg-3 col-xs-6">
				<!-- small box -->
				<div class="small-box bg-yellow">
					<div class="inner">
						<h3>6</h3>
						<p>Under Development</p>
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
						<h3>7</h3>
						<p>In Testing</p>
					</div>
					<div class="icon">
						<i class="ion ion-pie-graph"></i>
					</div>
					<a href="#" class="small-box-footer"> More info <i
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
							QC Trend</li>
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

				<!-- Calendar -->
				<div class="box box-warning">
					<div class="box-header">
						<i class="fa fa-calendar"></i>
						<div class="box-title">Calendar</div>

						<!-- tools box -->
						<div class="pull-right box-tools">
							<!-- button with a dropdown -->
							<div class="btn-group">
								<button class="btn btn-warning btn-sm dropdown-toggle"
									data-toggle="dropdown">
									<i class="fa fa-bars"></i>
								</button>
								<ul class="dropdown-menu pull-right" role="menu">
									<li><a href="#">Add new event</a></li>
									<li><a href="#">Clear events</a></li>
									<li class="divider"></li>
									<li><a href="#">View calendar</a></li>
								</ul>
							</div>
						</div>
						<!-- /. tools -->
					</div>
					<!-- /.box-header -->
					<div class="box-body no-padding">
						<!--The calendar -->
						<div id="calendar"></div>
					</div>
					<!-- /.box-body -->
				</div>
				<!-- /.box -->

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
						<button class="btn btn-info">
							<i class="fa fa-download"></i> Generate PDF
						</button>
					</div>
				</div>
				<!-- /.box -->

				<!-- Chat box -->
				<div class="box box-success">
					<div class="box-header">
						<h3 class="box-title">
							<i class="fa fa-comments-o"></i> Chat
						</h3>
						<div class="box-tools pull-right" data-toggle="tooltip"
							title="Status">
							<div class="btn-group" data-toggle="btn-toggle">
								<button type="button" class="btn btn-default btn-sm active">
									<i class="fa fa-square text-green"></i>
								</button>
								<button type="button" class="btn btn-default btn-sm">
									<i class="fa fa-square text-red"></i>
								</button>
							</div>
						</div>
					</div>
					<div class="box-body chat" id="chat-box">
						<!-- chat item -->
						<div class="item">
							<img
								src="${pageContext.request.contextPath}/resources/img/avatar.png"
								alt="user image" class="online" />
							<p class="message">
								<a href="#" class="name"> <small
									class="text-muted pull-right"><i class="fa fa-clock-o"></i>
										2:15</small> Ajay Nair
								</a> I would like to discuss about the Weekend deployment plan. Please schedule a meeting
							</p>
							
							<!-- /.attachment -->
						</div>
						<!-- /.item -->
						<!-- chat item -->
						<div class="item">
							<img
								src="${pageContext.request.contextPath}/resources/img/avatar2.png"
								alt="user image" class="offline" />
							<p class="message">
								<a href="#" class="name"> <small
									class="text-muted pull-right"><i class="fa fa-clock-o"></i>
										5:15</small> Padma
								</a> Kodanda, can you send me the latest MRRB Report
							</p>
						</div>
						<!-- /.item -->
						<!-- chat item -->
						<div class="item">
							<img
								src="${pageContext.request.contextPath}/resources/img/avatar3.png"
								alt="user image" class="offline" />
							<p class="message">
								<a href="#" class="name"> <small
									class="text-muted pull-right"><i class="fa fa-clock-o"></i>
										5:30</small> Mercy
								</a> Please provide me Environment details
							</p>
						</div>
						<!-- /.item -->
					</div>
					<!-- /.chat -->
					<div class="box-footer">
						<div class="input-group">
							<input class="form-control" placeholder="Type message..." />
							<div class="input-group-btn">
								<button class="btn btn-success">
									<i class="fa fa-plus"></i>
								</button>
							</div>
						</div>
					</div>
				</div>
				<!-- /.box (chat box) -->

				<!-- TO DO List -->
				<div class="box box-primary">
					<div class="box-header">
						<i class="ion ion-clipboard"></i>
						<h3 class="box-title">To Do List</h3>
						<div class="box-tools pull-right">
							<ul class="pagination pagination-sm inline">
								<li><a href="#">&laquo;</a></li>
								<li><a href="#">1</a></li>
								<li><a href="#">2</a></li>
								<li><a href="#">3</a></li>
								<li><a href="#">&raquo;</a></li>
							</ul>
						</div>
					</div>
					<!-- /.box-header -->
					<div class="box-body">
						<ul class="todo-list">
							<li>
								<!-- drag handle --> <span class="handle"> <i
									class="fa fa-ellipsis-v"></i> <i class="fa fa-ellipsis-v"></i>
							</span> <!-- checkbox --> <input type="checkbox" value="" name="" /> <!-- todo text -->
								<span class="text">Work on PA QC</span> <!-- Emphasis label -->
								<small class="label label-danger"><i
									class="fa fa-clock-o"></i> 2 mins</small> <!-- General tools such as edit or delete-->
								<div class="tools">
									<i class="fa fa-edit"></i> <i class="fa fa-trash-o"></i>
								</div>
							</li>
							<li><span class="handle"> <i class="fa fa-ellipsis-v"></i>
									<i class="fa fa-ellipsis-v"></i>
							</span> <input type="checkbox" value="" name="" /> <span class="text">Discuss with Ajay about weekend deployment
							</span> <small class="label label-info"><i
									class="fa fa-clock-o"></i> 4 hours</small>
								<div class="tools">
									<i class="fa fa-edit"></i> <i class="fa fa-trash-o"></i>
								</div></li>
							<li><span class="handle"> <i class="fa fa-ellipsis-v"></i>
									<i class="fa fa-ellipsis-v"></i>
							</span> <input type="checkbox" value="" name="" /> <span class="text">Send report to Managers</span> <small class="label label-warning"><i
									class="fa fa-clock-o"></i> 1 day</small>
								<div class="tools">
									<i class="fa fa-edit"></i> <i class="fa fa-trash-o"></i>
								</div></li>
							<li><span class="handle"> <i class="fa fa-ellipsis-v"></i>
									<i class="fa fa-ellipsis-v"></i>
							</span> <input type="checkbox" value="" name="" /> <span class="text">Create a CHG Ticket</span> <small class="label label-success"><i
									class="fa fa-clock-o"></i> 3 days</small>
								<div class="tools">
									<i class="fa fa-edit"></i> <i class="fa fa-trash-o"></i>
								</div></li>
							<li><span class="handle"> <i class="fa fa-ellipsis-v"></i>
									<i class="fa fa-ellipsis-v"></i>
							</span> <input type="checkbox" value="" name="" /> <span class="text">Attend Mercy's call</span> <small
								class="label label-primary"><i class="fa fa-clock-o"></i>
									1 week</small>
								<div class="tools">
									<i class="fa fa-edit"></i> <i class="fa fa-trash-o"></i>
								</div></li>
							
						</ul>
					</div>
					<!-- /.box-body -->
					<div class="box-footer clearfix no-border">
						<button class="btn btn-default pull-right">
							<i class="fa fa-plus"></i> Add item
						</button>
					</div>
				</div>
				<!-- /.box -->

			</section>
			<!-- right col -->
		</div>
		<!-- /.row (main row) -->

	</section>
	<!-- /.content -->
	
	<!-- add new calendar event modal -->


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