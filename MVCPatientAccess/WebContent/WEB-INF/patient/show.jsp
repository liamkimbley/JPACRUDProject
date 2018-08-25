<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">

<title>Patient Information</title>
</head>
<body>

<c:choose>

	<c:when test="${! empty patients }">
		<table>
				<tr>
					<td><h3>All </h3></td>
					<td><h3> Patients: </h3></td>
				</tr>
				<c:forEach var="patient" items="${patients}">
					<tr>
						<td>ID: ${patient.id}</td>
						<td>Patient: <a href="getPatient.do?pid=${patient.id }">${patient.firstName} ${patient.lastName}</a></td>
						<td>Doctor ${patient.doctor}</td>
					</tr>
				</c:forEach>
		</table>
	</c:when>  
	
	<c:when test="${! empty patient }">	
		<div>
		  <h4>Patient ID: ${patient.id} <h4>
		  <p>Patient Name: ${patient.firstName} ${patient.lastName}</p> 
		  <p>Email: ${patient.email}</p>
		  <p>Doctor ${patient.doctor}</p>
		</div>
		<br>
		<h3>Update Patient Information</h3>
		
		  <form action="updatePatient.do" method="POST">
		    <label for="patientId"></label>
		      <input type="hidden" value="${patient.id}" name="id">
		    <label for="patientId">Patient ID:</label>
		      <input type="text" value="${patient.id}" name="patientId" disabled="disabled">
		      <br>
		        <label for="firstName">First Name:</label>
		      <input type="text" value="${patient.firstName }" name="firstName">
		      <br>
		      <label for="lastName">Last Name:</label>
		      <input type="text" value="${patient.lastName }" name="lastName">
		      <br>
		      <label for="email">Patient Email:</label>
		      <input type="text" value="${patient.email }" name="email">
		      <br>
		      <label for="doctor">Doctor:</label>
		      <input type="text" value="${patient.doctor }" name="doctor">
		      <br>
		      <input type="submit" value="Update Patient">
		    </form>
		    <form action="deletePatient.do" method="POST">
		    <label for="patientId"></label>
		      <input type="hidden" value="${patient.id}" name="id">
		    <br>
		      <input type="submit" value="Delete Patient">
		    </form>
	</c:when>	  
	
	    <c:otherwise>
  			  No Patient found<br>
 		 </c:otherwise>

</c:choose>
<br>
<a href="index.do">Home</a>
    
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    
</body>
</html>