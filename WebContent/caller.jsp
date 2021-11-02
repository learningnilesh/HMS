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
<style type="text/css">
#submit {
  background-color: #bbb;
  padding: .5em;
  -moz-border-radius: 5px;
  -webkit-border-radius: 5px;
  border-radius: 6px;
  color: #fff;
  font-family: 'Oswald';
  font-size: 20px;
  text-decoration: none;
  border: none;
}

#submit:hover {
  border: none;
  background: orange;
  box-shadow: 0px 0px 1px #777;
}
</style>
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
            
         
           
 <form id="ADDCHARGES" action="UpdateCharges.jsp" method=post name="">
                  
              <div style="width:500px;margin-left:40px;">  
              <fieldset>
        <table width="150%" align="center" cellpadding="10" cellspacing="10" style="width:700px;margin-left:40px;">



	<tr>
	<td><button id="submit">Example Button</button></td>
        <td><center><br/><input style="height:30px;font-size:15pt;" align="right" type="submit" value="SUBMIT" onClick="Confirm(this.IPD)" ></center></td> 
     
       <td><center><br/><input style="height:30px;font-size:15pt;" align="middle" type="reset" value="RESET"></center></td>
    </tr> 
	
	
				
				
			
			
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