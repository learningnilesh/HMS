
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
                     	<li><a href="EditHistoryRecord.jsp">HISTORYSHEET</a></li>
                     	<li><a href="PatientDisplayBill.jsp" class="current">ADD CHARGES</a></li>
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
     PreparedStatement ps = con.prepareStatement("select *  from biling_tb where id_patient = ?");
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
<td><font size="2.5" style="color:white;background-color:navy;font:700 10pt verdana">Sr. No.:</font>
<td><td><td><td><td>
<td><font size="2.5" style="color:white;background-color:navy;font:700 10pt verdana">Amount:</font>
</tr>



<tr>
<td>1<td><font size="2.5" style="color:white;background-color:navy;font:700 10pt verdana">Registration charges:</font>
<td><td><td><td>
<td><%=rs.getString(4)%>
</tr>
<tr>
<td>2
<td><font size="2.5" style="color:white;background-color:navy;font:700 10pt verdana">Indoor Bed Charges:</font>
<td><font size="2.5" style="color:white;background-color:navy;font:700 10pt verdana">ICU:</font>
<td><font size="2.5" style="color:white;background-color:navy;font:700 10pt verdana">SEMI ICU:</font>
<td><font size="2.5" style="color:white;background-color:navy;font:700 10pt verdana">SP.ROOM:</font>
<td><font size="2.5" style="color:white;background-color:navy;font:700 10pt verdana">G.WARD:</font>
</tr>
<tr>
<td>
<td>
<td><%=rs.getString(5)%>
<td><%=rs.getString(6)%>
<td><%=rs.getString(7)%>
<td><%=rs.getString(8)%>
</tr>
<tr>
<td>
<td>
<td><%=rs.getString(9)%>
<td><%=rs.getString(10)%>
<td><%=rs.getString(11)%>
<td><%=rs.getString(12)%>
<td><%=rs.getString(13)%>

</tr>


<tr>
<td>3
<td><font size="2.5" style="color:white;background-color:navy;font:700 10pt verdana">Doctor Charges:</font>
<td><font size="2.5" style="color:white;background-color:navy;font:700 10pt verdana">ICU:</font>
<td><font size="2.5" style="color:white;background-color:navy;font:700 10pt verdana">SEMI ICU:</font>
<td><font size="2.5" style="color:white;background-color:navy;font:700 10pt verdana">SP.ROOM:</font>
<td><font size="2.5" style="color:white;background-color:navy;font:700 10pt verdana">G.WARD:</font>
</tr>
<tr>
<td>
<td>
<td><%=rs.getString(14)%>
<td><%=rs.getString(15)%>
<td><%=rs.getString(16)%>
<td><%=rs.getString(17)%>
</tr>
<tr>
<td>
<td>
<td><%=rs.getString(18)%>
<td><%=rs.getString(19)%>
<td><%=rs.getString(20)%>
<td><%=rs.getString(21)%>
<td><%=rs.getString(22)%>

</tr>


<tr>
<td>4
<td><font size="2.5" style="color:white;background-color:navy;font:700 10pt verdana">Nursing Charges:</font>
<td><font size="2.5" style="color:white;background-color:navy;font:700 10pt verdana">ICU:</font>
<td><font size="2.5" style="color:white;background-color:navy;font:700 10pt verdana">SEMI ICU:</font>
<td><font size="2.5" style="color:white;background-color:navy;font:700 10pt verdana">SP.ROOM:</font>
<td><font size="2.5" style="color:white;background-color:navy;font:700 10pt verdana">G.WARD:</font>
</tr>
<tr>
<td>
<td>
<td><%=rs.getString(23)%>
<td><%=rs.getString(24)%>
<td><%=rs.getString(25)%>
<td><%=rs.getString(26)%>
</tr>
<tr>
<td>
<td>
<td><%=rs.getString(27)%>
<td><%=rs.getString(28)%>
<td><%=rs.getString(29)%>
<td><%=rs.getString(30)%>
<td><%=rs.getString(31)%>

</tr>
<tr>
<td>5<td><font size="2.5" style="color:white;background-color:navy;font:700 10pt verdana">Operation charges:</font>
<td><td><td><%=rs.getString(32)%><td><%=rs.getString(33)%>
<td><%=rs.getString(34)%>
</tr>
<tr>
<td>6<td><font size="2.5" style="color:white;background-color:navy;font:700 10pt verdana">Theatre charges:</font>
<td><td><td><%=rs.getString(35)%><td>
<td><%=rs.getString(36)%>
</tr>

<tr>
<td>7
<td><font size="2.5" style="color:white;background-color:navy;font:700 10pt verdana">Transfusion Charges:</font>
<td><font size="2.5" style="color:white;background-color:navy;font:700 10pt verdana">BLOOD:</font>
<td><font size="2.5" style="color:white;background-color:navy;font:700 10pt verdana">FFP:</font>
<td><font size="2.5" style="color:white;background-color:navy;font:700 10pt verdana">RDP:</font>
<td><font size="2.5" style="color:white;background-color:navy;font:700 10pt verdana">ALBUMIN:</font>
</tr>
<tr>
<td>
<td>
<td><%=rs.getString(37)%>
<td><%=rs.getString(38)%>
<td><%=rs.getString(39)%>
<td><%=rs.getString(40)%>
</tr>
<tr>
<td>
<td>
<td><%=rs.getString(41)%>
<td><%=rs.getString(42)%>
<td><%=rs.getString(43)%>
<td><%=rs.getString(44)%>
<td><%=rs.getString(45)%>

