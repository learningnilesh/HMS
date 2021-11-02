<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@page import="java.io.*,java.sql.*,java.util.Date,java.text.*"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="CSS/style.css" rel="stylesheet" type="text/css" />
<link href="CSS/layout.css" rel="stylesheet" type="text/css" />
<script src="CSS/maxheight.js" type="text/javascript"></script>
<body bgcolor="#d0d0d0">

<h2><center>Admitted Patients:</center></h2>






<table  align="center" cellpadding="5" cellspacing="5" border="3" style="float: none;margin-left:500px">
<tr>
<td>Patient Id</td>
<td>Patient Name</td>
<td>EDIT</td>

</tr>

<%

try{
    Class.forName("com.mysql.jdbc.Driver");
      Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hmsdb", "root", "root");
      Statement st=con.createStatement();
      
      ResultSet rs=st.executeQuery("SELECT id_patient,patient_id,patient_name FROM patient where date_of_discharge='null'");
      
      while(rs.next())
      {
    	  String id1=rs.getString("patient_id");
    	  String id=rs.getString("id_patient");
    	  %>
    	  <tr>
    	  <td><%=id1 %></td>
    	  <td><%=rs.getString("patient_name") %></td>
    	  <td><a href="AdminEditIpd.jsp?id=<%=id%>">Edit</a></td>
    	  
    	  </tr>
    	  <%
      }
      
      
}
catch(Exception ex)
{
	ex.printStackTrace();
}


%>


</table>


</body>
</html>
