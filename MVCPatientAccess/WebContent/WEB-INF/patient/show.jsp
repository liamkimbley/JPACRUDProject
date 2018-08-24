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

</body>
</html>