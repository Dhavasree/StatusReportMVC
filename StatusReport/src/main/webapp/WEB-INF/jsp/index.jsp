<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
#status {
	border: 4px solid black;
	 width:800px;
	 padding:10px;
}
</style>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> 
 <script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	 <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script> 
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	
	var dayOfWeek = 5;//friday
    var date = new Date();
    var diff = date.getDay() - dayOfWeek;
    if (diff > 0) {
        date.setDate(date.getDate() + 6);
    }
    else if (diff < 0) {
        date.setDate(date.getDate() + ((-1) * diff))
    }
   $("#statusReport").val(date.getDate()+"/"+((date.getMonth())+1)+"/"+date.getFullYear()); 
	$('#statusReport').datepicker({
		minDate: 0,
		dateFormat: 'dd/mm/yy', 
		beforeShowDay: function(date)
		{
			if(date.getDay()==5)
				{
				return[true];
				}
			return [false];
		}
	});
		 
	  });
</script>
</head>
<body>
<div class="span6" align="center">
<form id="status" action="value" method="post">
	<h1 align="center">Weekly Status Report</h1>
	<table id="statusTable" >
				<tr><td><Strong>User Name :</Strong></td>
				<td><input type="text" name="userName" class="form-group" id="userName" required/></td></tr>
				<tr><td><Strong>Report Date :</Strong></td>
				<td><input type="text" name="statusReport" class="form-group" id="statusReport" required/></td></tr>
			<tr><td></td><td><input type="submit" id="statusBtn" class="btn btn-success" value="submit"></td></tr>
			</table>
			</form>
			</div>			
</body>
</html>