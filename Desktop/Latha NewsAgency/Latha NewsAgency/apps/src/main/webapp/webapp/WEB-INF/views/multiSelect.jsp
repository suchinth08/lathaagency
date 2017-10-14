<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
  		 <script src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
    	 <script src="${pageContext.request.contextPath}/resources/js/bootstrap-multiselect.js"></script>
    	 <script src="${pageContext.request.contextPath}/resources/js/bootstrap-multiselect.min.js"></script>
    	 
    	 
        <!-- bootstrap 3.0.2 -->
        <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
         <!-- multiSelect -->
        <link href="${pageContext.request.contextPath}/resources/css/bootstrap-multiselect.css" rel="stylesheet" type="text/css" />



</head>
<body>
		    <!-- Build your select: -->
    <select id="example-getting-started" multiple="multiple">
        <option value="cheese">Cheese</option>
        <option value="tomatoes">Tomatoes</option>
        <option value="mozarella">Mozzarella</option>
        <option value="mushrooms">Mushrooms</option>
        <option value="pepperoni">Pepperoni</option>
        <option value="onions">Onions</option>
    </select>
    
    
    

    <!-- Initialize the plugin: -->
    <script type="text/javascript">
        $(document).ready(function() {
            $('#example-getting-started').multiselect();
        });
    </script>

    



</body>
</html>