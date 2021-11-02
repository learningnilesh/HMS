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

<script language="javascript" type="text/javascript" src="jqueryCalendar/datetimepicker.js">
</script>
<script type="text/javascript" src="validate/jquery.js"></script>
<script type="text/javascript" src="validate/jquery.validate.js"></script>

<link rel="stylesheet" href="CSS/validationEngine.jquery.css" type="text/css"/>
	
	<script type="text/javascript" src="validate/jquery.js"></script>
	<script src="validate/jquery.validationEngine-en.js" type="text/javascript" charset="utf-8">
	</script>
	<script src="validate/jquery.validationEngine.js" type="text/javascript" charset="utf-8">
	</script>
	<script>
		jQuery(document).ready(function(){
			// binds form submission and fields to the validation engine
			jQuery("#SBIPD").validationEngine();
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
	<div id="main">
		<!-- header -->
		<div id="header" class="small">
			<div class="row-1">
         	<div class="wrapper">
            	<div class="logo">
               	
          <h1><a href="AdminHome.jsp">CHOUGALE</a></h1>
                  
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
                     	 <li><a href="AdminIpd.jsp" >ADMISSION</a></li>
                        <li><a href="AdminSearchByIPD.jsp" class="current">SEARCH</a></li>
                     <li><a href="AdminAdmittedPatients.jsp">ADMITTED PATIENTS</a></li>
                        
                    
                        
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
            
            
            	
<form id="SBIPD" action="AdminSearchByIPD.jsp" method=post>
            
              <fieldset>     
              <div style="width:500px;margin-left:70px;">  
        <table width="100%" align="center" cellpadding="8" cellspacing="5">



<tr>
<td><br>IPD/OPD NO.:</td>

<td><br><input class="validate[required] text-input" style="height:18px;font-size:10pt;" type=text size=30 name=email></td>
</tr>
</table>
<table width="100%" align="center">
<tr>

<td><center><br><input  style="height:25px;width:120px;font-size:10pt;" type=submit value="Search"></center></td>
</tr>



<%

if ( request.getParameter("email") != null )
{
%>

<jsp:useBean id="member" class="hospital.patient" scope="session" />
<jsp:useBean id="familymember"  class="hospital.Investigation"  scope="page" />
<jsp:setProperty name="familymember" property="*"/>
<jsp:setProperty name="member"
   property="*" />
   
<%
   if  ( member.login() )
   {
    response.sendRedirect("AdminPatient.jsp");
   }
   else
   {
     out.println("<p><center><span style=color:red>Patient not found</span></center>");
    }
  }
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