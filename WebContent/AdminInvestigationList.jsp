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


<jsp:useBean id="member" scope="session"  class="hospital.patient" />

<%@ page import="java.util.*,java.sql.*,hospital.*"%>



 
  <body id="page4" onload="new ElementMaxHeight();">
	<div id="main">
		<!-- header -->
		<div id="header" class="small">
			<div class="row-1">
         	<div class="wrapper">
            	<div class="logo">
               	
          <h1><a href="Home.jsp">CHOUGALE</a></h1>
                  
               <font size="4" face="Verdana"> <strong>Neurology Centre & Nursing Home</strong>
                 </font>
               </div>
               
        <div class="phones"> +919404405361<br />
              0231-2540454
               </div>
            </div>
         </div>
         
 
<div class="row-2 alt">
         	<div class="indent">
               <!-- header-box-small begin -->
               <div class="header-box-small">
                  <div class="inner">
                     <ul class="nav">
                     	<li><a href="AdminHome.jsp">Home</a></li>
                     	<li><a href="AdminPatient.jsp" >PATIENT DETAILS</a></li>
                     	<li><a href="AdminInvestigationList.jsp" class="current">INVESTIGATION</a></li>
                     	<li><a href="AdminEditHistoryRecord.jsp">HISTORYSHEET</a></li>
                     	<li><a href="AdminPatientDisplayBill.jsp">ADD CHARGES</a></li>
                     	<li><a href="AdminDischarge.jsp">DISCHARGE</a></li>
                     	<li><a href="AdminAnotherPatient.jsp">Next Patient</a></li>
                     	
                        
                    
                        
                      </ul>
                  </div>
               </div>
               <!-- header-box-small end -->
            </div>
         </div>
         </div>
   
		<!-- content -->
		<div id="content">
            	
        <div class="indent"> 
                 
          <div class="extra-wrap"> 
            






<%

String id_patient=member.getMid();
%>
 
<table  align="center" cellpadding="5" cellspacing="5" border="3" style="float: none;margin-left:250px">
<tr>
<td>PATIENT NAME</td>
<td>DATE</td>
<td>VIEW</td>
<td>EDIT</td>

</tr>

<%

try{
    Class.forName("com.mysql.jdbc.Driver");
      Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hmsdb", "root", "root");
      Statement st=con.createStatement();
      PreparedStatement ps = con.prepareStatement("SELECT patient_name,date FROM investigation_record where id_patient = ?");
      ps.setString(1,member.getMid());
      ResultSet rs = ps.executeQuery();
      
      while(rs.next())
      {
    	 String id=member.getMid();
    	 String getdate=rs.getString("date");
    	  %>
    	  <tr>
    	
    	  <td><%=rs.getString("patient_name") %></td>
    	  <td><%=rs.getString("date") %></td>
    	  <td><a href="AdminInvestigationView.jsp?date=<%=getdate%>">View</a></td>
    	  <td><a href="AdminInvestigationEdit.jsp?date=<%=getdate%>">Edit</a></td>
    
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
<table align="center" width="100%">
<tr><td><center>
<br><input  style="height:25px;width:120px;font-size:10pt;" type="button"  value="ADD RECORD" onclick="window.location.href='AdminInvestigationsheet.jsp'" /></center></td>
</tr>
</table>
</body>
</html>
