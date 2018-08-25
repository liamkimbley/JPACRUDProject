<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
<title>Add New Patient</title>
</head>
<body>
<div class="container">
		<h3>Add New Patient</h3>
	<div class="row align-items-center no-gutters mb-4 mb-lg-5">
		 <form action="newPatient.do" method="POST">
		       <label for="firstName">First Name:</label>
		      <input type="text" name="firstName">
		      <br>
		      <label for="lastName">Last Name:</label>
		      <input type="text" name="lastName">
		      <br>
		      <label for="email">Patient Email:</label>
		      <input type="text" name="email">
		      <br>
		      <label for="doctor">Doctor:</label>
		      <input type="text" name="doctor">
		      <br>
		      <input type="submit" value="Add Patient">
		    </form>
    	</div>
		    <a href="index.do">Home</a>
    </div>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    
</body>
</html>