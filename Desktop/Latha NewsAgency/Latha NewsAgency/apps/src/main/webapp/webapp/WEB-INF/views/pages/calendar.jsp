<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>AdminLTE | Calendar</title>
        <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
        <!-- bootstrap 3.0.2 -->
        <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <!-- font Awesome -->
        <link href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
        <!-- Ionicons -->
        <link href="${pageContext.request.contextPath}/resources/css/ionicons.min.css" rel="stylesheet" type="text/css" />
        <!-- fullCalendar -->
        <link href="${pageContext.request.contextPath}/resources/css/fullcalendar/fullcalendar.css" rel="stylesheet" type="text/css" />
        <link href="${pageContext.request.contextPath}/resources/css/fullcalendar/fullcalendar.print.css" rel="stylesheet" type="text/css" media='print' />
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
			Calendar <small>Control panel</small>
		</h1>
		<ol class="breadcrumb">
			<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
			<li class="active">Calendar</li>
		</ol>
	</section>

	<!-- Main content -->
	<section class="content">


		<div class="row">
			<div class="col-md-3">
				<div class="box box-primary">
					<div class="box-header">
						<h4 class="box-title">Draggable Events</h4>
					</div>
					<div class="box-body">
						<!-- the events -->
						<div id='external-events'>
							
							<p>
								<input type='checkbox' id='drop-remove' /> <label
									for='drop-remove'>remove after drop</label>
							</p>
						</div>
					</div>
					<!-- /.box-body -->
				</div>
				<!-- /. box -->
				<div class="box box-primary">
					<div class="box-header">
						<h3 class="box-title">Create Event</h3>
					</div>
					<div class="box-body">
						<div class="btn-group" style="width: 100%; margin-bottom: 10px;">
							<button type="button" id="color-chooser-btn"
								class="btn btn-danger btn-block btn-sm dropdown-toggle"
								data-toggle="dropdown">
								Color <span class="caret"></span>
							</button>
							<ul class="dropdown-menu" id="color-chooser">
								<li><a class="text-green" href="#"><i
										class="fa fa-square"></i> Green</a></li>
								<li><a class="text-blue" href="#"><i
										class="fa fa-square"></i> Blue</a></li>
								<li><a class="text-navy" href="#"><i
										class="fa fa-square"></i> Navy</a></li>
								<li><a class="text-yellow" href="#"><i
										class="fa fa-square"></i> Yellow</a></li>
								<li><a class="text-orange" href="#"><i
										class="fa fa-square"></i> Orange</a></li>
								<li><a class="text-aqua" href="#"><i
										class="fa fa-square"></i> Aqua</a></li>
								<li><a class="text-red" href="#"><i
										class="fa fa-square"></i> Red</a></li>
								<li><a class="text-fuchsia" href="#"><i
										class="fa fa-square"></i> Fuchsia</a></li>
								<li><a class="text-purple" href="#"><i
										class="fa fa-square"></i> Purple</a></li>
							</ul>
						</div>
						<!-- /btn-group -->
						<div class="input-group">
							<input id="new-event" type="text" class="form-control"
								placeholder="Event Title">
							<div class="input-group-btn">
								<button id="add-new-event" type="button"
									class="btn btn-default btn-flat">Add</button>
							</div>
							<!-- /btn-group -->
						</div>
						<!-- /input-group -->
					</div>
				</div>
			</div>
			<!-- /.col -->
			<div class="col-md-9">
				<div class="box box-primary">
					<div class="box-body no-padding">
						<!-- THE CALENDAR -->
						<div id="calendar"></div>
					</div>
					<!-- /.box-body -->
				</div>
				<!-- /. box -->
			</div>
			<!-- /.col -->
		</div>
		<!-- /.row -->


	</section>
	<!-- /.content -->

	<!-- jQuery 2.0.2 -->
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
        <!-- jQuery UI 1.10.3 -->
        <script src="${pageContext.request.contextPath}/resources/js/jquery-ui-1.10.3.min.js" type="text/javascript"></script>
        <!-- Bootstrap -->
        <script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js" type="text/javascript"></script>
        <!-- AdminLTE App -->
        <script src="${pageContext.request.contextPath}/resources/js/AdminLTE/app.js" type="text/javascript"></script>
        <!-- AdminLTE for demo purposes -->
        <script src="${pageContext.request.contextPath}/resources/js/AdminLTE/demo.js" type="text/javascript"></script>        
        <!-- fullCalendar -->
        <script src="${pageContext.request.contextPath}/resources/js/plugins/fullcalendar/fullcalendar.min.js" type="text/javascript"></script>
        <!-- Page specific script -->
        <script type="text/javascript">
									$(function() {

										/* initialize the external events
										 -----------------------------------------------------------------*/
										function ini_events(ele) {
											ele.each(function() {

												// create an Event Object (http://arshaw.com/fullcalendar/docs/event_data/Event_Object/)
												// it doesn't need to have a start or end
												var eventObject = {
													title : $.trim($(this)
															.text())
												// use the element's text as the event title
												};

												// store the Event Object in the DOM element so we can get to it later
												$(this).data('eventObject',
														eventObject);

												// make the event draggable using jQuery UI
												$(this).draggable({
													zIndex : 1070,
													revert : true, // will cause the event to go back to its
													revertDuration : 0
												//  original position after the drag
												});

											});
										}
										ini_events($('#external-events div.external-event'));

										/* initialize the calendar
										 -----------------------------------------------------------------*/
										//Date for the calendar events (dummy data)
										var date = new Date();
										var d = date.getDate(), m = date
												.getMonth(), y = date
												.getFullYear();
										$('#calendar')
												.fullCalendar(
														{
															header : {
																left : 'prev,next today',
																center : 'title',
																right : 'month,agendaWeek,agendaDay'
															},
															buttonText : {//This is to add icons to the visible buttons
																prev : "<span class='fa fa-caret-left'></span>",
																next : "<span class='fa fa-caret-right'></span>",
																today : 'today',
																month : 'month',
																week : 'week',
																day : 'day'
															},
															//Random default events
															events : [
																	 ],
															editable : true,
															droppable : true, // this allows things to be dropped onto the calendar !!!
															drop : function(
																	date,
																	allDay) { // this function is called when something is dropped

																// retrieve the dropped element's stored Event Object
																var originalEventObject = $(
																		this)
																		.data(
																				'eventObject');

																// we need to copy it, so that multiple events don't have a reference to the same object
																var copiedEventObject = $
																		.extend(
																				{},
																				originalEventObject);

																// assign it the date that was reported
																copiedEventObject.start = date;
																copiedEventObject.allDay = allDay;
																copiedEventObject.backgroundColor = $(
																		this)
																		.css(
																				"background-color");
																copiedEventObject.borderColor = $(
																		this)
																		.css(
																				"border-color");

																// render the event on the calendar
																// the last `true` argument determines if the event "sticks" (http://arshaw.com/fullcalendar/docs/event_rendering/renderEvent/)
																$('#calendar')
																		.fullCalendar(
																				'renderEvent',
																				copiedEventObject,
																				true);

																// is the "remove after drop" checkbox checked?
																if ($(
																		'#drop-remove')
																		.is(
																				':checked')) {
																	// if so, remove the element from the "Draggable Events" list
																	$(this)
																			.remove();
																}

															}
														});

										/* ADDING EVENTS */
										var currColor = "#f56954"; //Red by default
										//Color chooser button
										var colorChooser = $("#color-chooser-btn");
										$("#color-chooser > li > a")
												.click(
														function(e) {
															e.preventDefault();
															//Save color
															currColor = $(this)
																	.css(
																			"color");
															//Add color effect to button
															colorChooser
																	.css(
																			{
																				"background-color" : currColor,
																				"border-color" : currColor
																			})
																	.html(
																			$(
																					this)
																					.text()
																					+ ' <span class="caret"></span>');
														});
										$("#add-new-event")
												.click(
														function(e) {
															e.preventDefault();
															//Get value and make sure it is not null
															var val = $(
																	"#new-event")
																	.val();
															if (val.length == 0) {
																return;
															}

															//Create event
															var event = $("<div />");
															event
																	.css(
																			{
																				"background-color" : currColor,
																				"border-color" : currColor,
																				"color" : "#fff"
																			})
																	.addClass(
																			"external-event");
															event.html(val);
															$(
																	'#external-events')
																	.prepend(
																			event);

															//Add draggable funtionality
															ini_events(event);

															//Remove event from text input
															$("#new-event")
																	.val("");
														});
									});
								</script>

    </body>
</html>