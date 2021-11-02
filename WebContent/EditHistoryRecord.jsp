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
                     	<li><a href="Patient.jsp" >PATIENT DETAILS</a></li>
                     	<li><a href="InvestigationList.jsp">INVESTIGATION</a></li>
                     	<li><a href="EditHistoryRecord.jsp" class="current">HISTORYSHEET</a></li>
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
	String id_patient1=member.getMid();
     Connection con = Database.getConnection();
     PreparedStatement ps = con.prepareStatement("select *  from history_record where id_patient = ?");
     ps.setString(1,member.getMid());
     
     ResultSet rs = ps.executeQuery();

   

%>
<div style="width:650px;margin-left:30px;">
<form  action="">
<table width="100%" align="center"  cellspacing=5 cellpadding=5>

<tr style="color:white;background-color:navy;font:700 10pt verdana">

</tr>

<%
 while( rs.next())
 {
     String id_patient=rs.getString("id_patient");
%>
<tbody>
<tr>
<td><font size="2.5" style="color:white;background-color:navy;font:700 10pt verdana">Patient ID:</font>
<td><%=rs.getString("patient_id")%>
</tr>
</tbody>
<tr>
<td><font size="2.5" style="color:white;background-color:navy;font:700 10pt verdana">Name Of Patient:</font>
<td> <%=rs.getString("patient_name")%>


</tr>
<tr>
<td><font size="2.5" style="color:white;background-color:navy;font:700 10pt verdana">S/B DR.:</font>
<td><%=rs.getString("sb_dr")%>
</tr>
<tr>
<td><font size="2.5" style="color:white;background-color:navy;font:700 10pt verdana">HNB:</font>
<td><%=rs.getString("hnb")%>
</tr>


<tr>
<td><font size="2.5" style="color:white;background-color:navy;font:700 10pt verdana">CHIEF COMPLAINTS:</font>
<td><%=rs.getString("chief_complaints")%>
</tr>

<tr>
<td><font size="2.5" style="color:white;background-color:navy;font:700 10pt verdana">HISTORY OF PRESENT ELLNESS:</font>
<td><%=rs.getString("history_of_present_illness")%>
</td></tr>
</table>
<table  width="100%" align="center"  cellspacing=5 cellpadding=5>
<tr><td><font size="2.5" style="color:white;background-color:navy;font:700 10pt verdana">PAST HISTORY:</font></tr>

<tr><td><font size="2.5" style="color:white;background-color:grey;font:700 10pt verdana">DM:</font>
<td><%=rs.getString("dm")%>

</tr>
<tr>
<td><font size="2.5" style="color:white;background-color:grey;font:700 10pt verdana">ASTHMA:</font>
<td><%=rs.getString("asthma")%>
</tr>
<tr>
<td><font size="2.5" style="color:white;background-color:grey;font:700 10pt verdana">TB:</font>
<td><%=rs.getString("tb")%>
<td><font size="2.5" style="color:white;background-color:grey;font:700 10pt verdana">HTN:</font>
<td><%=rs.getString("htn")%>
</tr>
<tr>
<td><font size="2.5" style="color:white;background-color:grey;font:700 10pt verdana">IHD:</font>
<td><%=rs.getString("ihd")%>
<td><font size="2.5" style="color:white;background-color:grey;font:700 10pt verdana">CVA:</font>
<td><%=rs.getString("cva")%>
</tr>
<tr>
<td><font size="2.5" style="color:white;background-color:grey;font:700 10pt verdana">EPILEPSY:</font>
<td><%=rs.getString("epilepsy")%>
<td><font size="2.5" style="color:white;background-color:grey;font:700 10pt verdana">COPD:</font>
<td><%=rs.getString("copd")%>
</tr>
<tr>
<td><font size="2.5" style="color:white;background-color:grey;font:700 10pt verdana">CKD:</font>
<td><%=rs.getString("ckd") %>
<td><font size="2.5" style="color:white;background-color:grey;font:700 10pt verdana">OTHER:</font>
<td><%=rs.getString("other")%>


</tr>
<tr>
<td><font size="2.5" style="color:white;background-color:navy;font:700 10pt verdana">PERSONAL HISTORY:</font>

</tr>
<tr>
<td><font size="2.5" style="color:white;background-color:grey;font:700 10pt verdana">DIET:</font>
<td><%=rs.getString("diet")%>
<td><font size="2.5" style="color:white;background-color:grey;font:700 10pt verdana">SLEEP:</font>
<td><%=rs.getString("sleep")%>
</tr>
<tr>
<td><font size="2.5" style="color:white;background-color:grey;font:700 10pt verdana">APPETITE:</font>
<td><%=rs.getString("appetite")%>
</tr>
<tr>
<td><font size="2.5" style="color:white;background-color:grey;font:700 10pt verdana">BOWEL:</font>
<td><%=rs.getString("bowel")%>
</tr>
<tr>
<td><font size="2.5" style="color:white;background-color:grey;font:700 10pt verdana">BLADDER:</font>
<td><%=rs.getString("bladder")%>
<td><font size="2.5" style="color:white;background-color:grey;font:700 10pt verdana"> OCCUPATION:</font>
<td><%=rs.getString("occupation")%>

</tr>

<tr>
<td><font size="2.5" style="color:white;background-color:grey;font:700 10pt verdana">ADDICATION:</font>

</tr>
<tr>
<td><font size="2.5" style="color:white;background-color:grey;font:700 10pt verdana">ALCOHOL:</font>
<td><%=rs.getString("alcohol")%>
</tr>
<tr>
<td><font size="2.5" style="color:white;background-color:grey;font:700 10pt verdana">TOBACCO:</font>
<td><%=rs.getString("tobacco")%>
<td><font size="2.5" style="color:white;background-color:grey;font:700 10pt verdana"> SMOKING:</font>
<td><%=rs.getString("tobacco")%>

</tr>
<tr>
<td><font size="2.5" style="color:white;background-color:grey;font:700 10pt verdana">PAN/GUTKHA:</font>
<td><%=rs.getString("pangutkha")%>
</tr>
<tr>
<td><font size="2.5" style="color:white;background-color:navy;font:700 10pt verdana">DRUGS HISTORY:</font>
<td><%=rs.getString("drugs_history")%>
</td>
</tr>
<tr>
<td><font size="2.5" style="color:white;background-color:navy;font:700 10pt verdana"> FAMILY HISTORY:</font>
<td><%=rs.getString("family_history")%>

</tr>
<tr>
<td><font size="2.5" style="color:white;background-color:navy;font:700 10pt verdana">GENERAL EXAMINATION:</font>

</tr>
<tr>
<td><font size="2.5" style="color:white;background-color:grey;font:700 10pt verdana">HIGHER FUN:</font>
<td><%=rs.getString("higher_fun")%>
<td><font size="2.5" style="color:white;background-color:grey;font:700 10pt verdana"> TEMP:</font>
<td><%=rs.getString("temp")%>

</tr>
<tr>
<td><font size="2.5" style="color:white;background-color:grey;font:700 10pt verdana">PR:</font>
<td><%=rs.getString("pr")%>
</tr>
<tr>
<td><font size="2.5" style="color:white;background-color:grey;font:700 10pt verdana">BP:</font>
<td><%=rs.getString("bp")%>
<td><font size="2.5" style="color:white;background-color:grey;font:700 10pt verdana"> RR:</font>
<td><%=rs.getString("rr")%>

</tr>
<tr>
<td><font size="2.5" style="color:white;background-color:grey;font:700 10pt verdana">PALLOR:</font>
<td><%=rs.getString("pallor")%>
</tr>
<tr>
<td><font size="2.5" style="color:white;background-color:grey;font:700 10pt verdana">EDEMA:</font>
<td><%=rs.getString("edema")%>
<td><font size="2.5" style="color:white;background-color:grey;font:700 10pt verdana"> CLUBBING:</font>
<td><%=rs.getString("clubbing")%>
</tr>
<tr>
<td><font size="2.5" style="color:white;background-color:grey;font:700 10pt verdana">LNPATHY:</font>
<td><%=rs.getString("lnpathy")%>
</tr>
<tr>
<td><font size="2.5" style="color:white;background-color:grey;font:700 10pt verdana">ICTERUS:</font>
<td><%=rs.getString("icterus")%>
<td><font size="2.5" style="color:white;background-color:grey;font:700 10pt verdana"> JVP:</font>
<td><%=rs.getString("jvp")%>
</tr>
<tr>
<td><font size="2.5" style="color:white;background-color:grey;font:700 10pt verdana">SIGN OF CCF:</font>
<td><%=rs.getString("sign_of_ccf")%>
</tr>
<tr>
<td><font size="2.5" style="color:white;background-color:grey;font:700 10pt verdana">HEIGHT:</font>
<td><%=rs.getString("height_in_cm")%>
<td><font size="2.5" style="color:white;background-color:grey;font:700 10pt verdana"> WEIGHT:</font>
<td><%=rs.getString("weight_in_kg")%>
</tr>

<tr>
<td><font size="2.5" style="color:white;background-color:navy;font:700 10pt verdana">CNS EXAMINATION:</font>
</tr>
<tr>
<td><font size="2.5" style="color:white;background-color:grey;font:700 10pt verdana"> HIGHER FUNCION:</font>
<td><%=rs.getString("higher_function")%>

</tr>
<tr>
<td><font size="2.5" style="color:white;background-color:grey;font:700 10pt verdana">CRANIAL NERVE (Facial Nerve):</font>
<td><%=rs.getString("cranial_nerve")%>
</tr>
<tr>
<td><font size="2.5" style="color:white;background-color:grey;font:700 10pt verdana">TONE:</font>
<td><%=rs.getString("tone")%>
<tr>
<td><font size="2.5" style="color:white;background-color:grey;font:700 10pt verdana">GLASSGLOW COMA SCALE:</font>
<td><%=rs.getString("glassglow_coma_scale")%>
</tr>
<tr>
<td><font size="2.5" style="color:white;background-color:grey;font:700 10pt verdana">SENSORY SYSTEM:</font>
<td><%=rs.getString("sensory_system")%>
<td><font size="2.5" style="color:white;background-color:grey;font:700 10pt verdana"> CO/AB MOVEMENT:</font>
<td><%=rs.getString("coordination_abnormal_movement")%>
</tr>
</table>
<table  width="100%" align="center" style="margin-left:150px"  cellspacing=5 cellpadding=5>
<tr>
      <td> <input style="height:25px;width:120px;font-size:10pt;" type="button" value="EDIT" onclick="window.location.href='EditHistorySheet.jsp?id=<%=id_patient %>'" /></td>
        <td> <input style="height:25px;width:120px;font-size:10pt;" type="button" value="PRINT" onclick="window.location.href='History_pdf.jsp?id=<%=id_patient %>'" /></td>   
    <!--  <td><a href="EditIpd.jsp?id=<%=id_patient %>"> Edit</a></td>
     <td><a href="History_pdf.jsp?id=<%=id_patient %>"> Print</a></td>
      -->
      
    

 
<%
    }
if ( ps.executeQuery() == null )
	 //out.println("If record not exist click here..");
	  %>
	 
	 
	  <td> <input style="height:25px;width:120px;font-size:10pt;" type="button" value="Add" onclick="window.location.href='Historysheet.jsp?id=<%=id_patient1 %>'" /></td>
<!-- <td><a href="Historysheet.jsp?id=<%=id_patient1 %>"> add</a></td>-->
</tr>
<% 
    rs.close();
    ps.close();
    con.close();
%>

</table>
</form>
</div></div></div></div></div>


</body>
</html>