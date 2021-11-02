<%@ page language="java" import="java.sql.*" %>
<% response.setContentType("text/html");%>
<%
String str=request.getParameter("queryString");
try {
String connectionURL = "jdbc:mysql://localhost:3306/hmsdb";
Connection con;

Class.forName("com.mysql.jdbc.Driver");

// Get a Connection to the database
con = DriverManager.getConnection(connectionURL, "root", "root"); 
//Add the data into the database
String sql = "SELECT patient_name FROM patient WHERE patient_name LIKE '"+str+"%' LIMIT 10";
Statement stm = con.createStatement();
stm.executeQuery(sql);
ResultSet rs= stm.getResultSet();
while (rs.next ()){
out.println("<li onclick='fill("+rs.getString("patient_name")+");'>"+rs.getString("patient_name")+"</li>");
}}catch(Exception e){
out.println("Exception is ;"+e);
}
%>
