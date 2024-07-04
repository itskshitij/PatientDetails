<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Details saved</title>
</head>
<body>

<%
String name = request.getParameter("patient_name");
int age = Integer.parseInt(request.getParameter("patient_age"));
String gender = request.getParameter("patient_gender");
long no = Long.parseLong(request.getParameter("patient_contact"));
String email = request.getParameter("patient_email");
String address = request.getParameter("patient_address");

Connection con = null;


try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Patient","root","root");
	String Query = "insert into patientjsp values(?,?,?,?,?,?)";
	PreparedStatement st = con.prepareStatement(Query);
	st.setString(1, name);
	st.setInt(2,age);
	st.setString(3, gender);
	st.setLong(4, no);
	st.setString(5, email);
	st.setString(6, address);
	int n = st.executeUpdate();
	if(n>0){%>
		 <jsp:forward page = "Success.jsp" />
	<%}else{
		%> <jsp:forward page = "Error.jsp" />
	<%}
	st.close();
	con.close();
}
catch(Exception e){
	out.println(e);
}
%>
 <jsp:forward page = "Success.jsp" />
</body>
</html>