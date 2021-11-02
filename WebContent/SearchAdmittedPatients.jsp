<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table>
<tr>
<th><b>Ipd no.</b></th>
<th>Patients name </th>

</tr>
<%
Connection con=null;
Statement stmt=null;
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hmsdb", "root", "root");
stmt=con.createStatement();
String s2=request.getParameter("id");
%>
<%

ResultSet res=stmt.executeQuery("select ipd_no,patient_name from patient");
while(res.next())

%>
<tr>
<td><%=res.getString("ipd_no")%></td>
<td><%=res.getString("patient_name")%></td>

</tr>



</table>

</body>
</html>