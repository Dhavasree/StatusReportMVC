<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<title>Insert title here</title>
<style type="text/css">
.span6 {
	border: 4px solid black;
	 width:800px;
	 padding:10px;
}
#table
{
float:right;
text-color:skyblue;
text-decoration: underline;
}
</style>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script> 
	  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
   <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script> 
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.15.1/moment.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	startTime();
	var t;
	 $("#status1").submit(function(e){
		 e.preventDefault();
		 clearTimeout(t);
		 $("#statusBtn").css("pointer-events", "none");
		 $("#currentWeekStatus").attr("readonly", true); 
		 $("#nextWeekStatus").attr("readonly", true);
		 $("#issueNote").attr("readonly", true);
		 addFunction();
		 
	}); 
function startTime() {
    var today1 = moment().format('DD/MM/YYYY HH:mm:ss');
    document.getElementById('timeStamp').value = today1;
  t = setTimeout(startTime, 500); 
}
function addFunction()
{
$.ajax({
	type : 'post',
	url : 'add',
	data : $('form[name="statusTable"]').serialize(),
	success : function(response) {
		if (response.validated) {
			$('#resultContainer').show();
			 var col=response.timeStamp;
			 var d=new Date(col);
			$("#table").show();
		}
		else
			{
			alert("error");
			}
	}
});
};
});
</script>
</head>
<body>
<div id="resultContainer" style="display: none;">
				<h4 style="color: green;">Successfully Stored in Database</h4>
			</div>	
			<div align="center">
<div class="span6">	
 <a href="index" id="table" style="display: none;">Home</a> 
<form id="status1" class="form-signin" name="statusTable">
	<h1 align="center">Weekly status Report</h1>
		 <table id="statusTable" >
				<tr><td><Strong>User Name :</Strong></td>
				<td><input type="text" name="userName" class="form-group" id="userName" value="${userName}" readonly/></td></tr>
				<tr><td><Strong>Report Date :</Strong></td>
				<td><input type="text" name="statusReport" class="form-group" id="statusReport" value="${statusReport}" readonly/></td></tr>
				<tr><td><Strong>Current Week Status :</Strong></td> 
				<td><textarea name="currentWeekStatus" class="form-group" id="currentWeekStatus" rows="5" cols="60" required></textarea></td></tr>
				<tr><td><Strong>Next Week Status :</Strong></td>
				<td><textarea name="nextWeekStatus" class="form-group" id="nextWeekStatus" rows="5" cols="60" required></textarea></td></tr>
                <tr><td><Strong>Issue Note :</Strong></td>
				<td><textarea name="issueNote" class="form-group" id="issueNote" rows="5" cols="60" required/></textarea></td></tr>
		         <tr><td><Strong>Date and Time of Submission :</Strong></td>
				<td><input type="datetime" name="timeStamp" class="form-group" id="timeStamp" readonly/></td></tr>
		        <tr><td></td><td><input type="submit" id="statusBtn" class="btn btn-success" value="submit"></td></tr>
</table> 
			</form>
			
			</div>
			</div>
				
</body>
</html>