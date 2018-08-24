<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Patient Database</title>
</head>
<body>

<h3>Lookup Patient By ID</h3>

	<form action="getPatient.do" method="GET">
		<input type="text" name="pid" /> <input type="submit"
			value="Find Patient" />
	</form>

</body>
</html>