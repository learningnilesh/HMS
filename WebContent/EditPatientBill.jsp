<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="javax.print.attribute.DateTimeSyntax"%>

<%@page import="java.io.*,java.sql.*,java.util.Date,java.text.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="CSS/style.css" rel="stylesheet" type="text/css" />
<link href="CSS/layout.css" rel="stylesheet" type="text/css" />
<script src="CSS/maxheight.js" type="text/javascript"></script>

<script language="javascript" type="text/javascript" src="jqueryCalendar/datetimepicker.js">
</script>
<script type="text/javascript" src="validate/jquery.js"></script>
<script type="text/javascript" src="validate/jquery.validate.js"></script>

<script type="text/javascript">
function Confirm(AddCharges){
alert("Record insert successfully!");
form.submit();
}
</script>

<link rel="stylesheet" href="CSS/validationEngine.jquery.css" type="text/css"/>
	
	<script type="text/javascript" src="validate/jquery.js"></script>
	<script src="validate/jquery.validationEngine-en.js" type="text/javascript" charset="utf-8">
	</script>
	<script src="validate/jquery.validationEngine.js" type="text/javascript" charset="utf-8">
	</script>
	<script>
		jQuery(document).ready(function(){
			// binds form submission and fields to the validation engine
			jQuery("#ADDCHARGES").validationEngine();
		});

		/**
		*
		* @param {jqObject} the field where the validation applies
		* @param {Array[String]} validation rules for this field
		* @param {int} rule index
		* @param {Map} form options
		* @return an error string if validation failed
		*/
		function checkHELLO(field, rules, i, options){
			if (field.val() != "HELLO") {
				// this allows to use i18 for the error msgs
				return options.allrules.validate2fields.alertText;
			}
		}
	</script>



</head>


  
  <body id="page4" onload="new ElementMaxHeight();">
  <jsp:useBean id="member" scope="session"  class="hospital.patient" />
  
     <%@page import="java.sql.*,hospital.*"%>
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
                     	<li><a href="AddCharges.jsp" class="current">ADD CHARGES</a></li>
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
     PreparedStatement ps = con.prepareStatement("select *  from biling_tb where id_patient = '"+id_patient1+"'");
    // ps.setString(1,member.getMid());
     
     ResultSet rs = ps.executeQuery();
     
%>          
 <form id="ADDCHARGES" action="UpdateCharges.jsp" method=post name="">
                  
              <div style="width:500px;margin-left:40px;">  
              <fieldset>
        <table width="150%" align="center" cellpadding="10" cellspacing="10" style="width:700px;margin-left:40px;">
