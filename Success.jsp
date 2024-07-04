<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Success</title>
</head>
<body>
<h2>Successful registration</h2>
<br>
<form action="viewDetails.jsp" method="post">
        <input type="submit" name="action" value="View Patients">
       
    </form>
    <form action="Patient.jsp" method="post">
      <br>
        <input type="submit" name="action1" value="Register">
    </form>
</body>
</html>