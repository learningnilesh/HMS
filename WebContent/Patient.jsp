
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@page language="java"%>
<%@page import="java.sql.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<head>

<script language="javascript" type="text/javascript" src="datetimepicker.js">
</script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="CSS/style.css" rel="stylesheet" type="text/css" />
<link href="CSS/layout.css" rel="stylesheet" type="text/css" />
<script src="CSS/maxheight.js" type="text/javascript"></script>


<title>Insert title here</title>
</head>
<body>
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
                     	<li><a href="Home.jsp">Home</a></li>
                     	<li><a href="Patient.jsp" class="current">PATIENT DETAILS</a></li>
                     	<li><a href="InvestigationList.jsp">INVESTIGATION</a></li>
                     	<li><a href="EditHistoryRecord.jsp">HISTORYSHEET</a></li>
                     	<li><a href="PatientDisplayBill.jsp">ADD CHARGES</a></li>
                     	<li><a href="Discharge.jsp">DISCHARGE</a></li>
                     	<li><a href="AnotherPatient.jsp">Next Patient</a></li>
                     	
                        
                        
                    
                        
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
     Connection con = Database.getConnection();
     PreparedStatement ps = con.prepareStatement("select *  from patient where id_patient = ?");
     ps.setString(1,member.getMid());
     
     ResultSet rs = ps.executeQuery();

%>
<div style="width:500px;margin-left:30px;">
<form  action="">
<table width="140%" align="center"  cellspacing=10 cellpadding=10>

<tr style="color:white;background-color:navy;font:700 10pt verdana">

</tr>

<%
 while( rs.next())
 {
     String id_patient=rs.getString("id_patient");
%>
<tr>
<td><font size="2.5" style="color:white;background-color:navy;font:700 10pt verdana">Name Of Patient:</font>
<td> <%=rs.getString("patient_name")%>
<td><font size="2.5" style="color:white;background-color:navy;font:700 10pt verdana">Patient ID:</font>
<td><%=rs.getString("patient_id")%>

</tr>
<tr>
<td><font size="2.5" style="color:white;background-color:navy;font:700 10pt verdana">Age:</font>
<td><%=rs.getString("age")%>
<td><font size="2.5" style="color:white;background-color:navy;font:700 10pt verdana">Gender:</font>
<td><%=rs.getString("gender")%>
</tr>
<tr>
<td><font size="2.5" style="color:white;background-color:navy;font:700 10pt verdana">Address:</font>
<td><%=rs.getString("address")%>
</tr>
<tr>
<td><font size="2.5" style="color:white;background-color:navy;font:700 10pt verdana">Marital Status:</font>
<td><%=rs.getString("marital_status")%>
<td><font size="2.5" style="color:white;background-color:navy;font:700 10pt verdana">Occupation:</font>
<td><%=rs.getString("occupation")%>

</tr>
<tr>
<td><font size="2.5" style="color:white;background-color:navy;font:700 10pt verdana">Ph. No.:</font>
<td><%=rs.getString("phone_no")%>
</tr>
<tr>
<td><font size="2.5" style="color:white;background-color:navy;font:700 10pt verdana">DOA:</font>
<td><%=rs.getString("date_of_admit")%>
<td><font size="2.5" style="color:white;background-color:navy;font:700 10pt verdana">DOD:</font>
<td><%=rs.getString("date_of_discharge")%>
</tr>
<tr>
<td><font size="2.5" style="color:white;background-color:navy;font:700 10pt verdana">Name Of Nearest Relative:</font>
<td><%=rs.getString("nearest_relative")%>
<td><font size="2.5" style="color:white;background-color:navy;font:700 10pt verdana">Address:</font>
<td><%=rs.getString("relative_address")%>
</tr>
<tr>
<td><font size="2.5" style="color:white;background-color:navy;font:700 10pt verdana">Relative Relation:</font>
<td><%=rs.getString("relative_relation")%>
<td><font size="2.5" style="color:white;background-color:navy;font:700 10pt verdana">Relative Ph.:</font>
<td><%=rs.getString("relative_ph")%>
</tr>
<tr>
<td><font size="2.5" style="color:white;background-color:navy;font:700 10pt verdana">Police Station:</font>
<td><%=rs.getString("mlc_policestn") %>
<td><font size="2.5" style="color:white;background-color:navy;font:700 10pt verdana">MLC Reg. on Date:</font>
<td><%=rs.getString("mlc_regi_date")%>


</tr>
<tr>
<td><font size="2.5" style="color:white;background-color:navy;font:700 10pt verdana">Police Name:</font>
<td><%=rs.getString("mlc_policename")%>
</tr>
<tr>
<td><font size="2.5" style="color:white;background-color:navy;font:700 10pt verdana">MLC NO.:</font>
<td><%=rs.getString("mlc_no")%>
<td><font size="2.5" style="color:white;background-color:navy;font:700 10pt verdana">BUccas NO:</font>
<td><%=rs.getString("mlc_buccas_no")%>
</tr>
<tr>
<td><font size="2.5" style="color:white;background-color:navy;font:700 10pt verdana">Provisional Diagnosis:</font>
<td><%=rs.getString("provisional_diagnosis")%>
</tr>
<tr>
<td><font size="2.5" style="color:white;background-color:navy;font:700 10pt verdana">Final Diagnosis:</font>
<td><%=rs.getString("final_diagnosis")%>
</tr>
<tr>
<td><font size="2.5" style="color:white;background-color:navy;font:700 10pt verdana">Witness Name:</font>
<td><%=rs.getString("witness_name")%>
<td><font size="2.5" style="color:white;background-color:navy;font:700 10pt verdana">Witness Address:</font>
<td><%=rs.getString("witness_address")%>

</tr>

<tr>
         <td></td>
        <td> <input style="height:25px;width:120px;font-size:10pt;" type="button" value="EDIT" onclick="window.location.href='EditIpd.jsp?id=<%=id_patient %>'" /></td>
        <td> <input style="height:25px;width:120px;font-size:10pt;" type="button" value="PRINT" onclick="window.location.href='Patient_Pdf.jsp?id=<%=id_patient %>'" /></td>
        
    <!--  <td><a href="EditIpd.jsp?id=<%=id_patient %>"> Edit</a></td>
     <td><a href="Patient_Pdf.jsp?id=<%=id_patient %>"> Print</a></td>
      -->
      
    </tr>


<%
    }
    rs.close();
    ps.close();
    con.close();
%>

</table>
</form>
</div>


</body>
</html>