<%
 while( rs.next())
 {
	 %>
 

<tr>

 <td><br/><b>REGISTRATION CHARGES:</b></td>
      	      <td><br/>
      	      <select style="height:18px;font-size:10pt;" name="registration_charges" style="width: 200px" >
				<option value="0" selected>(please select:)</option>
				<option value="100">Yes</option>
				<option value="0">No</option>
				</select>
				
	</td></tr>		
	</table>
	</fieldset>
	 <fieldset>
<table width="150%" align="center" cellpadding="10" cellspacing="10" style="width:700px;margin-left:40px;">
	<!-- <tr>
         
     	 
     	   <td><br/><input style="height:18px;font-size:10pt;" type="hidden" name="bed_icu" value="0" /></td>
     	   <td><br/><input style="height:18px;font-size:10pt;" type="hidden" name="bed_semiicu" value="0" /></td>
     	            <td><br/><input style="height:18px;font-size:10pt;" type="hidden" name="bed_sproom" value="0" /></td>
     	            <td><br/><input style="height:18px;font-size:10pt;" type="hidden" name="bed_gward" value="0" /></td>
     	            </tr> -->
     	            <tr>
     	                    <td><br/><b>INDOOR BED CHARGES:</b>
          <td><br/>ICU:</td>
          
          <td><br/>SEMI ICU: </td>
         
          <td><br/>SP. ROOM: </td>
          
          <td><br/>G.WARD: </td>
          
		</tr>
		
     	  <tr>	
     	  <td><br/><b>ENTER DAYS:</b>
     	  
			<td><br/><input class="validate[custom[integer]] text-input" style="height:15px;font-size:10pt;"  type="text"  name="bed_icu_charges_day"  size="1" value="<%=rs.getString(9)%>"></td>
			<td><br/><input class="validate[custom[integer]] text-input" style="height:15px;font-size:10pt;"  type="text" name="bed_semiicu_charges_day"  size="1" value="<%=rs.getString(10)%>"></td>
			<td><br/><input class="validate[custom[integer]] text-input" style="height:15px;font-size:10pt;"  type="text" name="bed_sproom_charges_day"  size="1" value="<%=rs.getString(11)%>"></td>
			<td><br/><input class="validate[custom[integer]] text-input" style="height:15px;font-size:10pt;"  type="text" name="bed_gward_charges_day"  size="1" value="<%=rs.getString(12)%>"></td>
	</tr>
			</table>
	</fieldset>
	 <fieldset>
<table width="150%" align="center" cellpadding="10" cellspacing="10" style="width:700px;margin-left:40px;">
     	<!--  <tr>
     	  
                 <td><br/><input style="height:18px;font-size:10pt;" type="hidden" name="doctor_icu" value="0" /></td>
              <td><br/><input style="height:18px;font-size:10pt;" type="hidden" name="doctor_semiicu" value="0" /></td>
       
              <td><br/><input style="height:18px;font-size:10pt;" type="hidden" name="doctor_sproom" value="0" /></td>
             <td><br/><input style="height:18px;font-size:10pt;" type="hidden" name="doctor_gward" value="0" /></td>
       
     	 </tr>-->
     	 
     	  <tr>
          <td><br/><b>DOCTOR CHARGES:</b>
     	   
     	<td><br/>ICU: </td>
            <td><br/>SEMI ICU: </td>
            <td><br/>SP. ROOM: </td>
             <td><br/>G.WARD: </td>
          
		</tr>
     	   <tr>	
     	  <td><br/><b>ENTER DAYS:</b>
     	  
			<td><br/><input class="validate[custom[integer]] text-input" style="height:15px;font-size:10pt;"  type="text"  name="doctor_icu_charges_day"  size="1" value="<%=rs.getString(18)%>"></td>
			<td><br/><input class="validate[custom[integer]] text-input" style="height:15px;font-size:10pt;"  type="text" name="doctor_semiicu_charges_day"  size="1" value="<%=rs.getString(19)%>"></td>
			<td><br/><input class="validate[custom[integer]] text-input" style="height:15px;font-size:10pt;"  type="text" name="doctor_sproom_charges_day"  size="1" value="<%=rs.getString(20)%>"></td>
			<td><br/><input class="validate[custom[integer]] text-input" style="height:15px;font-size:10pt;"  type="text" name="doctor_gward_charges_day"  size="1" value="<%=rs.getString(21)%>"></td>
	</tr>
			</table>
			</fieldset>
	 <fieldset>	
<table width="150%" align="center" cellpadding="10" cellspacing="10" style="width:700px;margin-left:40px;">	
<!-- 
<tr>
     	  
                 <td><br/><input style="height:18px;font-size:10pt;" type="hidden" name="nursing_icu" value="0" /></td>
              <td><br/><input style="height:18px;font-size:10pt;" type="hidden" name="nursing_semiicu" value="0" /></td>
       
              <td><br/><input style="height:18px;font-size:10pt;" type="hidden" name="nursing_sproom" value="0" /></td>
             <td><br/><input style="height:18px;font-size:10pt;" type="hidden" name="nursing_gward" value="0" /></td>
       
     	 </tr>-->
<tr>
        
          <td><br/><b>NURSING CHARGES:</b>
     	 
         <td><br/>ICU: </td>
              
          <td><br/>SEMI ICU:</td>          
        
          <td><br/>SP. ROOM:</td>          
        
        <td><br/>G.WARD:</td>
          
		</tr>
     	   <tr>	
     	  <td><br/><b>ENTER DAYS:</b>
     	  
			<td><br/><input class="validate[custom[integer]] text-input" style="height:15px;font-size:10pt;"  type="text"  name="nursing_icu_charges_day"  size="1" value="<%=rs.getString(27)%>"></td>
			<td><br/><input class="validate[custom[integer]] text-input" style="height:15px;font-size:10pt;"  type="text" name="nursing_semiicu_charges_day"  size="1" value="<%=rs.getString(28)%>"></td>
			<td><br/><input class="validate[custom[integer]] text-input" style="height:15px;font-size:10pt;"  type="text" name="nursing_sproom_charges_day"  size="1" value="<%=rs.getString(29)%>"></td>
			<td><br/><input class="validate[custom[integer]] text-input" style="height:15px;font-size:10pt;"  type="text" name="nursing_gward_charges_day"  size="1" value="<%=rs.getString(30)%>"></td>
	</tr>
			</table>
			</fieldset>
		 <fieldset style="width:740px;margin-left:0px;">
<table width="150%" align="center" cellpadding="10" cellspacing="10" style="width:400px;margin-left:40px;">	
			<tr>
			 <td><br/><b>OPERATION CHARGES:</b></td>
      	      <td><br/>
      	      <select style="height:18px;font-size:10pt;" name="operation_charges" style="width: 200px" >
				<option value="<%=rs.getString(32)%>" selected>(please select:)</option>
				<option value="<%=rs.getString(32)%>">Yes</option>
				<option value="<%=rs.getString(32)%>">No</option>
				</select>
				
	
			<td><br/><input class="validate[custom[integer]] text-input" style="height:15px;font-size:10pt;"  type="text"  name="operation_charges_operations"  size="1" value="<%=rs.getString(33)%>"></td>
			
	</tr>	
				

	
			<tr>
			 <td><br/><b>THEATRE CHARGES:</b></td>
      	      <td><br/>
      	      <select style="height:18px;font-size:10pt;" name="theatre_charges" style="width: 200px" >
				<option value="<%=rs.getString(35)%>" selected>(please select:)</option>
				<option value="<%=rs.getString(35)%>">Yes</option>
				<option value="<%=rs.getString(35)%>">No</option>
				</select>
				
	
	</tr>	
	
</table>
				</fieldset>
	 <fieldset>
<table width="150%" align="center" cellpadding="10" cellspacing="10" style="width:700px;margin-left:40px;">	




<tr>
          <td><br/><b>TRANSFUSION:</b>
     	 
     	 </td>
       <td><br/>BLOOD: </td>
       
       <td><br/>FFP: </td>
         
       <td><br/>RDP: </td>
         
       <td><br/>ALBUMIN: </td>
          
		</tr>
     	  <tr>	
     	    <td><br/><b>ENTER QUANTITY:</b>
			<td><br/><input class="validate[custom[integer]] text-input" style="height:15px;font-size:10pt;"  type="text"  name="transfusion_bloodcharges_items"  size="1" value="<%=rs.getString(41)%>"></td>
			<td><br/><input class="validate[custom[integer]] text-input" style="height:15px;font-size:10pt;"  type="text"  name="transfusion_ffpcharges_items"  size="1" value="<%=rs.getString(42)%>"></td>
			<td><br/><input class="validate[custom[integer]] text-input" style="height:15px;font-size:10pt;"  type="text"  name="transfusion_rdpcharges_items"  size="1" value="<%=rs.getString(43)%>"></td>
			<td><br/><input class="validate[custom[integer]] text-input" style="height:15px;font-size:10pt;"  type="text"  name="transfusion_albumincharges_items"  size="1" value="<%=rs.getString(44)%>"></td>
			
	</tr>
			</table>
			</fieldset>
	 <fieldset style="width:740px;margin-left:0px;">
<table width="10%" align="center" cellpadding="5" cellspacing="10" style="width:400px;margin-left:40px;">	
		<tr>
			 <td><br/><b>INJECTION CHARGES:</b></td>
      	      <td><br/>
      	      <select style="height:18px;font-size:10pt;" name="injection_charges" style="width: 200px" >
				<option value="<%=rs.getString(46)%>" selected>(please select:)</option>
				<option value="<%=rs.getString(46)%>">Yes</option>
				<option value="<%=rs.getString(46)%>">No</option>
				</select>
				
	
			<td><br/><input class="validate[custom[integer]] text-input" style="height:15px;font-size:10pt;"  type="text"  name="injection_charges_items"  size="1" value="<%=rs.getString(47)%>"></td>
			
	</tr>	
	
	<tr>
			 <td><br/><b>MONITOR CHARGES:</b></td>
      	      <td><br/>
      	      <select style="height:18px;font-size:10pt;" name="monitor_charges" style="width: 200px" >
				<option value="<%=rs.getString(49)%>" selected>(please select:)</option>
				<option value="<%=rs.getString(49)%>">Yes</option>
				<option value="<%=rs.getString(49)%>">No</option>
				</select>
				
	
			<td><br/><input class="validate[custom[integer]] text-input" style="height:15px;font-size:10pt;"  type="text"  name="monitor_charges_items"  size="1" value="<%=rs.getString(50)%>"></td>
			
	</tr>	
	
	<tr>
			 <td><br/><b>OXYGEN CHARGES:</b></td>
      	      <td><br/>
      	      <select style="height:18px;font-size:10pt;" name="oxygen_charges" style="width: 200px" >
				<option value="<%=rs.getString(52)%>" selected>(please select:)</option>
				<option value="<%=rs.getString(52)%>">Yes</option>
				<option value="<%=rs.getString(52)%>">No</option>
				</select>
				
	
			<td><br/><input class="validate[custom[integer]] text-input" style="height:15px;font-size:10pt;"  type="text"  name="oxygen_charges_items"  size="1" value="<%=rs.getString(53)%>"></td>
			
	</tr>	

	
<tr>
			 <td><br/><b>VENTILATOR CHARGES:</b></td>
      	      <td><br/>
      	      <select style="height:18px;font-size:10pt;" name="ventilator_charges" style="width: 200px" >
				<option value="<%=rs.getString(55)%>" selected>(please select:)</option>
				<option value="<%=rs.getString(55)%>">Yes</option>
				<option value="<%=rs.getString(55)%>">No</option>
				</select>
				
	
			<td><br/><input class="validate[custom[integer]] text-input" style="height:15px;font-size:10pt;"  type="text"  name="ventilator_charges_items"  size="1" value="<%=rs.getString(56)%>"></td>
			
	</tr>	
	
</table>
				</fieldset>
	 <fieldset>
<table width="150%" align="center" cellpadding="10" cellspacing="10" style="width:700px;margin-left:40px;">



	<tr>
          <td><br/><b>TAPPING CHARGES:</b>
     	 </td>
           <td><br/>ABD: </td>
          
         <td><br/>PLEURAL: </td>
          
        <td><br/>CSF: </td>
  
             <td><br/>STICH: </td>
          
		</tr>
     	
	 <tr>	
     	    <td><br/><b>ENETER QUANTITY:</b>
			<td><br/><input class="validate[custom[integer]] text-input" style="height:15px;font-size:10pt;"  type="text"  name="tapping_abdcharges_items"  size="1" value="<%=rs.getString(62)%>"></td>
			<td><br/><input class="validate[custom[integer]] text-input" style="height:15px;font-size:10pt;"  type="text"  name="tapping_pleuralcharges_items"  size="1" value="<%=rs.getString(63)%>"></td>
			<td><br/><input class="validate[custom[integer]] text-input" style="height:15px;font-size:10pt;"  type="text"  name="tapping_csfcharges_items"  size="1" value="<%=rs.getString(64)%>"></td>
									<td><br/><input class="validate[custom[integer]] text-input" style="height:15px;font-size:10pt;"  type="text"  name="tapping_stichcharges_items"  size="1" value="<%=rs.getString(65)%>"></td>
			
	</tr>
			</table>
			</fieldset>
		 <fieldset style="width:740px;margin-left:0px;">
<table width="150%" align="center" cellpadding="10" cellspacing="10" style="width:400px;margin-left:40px;">	
	<tr>
			 <td><br/><b>BSL:</b></td>
      	      <td><br/>
      	      <select style="height:18px;font-size:10pt;" name="bsl_charges" style="width: 200px" >
				<option value="<%=rs.getString(67)%>" selected>(please select:)</option>
				<option value="<%=rs.getString(67)%>">Yes</option>
				<option value="<%=rs.getString(67)%>">No</option>
				</select>
				
	
			<td><br/><input class="validate[custom[integer]] text-input" style="height:15px;font-size:10pt;"  type="text"  name="bsl_charges_items"  size="1" value="<%=rs.getString(68)%>"></td>
			
	</tr>	
	
	<tr>
			 <td><br/><b>ECG:</b></td>
      	      <td><br/>
      	      <select style="height:18px;font-size:10pt;" name="ecg_charges" style="width: 200px" >
				<option value="<%=rs.getString(70)%>" selected>(please select:)</option>
				<option value="<%=rs.getString(70)%>">Yes</option>
				<option value="<%=rs.getString(70)%>">No</option>
				</select>
				
	
			<td><br/><input class="validate[custom[integer]] text-input" style="height:15px;font-size:10pt;"  type="text"  name="ecg_charges_items"  size="1" value="<%=rs.getString(71)%>"></td>
			
	</tr>	
	
	<tr>
			 <td><br/><b>RT_CATHETER:</b></td>
      	      <td><br/>
      	      <select style="height:18px;font-size:10pt;" name="rt_catheter_charges" style="width: 200px" >
				<option value="<%=rs.getString(73)%>" selected>(please select:)</option>
				<option value="<%=rs.getString(73)%>">Yes</option>
				<option value="<%=rs.getString(73)%>">No</option>
				</select>
				
	
			<td><br/><input class="validate[custom[integer]] text-input" style="height:15px;font-size:10pt;"  type="text"  name="rt_catheter_charges_items"  size="1" value="<%=rs.getString(74)%>"></td>
			
	</tr>	

	<tr>
			 <td><br/><b>NEBULIZATION:</b></td>
      	      <td><br/>
      	      <select style="height:18px;font-size:10pt;" name="nebulilzation_charges" style="width: 200px" >
				<option value="<%=rs.getString(76)%>" selected>(please select:)</option>
				<option value="<%=rs.getString(76)%>">Yes</option>
				<option value="<%=rs.getString(76)%>">No</option>
				</select>
				
	
			<td><br/><input class="validate[custom[integer]] text-input" style="height:15px;font-size:10pt;"  type="text"  name="nebulization_charges_items"  size="1" value="<%=rs.getString(77)%>"></td>
			
	</tr>	

	<tr>
			 <td><br/><b>EMERGENCY:</b></td>
      	      <td><br/>
      	      <select style="height:18px;font-size:10pt;" name="emergency_charges" style="width: 200px" >
				<option value="<%=rs.getString(79)%>" selected>(please select:)</option>
				<option value="<%=rs.getString(79)%>">Yes</option>
				<option value="<%=rs.getString(79)%>">No</option>
				</select>
				
	
			<td><br/><input class="validate[custom[integer]] text-input" style="height:15px;font-size:10pt;"  type="text"  name="emergency_charges_items"  size="1" value="<%=rs.getString(80)%>"></td>
			
	</tr>	

	<tr>
			 <td><br/><b>PHYSIOTHERAPY:</b></td>
      	      <td><br/>
      	      <select style="height:18px;font-size:10pt;" name="physiotherapy_charges" style="width: 200px" >
				<option value="<%=rs.getString(82)%>" selected>(please select:)</option>
				<option value="<%=rs.getString(82)%>">Yes</option>
				<option value="<%=rs.getString(82)%>">No</option>
				</select>
				
	
			<td><br/><input class="validate[custom[integer]] text-input" style="height:15px;font-size:10pt;"  type="text"  name="physiotherapy_charges_items"  size="1" value="<%=rs.getString(83)%>"></td>
			
	</tr>	
	<tr>
	<td></td>
        <td><center><br/><input  style="height:25px;width:120px;font-size:10pt;" type="submit" value="SUBMIT" onClick="Confirm(this.IPD)" ></center></td> 
     
       <td><center><br/><input style="height:25px;width:120px;font-size:10pt;" type="reset" value="RESET"></center></td>
    </tr> 
	
	
			<%} 
			rs.close();
    ps.close();
    con.close();%>	
				
			
			
			</table>
			</fieldset>
	 
			</div>
			
			</form>
			</div>
			</div>
			</div>
			</div>
			





</body>
</html>