<%@page language="java"%>
<%@page import="java.sql.*"%>
<table border="1">

<%




//out.print( "<h2 align=\"center\">"+ipd_num+"</h2>");
try {
	//String ipd_num=request.getParameter("id");
	//out.print( "<h2 align=\"center\">"+ipd_num+"</h2>");
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/hmsdb", "root", "root");
String query = "select * from investigation_record_parent_master";
Statement st = conn.createStatement();
ResultSet rs = st.executeQuery(query);
%>

<h1> Drop down box or select element</h1>
<input type="text" size="30" value="<%  while(rs.next()){rs.getString(2);} %>" id="inputString" onkeyup="lookup(this.value);" onblur="fill();" />


<% } 
catch(Exception e){}
%>
</table>