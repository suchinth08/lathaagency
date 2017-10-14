<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
		<script type="text/javascript">
			function assign() {
			
			
			console.log("Inside assign method");
			alert("Called assign method......");
			var orderNumber = $("#order").val();
			var devContact= $("#dev").val();
	
	
}

	
</script>

		
</head>
<body>

	
	 <button type="submit" class="btn btn-primary" onClick="assign();">Assign</button>

</body>
</html>