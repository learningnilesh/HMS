<%@page session="true" import="java.io.*"%>
<html>
<body bgcolor="#d0d0d0">
<br></br>
<br></br>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%
Connection con=null;
Statement stmt=null;
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hmsdb", "root", "root");
stmt=con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_UPDATABLE);
ResultSet rs = stmt.executeQuery("SELECT  address  FROM patient");
%>
<select name="address">
<%
if(rs.next())
{
rs.beforeFirst();
String address=rs.getString("address");//get value from database
while(rs.next())
{
{
%>
        <option value="<%= address%>"><%= address%></option>
<%
}
}
}
else
{%>
        <option>No city in Database   </option>
<%}
%>
</select>