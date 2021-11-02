<%@page language="java"%>
<%@page import="java.sql.*"%>
<table border="1">

<%




//out.print( "<h2 align=\"center\">"+ipd_num+"</h2>");
try {
	String ipd_num=request.getParameter("id");
	out.print( "<h2 align=\"center\">"+ipd_num+"</h2>");
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/hmsdb", "root", "root");
String query = "select * from patient where opd_no='"+ipd_num+"'";
Statement st = conn.createStatement();
ResultSet rs = st.executeQuery(query);
if(rs.next()){
%>
 <tr>
<tr><td>Name</td><td><input type="text" name="name" value="<%=rs.getString("patient_name")%>"></td></tr>
<tr><td>Address</td><td><input type="text" name="address" value="<%=rs.getString("address")%>"></td></tr>
<tr><td>Age</td><td><input type="text" name="age" value="<%=rs.getString("age")%>"></td></tr>
<tr><td>Gender</td><td><input type="text" name="gender" value="<%=rs.getString("gender")%>"></td></tr>

<%
}
}
catch(Exception e){}
%>
</table>