</tr>

<tr>
<td>8<td><font size="2.5" style="color:white;background-color:navy;font:700 10pt verdana">Injection charges:</font>
<td><td><td><%=rs.getString(46)%><td><%=rs.getString(47)%>
<td><%=rs.getString(48)%>
</tr>

<tr>
<td>9<td><font size="2.5" style="color:white;background-color:navy;font:700 10pt verdana">Monitor charges:</font>
<td><td><td><%=rs.getString(49)%><td><%=rs.getString(50)%>
<td><%=rs.getString(51)%>
</tr>

<tr>
<td>10<td><font size="2.5" style="color:white;background-color:navy;font:700 10pt verdana">Oxygen charges:</font>
<td><td><td><%=rs.getString(52)%><td><%=rs.getString(53)%>
<td><%=rs.getString(54)%>
</tr>

<tr>
<td>11<td><font size="2.5" style="color:white;background-color:navy;font:700 10pt verdana">Ventilator charges:</font>
<td><td><td><%=rs.getString(55)%><td><%=rs.getString(56)%>
<td><%=rs.getString(57)%>
</tr>
<tr>

<td>12
<td><font size="2.5" style="color:white;background-color:navy;font:700 10pt verdana">Tapping Charges:</font>
<td><font size="2.5" style="color:white;background-color:navy;font:700 10pt verdana">ABD:</font>
<td><font size="2.5" style="color:white;background-color:navy;font:700 10pt verdana">PLEURAL:</font>
<td><font size="2.5" style="color:white;background-color:navy;font:700 10pt verdana">CSF:</font>
<td><font size="2.5" style="color:white;background-color:navy;font:700 10pt verdana">STICH:</font>
</tr>
<tr>
<td>
<td>
<td><%=rs.getString(58)%>
<td><%=rs.getString(59)%>
<td><%=rs.getString(60)%>
<td><%=rs.getString(61)%>
</tr>
<tr>
<td>
<td>
<td><%=rs.getString(62)%>
<td><%=rs.getString(63)%>
<td><%=rs.getString(64)%>
<td><%=rs.getString(65)%>
<td><%=rs.getString(66)%>

</tr>


<tr>
<td>13<td><font size="2.5" style="color:white;background-color:navy;font:700 10pt verdana">BSL :</font>
<td><td><td><%=rs.getString(67)%><td><%=rs.getString(68)%>
<td><%=rs.getString(69)%>
</tr>

<tr>
<td>14<td><font size="2.5" style="color:white;background-color:navy;font:700 10pt verdana">ECG :</font>
<td><td><td><%=rs.getString(70)%><td><%=rs.getString(71)%>
<td><%=rs.getString(72)%>
</tr>

<tr>
<td>15<td><font size="2.5" style="color:white;background-color:navy;font:700 10pt verdana">RT/CATHETER :</font>
<td><td><td><%=rs.getString(73)%><td><%=rs.getString(74)%>
<td><%=rs.getString(75)%>
</tr>

<tr>
<td>16<td><font size="2.5" style="color:white;background-color:navy;font:700 10pt verdana">NEBULIZATION :</font>
<td><td><td><%=rs.getString(76)%><td><%=rs.getString(77)%>
<td><%=rs.getString(78)%>
</tr>

<tr>
<td>17<td><font size="2.5" style="color:white;background-color:navy;font:700 10pt verdana">EMERGENCY :</font>
<td><td><td><%=rs.getString(79)%><td><%=rs.getString(80)%>
<td><%=rs.getString(81)%>
</tr>

<tr>
<td>18<td><font size="2.5" style="color:white;background-color:navy;font:700 10pt verdana">PHYSIOTHERAPY :</font>
<td><td><td><%=rs.getString(82)%><td><%=rs.getString(83)%>
<td><%=rs.getString(84)%>
</tr>
<tr></tr>
<tr>
         <td></td> <td></td>
        <td> <input style="height:25px;width:120px;font-size:10pt;" type="button" value="EDIT" onclick="window.location.href='EditPatientBill.jsp?id=<%=id_patient %>'" /></td>
        <td> <input style="height:25px;width:120px;font-size:10pt;" type="button" value="PRINT" onclick="window.location.href='Biling_pdf.jsp?id=<%=id_patient %>'" /></td>
        
    <!--  <td><a href="EditIpd.jsp?id=<%=id_patient %>"> Edit</a></td>
     <td><a href="Biling_pdf.jsp?id=<%=id_patient %>"> Print</a></td>
      -->
      
    

<%
 }
    
if ( ps.executeQuery() == null )
	 //out.println("If record not exist click here..");
	  %>
	 
	  
	  <td> <input style="height:25px;width:120px;font-size:10pt;" type="button" value="Add" onclick="window.location.href='AddCharges.jsp?id=<%=id_patient1%>'" /></td>
<!-- <td><a href="Historysheet.jsp?id=<%=id_patient1%>"> add</a></td>-->
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