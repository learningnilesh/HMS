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
function Confirm(DISCHARGE){
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
			jQuery("#DISCHARGE").validationEngine();
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
                     	<li><a href="AdminHome.jsp">Home</a></li>
                     	<li><a href="AdminPatient.jsp" >PATIENT DETAILS</a></li>
                     	<li><a href="AdminInvestigation.jsp">INVESTIGATION</a></li>
                     	<li><a href="AdminEditHistoryRecord.jsp">HISTORYSHEET</a></li>
                     	<li><a href="AdminPatientDisplayBill.jsp">ADD CHARGES</a></li>
                     	<li><a href="AdminDischarge.jsp"  class="current">DISCHARGE</a></li>
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
	String id_patient1=member.getMid();
     Connection con = Database.getConnection();
     PreparedStatement ps = con.prepareStatement("select *  from patient where id_patient = ?");
     ps.setString(1,member.getMid());
     
     ResultSet rs = ps.executeQuery();

   

%>
                     
 <form  id="DISCHARGE" action="AdminGiveDischarge.jsp" method=post name="DISCHARGE">
              <fieldset>     
              <div style="width:350px;margin-left:220px;">  
        <table width="150%" align="center" cellpadding="10" cellspacing="10">




<%
 while( rs.next())
 {
     String id_patient=rs.getString("id_patient");
%>

	<tr>
			<td><br/>PATIENT IPD/OPD NO:</td>	
			<td><br/><input class="validate[required]" style="height:15px;font-size:10pt;"  type="text"  name="patient_id"  value="<%=rs.getString("patient_id")%>"></td>
				
	</tr>

	<tr>
			<td><br/>NAME:</td>	
			<td><br/><input class="validate[required,minSize[2],maxSize[40],custom[onlyLetterSp]] text-input" style="height:15px;font-size:10pt;"  type="text"  name="name"  value="<%=rs.getString("patient_name")%>"></td>
				
	</tr>
	
	<tr>
			<td><br/>ADDRESS:</td>	
			<td><br/><input class="validate[required,minSize[5],maxSize[70]] text-input" style="height:15px;font-size:10pt;"  type="text"  name="address"  value="<%=rs.getString("address")%>"></td>
				
	</tr>
	
	<tr>
			<td><br/>DOA:</td>	
			<td><br/><input class="validate[required]" style="height:18px;font-size:10pt;" type="Text" id="doa" name="date_of_admit"   value="<%=rs.getString("date_of_admit")%>"><a href="javascript:NewCal('doa','ddmmyyyy','arrow',true,'12',true)"><img src="images/cal.gif" width="16" height="16" border="0" alt="Pick a date"></a></td>
				
	</tr>
	
	<tr>
			<td><br/>DOD:</td>	
			<td><br/><input class="validate[required]" style="height:15px;font-size:10pt;"  type="text"  id="dod" name="date_of_discharge"  value="<%=rs.getString("date_of_discharge")%>"><a href="javascript:NewCal('dod','ddmmyyyy','arrow',true,'12',true)"><img src="images/cal.gif" width="16" height="16" border="0" alt="Pick a date"></a></td>
				
	</tr>
	
	<tr>
        <td><center><br/><input  style="height:25px;width:120px;font-size:10pt;" style="height:18px;font-size:10pt;" style="height:18px;font-size:10pt;" type="submit" value="DISCHARGE" onClick="Confirm(this.IPD)" ></center></td> 
     
       
    </tr> 
    

<%
    }


    rs.close();
    ps.close();
    con.close();
%>
</table>
</div>
</fieldset>
</form>
</div>
</div>
</div>
</div>

</body>
</html>