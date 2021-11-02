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
                     	<li><a href="AdminHome.jsp" >Home</a></li>
                        <li><a href="SetCharges.jsp" class="current">Set Charges</a></li>
                        <li><a href="manageusers.jsp">Manage Users</a></li>
                        <li><a href="logout.jsp">Logout</a></li>
                    
                        
                      </ul>
                  </div>
               </div>
               
            </div>
               
            </div>
         </div>
         

  
	<div id="main">
		<!-- header -->
		
         <%@page import="java.sql.*,hospital.*"%>
  
		<!-- content -->
		<div id="content">
            	
        <div class="indent"> 
                 
          <div class="extra-wrap"> 
            


<%

	String date=request.getParameter("date");
	
	//String id_patient1=member.getMid();
     Connection con = Database.getConnection();
     PreparedStatement ps = con.prepareStatement("select * from bill_charges where id=1");
  
     
     ResultSet rs = ps.executeQuery();

     rs.next();

%>
<div style="width:880px;margin-left:0px;">

<form  action="EditCharges.jsp" method=post name="CHARGES">
<fieldset>

<div style="width:300px;margin-left:10px;">
<table width="100%" align="center" cellpadding="10" cellspacing="20">
<tr>

 <td><br/>REGISTRATION CHARGES:</td>
      	      <td><br/><input style="height:15px;font-size:10pt;"  type="text"  name="reg_charges" size="10"  value="<%=rs.getString("reg_charges")%>"></td>
				
				
	<tr>
          <td><br/>INDOOR BED CHARGES:</td>
          </tr>
          <tr>
            <td><br/>ICU:</td>
             <td><br/><input style="height:15px;font-size:10pt;"  type="text"  name="bed_icu"  size="10"  value="<%=rs.getString("bed_icu")%>"></td>
               <td><br/>SEMI ICU:</td>
                <td><br/><input style="height:15px;font-size:10pt;"  type="text"  name="bed_semiicu"  size="10" value="<%=rs.getString("bed_semiicu")%>"></td>
                  <td><br/>SPROOM:</td>
                   <td><br/><input style="height:15px;font-size:10pt;"  type="text"  name="bed_sproom"  size="10" value="<%=rs.getString("bed_sproom")%>"></td>
                     <td><br/>GWARD:</td>
                      <td><br/><input style="height:15px;font-size:10pt;"  type="text"  name="bed_gward"  size="10"value="<%=rs.getString("bed_gward")%>"></td>
			
	</tr>
				
	<tr>
          <td><br/>DOCTOR CHARGES:</td>
          </tr>
          <tr>
              <td><br/>ICU:</td>
             <td><br/><input style="height:15px;font-size:10pt;"  type="text"  name="doctor_charges_icu"  size="10" value="<%=rs.getString("doctor_charges_icu")%>"></td>
               <td><br/>SEMI ICU:</td>
                <td><br/><input style="height:15px;font-size:10pt;"  type="text"  name="doctor_charges_semiicu"  size="10" value="<%=rs.getString("doctor_charges_semiicu")%>"></td>
                  <td><br/>SPROOM:</td>
                   <td><br/><input style="height:15px;font-size:10pt;"  type="text"  name="doctor_charges_sproom"  size="10" value="<%=rs.getString("doctor_charges_sproom")%>"></td>
                     <td><br/>GWARD:</td>
                      <td><br/><input style="height:15px;font-size:10pt;"  type="text"  name="doctor_charges_gward"  size="10" value="<%=rs.getString("doctor_charges_gward")%>"></td>
			
	</tr>
				
				
	<tr>
          <td><br/>NURSING CHARGES:</td>
          </tr>
          <tr>
              <td><br/>ICU:</td>
             <td><br/><input style="height:15px;font-size:10pt;"  type="text"  name="nursing_charges_icu"  size="10" value="<%=rs.getString("nursing_charges_icu")%>"></td>
               <td><br/>SEMI ICU:</td>
                <td><br/><input style="height:15px;font-size:10pt;"  type="text"  name="nursing_charges_semiicu"  size="10" value="<%=rs.getString("nursing_charges_semiicu")%>"></td>
                  <td><br/>SPROOM:</td>
                   <td><br/><input style="height:15px;font-size:10pt;"  type="text"  name="nursing_charges_sproom"  size="10" value="<%=rs.getString("nursing_charges_sproom")%>"></td>
                     <td><br/>GWARD:</td>
                      <td><br/><input style="height:15px;font-size:10pt;"  type="text"  name="nursing_charges_gward"  size="10" value="<%=rs.getString("nursing_charges_gward")%>"></td>
			
	</tr>			
			
				
	<tr>
			<td><br/>OPERATION CHARGES:</td>	
			<td><br/><input style="height:15px;font-size:10pt;"  type="text"  name="operation_charges"  size="10" value="<%=rs.getString("operation_charges")%>"></td>
			
	</tr>		
				
	<tr>
			<td><br/>THEATRE CHARGES:</td>	
			<td><br/><input style="height:15px;font-size:10pt;"  type="text"  name="theatre_charges"  size="10" value="<%=rs.getString("theatre_charges")%>"></td>
				
	</tr>	
	
	<tr>
          <td><br/>TRANSFUSION:</td>
          </tr>
          <tr>
             <td><br/>BLOOD:</td>
             <td><br/><input style="height:15px;font-size:10pt;"  type="text"  name="transfusion_blood"  size="10" value="<%=rs.getString("transfusion_bood")%>"></td>
               <td><br/>FFP:</td>
                <td><br/><input style="height:15px;font-size:10pt;"  type="text"  name="transfusion_ffp"  size="10" value="<%=rs.getString("transfusion_ffp")%>"></td>
                  <td><br/>RDP:</td>
                   <td><br/><input style="height:15px;font-size:10pt;"  type="text"  name="transfusion_rdp"  size="10" value="<%=rs.getString("transfusion_rdp")%>"></td>
                     <td><br/>ALBUMIN:</td>
                      <td><br/><input style="height:15px;font-size:10pt;"  type="text"  name="transfusion_albumin"  size="10" value="<%=rs.getString("transfusion_albumin")%>"></td>
			
	</tr>
	
	<tr>
			<td><br/>INJECTION CHARGES:</td>	
			<td><br/><input style="height:15px;font-size:10pt;"  type="text"  name="injection_charges"  size="10" value="<%=rs.getString("injection_charges")%>"></td>
			
			
	</tr>	
	
	<tr>
			<td><br/>MONITOR CHARGES:</td>	
			<td><br/><input style="height:15px;font-size:10pt;"  type="text"  name="monitor_charges"  size="10" value="<%=rs.getString("monitor_charges")%>"></td>
			
			
	</tr>
	
	<tr>
			<td><br/>OXYGEN CHARGES:</td>	
			<td><br/><input style="height:15px;font-size:10pt;"  type="text"  name="oxygen_charges"  size="10" value="<%=rs.getString("oxygen_charges")%>"></td>
			
			
	</tr>
	
	<tr>
			<td><br/>VENTILATOR CHARGES:</td>	
			<td><br/><input style="height:15px;font-size:10pt;"  type="text"  name="ventilator_charges"  size="10" value="<%=rs.getString("ventilator_charges")%>"></td>
			
			
	</tr>
	
	<tr>
          <td><br/>TAPPING CHARGES:</td>
          </tr>
          <tr>
           <td><br/>ABD:</td>
             <td><br/><input style="height:15px;font-size:10pt;"  type="text"  name="tapping_abd"  size="10" value="<%=rs.getString("tapping_abd")%>"></td>
               <td><br/>PLEURAL:</td>
                <td><br/><input style="height:15px;font-size:10pt;"  type="text"  name="tapping_pleural"  size="10" value="<%=rs.getString("tapping_pleural")%>"></td>
                  <td><br/>CSF:</td>
                   <td><br/><input style="height:15px;font-size:10pt;"  type="text"  name="tapping_csf"  size="10" value="<%=rs.getString("tapping_csf")%>"></td>
                     <td><br/>STICH:</td>
                      <td><br/><input style="height:15px;font-size:10pt;"  type="text"  name="tapping_stich"  size="10" value="<%=rs.getString("tapping_stich")%>"></td>
			
	</tr>
	
	<tr>
			<td><br/>BSL:</td>	
			<td><br/><input style="height:15px;font-size:10pt;"  type="text"  name="bsl_charges"  size="10" value="<%=rs.getString("bsl_charges")%>"></td>
		
			
	</tr>
	
	<tr>
			<td><br/>ECG:</td>	
			<td><br/><input style="height:15px;font-size:10pt;"  type="text"  name="ecg_charges"  size="10" value="<%=rs.getString("ecg_charges")%>"></td>
			
			
	</tr>
	
	<tr>
			<td><br/>RT_CATHETER:</td>	
			<td><br/><input style="height:15px;font-size:10pt;"  type="text"  name="rt_catheter_charges"  size="10" value="<%=rs.getString("rt_catheter_charges")%>"></td>
			
			
	</tr>
	
	<tr>
			<td><br/>NEBULIZATION:</td>	
			<td><br/><input style="height:15px;font-size:10pt;"  type="text"  name="nebulization_charges"  size="10" value="<%=rs.getString("nebulilzation_charges")%>"></td>
			
			
	</tr>
	
	<tr>
			<td><br/>EMERGENCY:</td>	
			<td><br/><input style="height:15px;font-size:10pt;"  type="text"  name="emergency_charges"  size="10" value="<%=rs.getString("emergency_charges")%>"></td>
			
			
	</tr>
	
	<tr>
			<td><br/>PHYSIOTHERAPY:</td>	
			<td><br/><input style="height:15px;font-size:10pt;"  type="text"  name="physiotherapy_charges"  size="10" value="<%=rs.getString("physiotherapy_charges")%>"></td>
			
			
	</tr>
	
	<tr>
	<td></td>
	<td></td>
	<td></td>
        <td><center><br/><input style="height:25px;width:120px;font-size:10pt;" type="submit" value="CHANGE" ></center></td> 
     
    </tr> 
    
            </table>
            </div>
</fieldset> 
</form>
</div>
</div></div></div></div>
</div>


</body>
</html>