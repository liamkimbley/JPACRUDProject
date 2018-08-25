<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
<title>Patient Database</title>
</head>
<body>
<div class="container">
<h3>Patient Database</h3>
<br>
	<div class="row align-items-center no-gutters mb-4 mb-lg-5">
		<h4>Lookup Patient By ID </h4>
		
			<form action="getPatient.do" method="GET">
				<input type="text" name="pid" /> 
				<input type="submit" value="Find Patient" />
			</form>
	</div>
			
		<div class="row align-items-center no-gutters mb-4 mb-lg-5">
		<h4>Lookup Patient By Name</h4>
		<br>
			<form action="getPatientByName.do" method="GET">
				<input type="text" name="lastName" /> 
				<input type="submit" value="Find Patient" />
			</form>
		</div>
			
		<div class="col-xl-6 col-lg-6">
			<form action="listPatients.do" method="GET">
				 <input type="submit" value="Get All Patients" />
			</form>
			
			<form action="newPatient.do" method="GET">
				 <input type="submit" value="Add New Patient" />
			</form>
		</div>
</div>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

</body>
</html>