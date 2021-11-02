<%@page session="true" import="java.io.*"%>
<html>
<body bgcolor="#d0d0d0">
<br></br>
<br></br>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<table>
<tr>
<th>name</th>
<th>id</th>
<th>age</th>
<th>address</th>
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

ResultSet res=stmt.executeQuery("select * from patient where ipd_no='"+s2+"'");
while(res.next())
{
%>
<tr>
<td><%=res.getString("patient_name")%></td>
<td><%=res.getString("ipd_no")%></td>
<td><%=res.getString("age")%></td>
<td><%=res.getString("address")%></td>
</tr>
<%
}
%>
</table>
</body>
</html>
