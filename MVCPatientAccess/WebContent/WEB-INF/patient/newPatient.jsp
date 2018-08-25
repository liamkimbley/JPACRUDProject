<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add New Patient</title>
</head>
<body>
 <form action="newPatient.do" method="POST">
    <label for="patientId">Patient ID:</label>
      <input type="text" name="pid" disabled="disabled">
      <br>
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
    <a href="index.do">Home</a>
</body>
</html>