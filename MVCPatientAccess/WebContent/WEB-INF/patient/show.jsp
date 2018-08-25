<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${patient.lastName}, ${patient.firstName}</title>
</head>
<body>

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
      <br>
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
    <a href="index.do">Home</a>
</body>
</html>