<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Hello</title>
</head>
<body>
<h2>Hello Patient choose what you want</h2>
    <form action="viewDetails.jsp" method="post">
        <input type="submit" name="action" value="View Patients">
       
    </form>
    <form action="Patient.jsp" method="post">
      <br>
        <input type="submit" name="action1" value="Register">
    </form>
</body>
</html>