<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="CSS/style.css" rel="stylesheet" type="text/css" />
<link href="CSS/layout.css" rel="stylesheet" type="text/css" />
<script src="CSS/maxheight.js" type="text/javascript"></script>
<title>Investigation Edit</title>
<script>
.boxed {
	  border: 1px solid green ;
	}
</script>
</head>
<body>

  
	<div id="main">
		<!-- header -->
		
         <%@page import="java.sql.*,hospital.*"%>
  
		<!-- content -->
		<div id="content">
            	
        <div class="indent"> 
                 
          <div class="extra-wrap"> 
            

<%@page import="java.sql.*,hospital.*"%>

<%

String id="1";

String reg_charges=request.getParameter("reg_charges");
String bed_icu=request.getParameter("bed_icu");
String bed_semiicu=request.getParameter("bed_semiicu");
String bed_sproom=request.getParameter("bed_sproom");
String bed_gward=request.getParameter("bed_gward");
String doctor_charges_icu=request.getParameter("doctor_charges_icu");
String doctor_charges_semiicu=request.getParameter("doctor_charges_semiicu");

String doctor_charges_sproom=request.getParameter("doctor_charges_sproom");
String doctor_charges_gward=request.getParameter("doctor_charges_gward");
String nursing_charges_icu=request.getParameter("nursing_charges_icu");
String nursing_charges_semiicu=request.getParameter("nursing_charges_semiicu");
String nursing_charges_sproom=request.getParameter("nursing_charges_sproom");
String nursing_charges_gward=request.getParameter("nursing_charges_gward");
String operation_charges=request.getParameter("operation_charges");
String theatre_charges=request.getParameter("theatre_charges");
String transfusion_blood=request.getParameter("transfusion_blood");
String transfusion_ffp=request.getParameter("transfusion_ffp");

String transfusion_rdp=request.getParameter("transfusion_rdp");
String transfusion_albumin=request.getParameter("transfusion_albumin");
String injection_charges=request.getParameter("injection_charges");
String monitor_charges=request.getParameter("monitor_charges");
String oxygen_charges=request.getParameter("oxygen_charges");
String ventilator_charges=request.getParameter("ventilator_charges");
String tapping_abd=request.getParameter("tapping_abd");
String tapping_pleural=request.getParameter("tapping_pleural");
String tapping_csf=request.getParameter("tapping_csf");
String tapping_stich=request.getParameter("tapping_stich");

String bsl_charges=request.getParameter("bsl_charges");
String ecg_charges=request.getParameter("ecg_charges");
String rt_catheter_charges=request.getParameter("rt_catheter_charges");
String nebulization_charges=request.getParameter("nebulization_charges");
String emergency_charges=request.getParameter("emergency_charges");
String physiotherapy_charges=request.getParameter("physiotherapy_charges");

%>

 

<table  cellpadding=5  width=100%>
<tr style="color:white;background-color:;font:700 12pt verdana">
<td>Charges updated successfully....</td>
<td> <input type="button" value="SET CHARGES" onclick="window.location.href='SetCharges.jsp'" /></td>
<tr>

<td>

<%
try{
    Class.forName("com.mysql.jdbc.Driver");
      Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hmsdb", "root", "root");
       Statement st=con.createStatement();
    																																																																																																																																											

       //
      st.executeUpdate("UPDATE bill_charges SET  id='"+id+"',reg_charges='"+reg_charges+"',bed_icu='"+bed_icu+"',bed_semiicu='"+bed_semiicu+"',bed_sproom='"+bed_sproom+"',bed_gward='"+bed_gward+"',doctor_charges_icu='"+doctor_charges_icu+"',doctor_charges_semiicu='"+doctor_charges_semiicu+"',doctor_charges_sproom='"+doctor_charges_sproom+"',doctor_charges_gward='"+doctor_charges_gward+"',nursing_charges_icu='"+nursing_charges_icu+"',nursing_charges_semiicu='"+nursing_charges_semiicu+"',nursing_charges_sproom='"+nursing_charges_sproom+"',nursing_charges_gward='"+nursing_charges_gward+"',operation_charges='"+operation_charges+"',theatre_charges='"+theatre_charges+"',transfusion_bood='"+transfusion_blood+"',transfusion_ffp='"+transfusion_ffp+"',transfusion_rdp='"+transfusion_rdp+"',transfusion_albumin='"+transfusion_albumin+"',injection_charges='"+injection_charges+"',monitor_charges='"+monitor_charges+"',oxygen_charges='"+oxygen_charges+"',ventilator_charges='"+ventilator_charges+"',tapping_abd='"+tapping_abd+"',tapping_pleural='"+tapping_pleural+"',tapping_csf='"+tapping_csf+"',tapping_stich='"+tapping_stich+"',bsl_charges='"+bsl_charges+"',ecg_charges='"+ecg_charges+"',rt_catheter_charges='"+rt_catheter_charges+"',nebulilzation_charges='"+nebulization_charges+"',emergency_charges='"+emergency_charges+"',physiotherapy_charges='"+physiotherapy_charges+"' WHERE id='"+id+"'");
      //  response.sendRedirect("Ipd_Edit.jsp?id='"+id+"'");
   }
   catch(Exception e){
   System.out.print(e);
   e.printStackTrace();
   }
%>


</tr>
</table>

</div></div></div></div>
</body>
</html>