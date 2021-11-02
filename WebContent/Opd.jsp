<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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

function Confirm(OPD){

	
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
			jQuery("#OPD").validationEngine();
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

<title>OPD</title>
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
                     	<li><a href="Home.jsp" >Home</a></li>
                        <li><a href="Ipd.jsp">IPD</a></li>
                        <li><a href="Opd.jsp" class="current">OPD</a></li>
                      
                        
                    
                        
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
             
                    <form id="OPD" action="InsertOpdRecord.jsp" id="OPD" method="post"> 
<fieldset>
<div style="width:500px;margin-left:70px;">
<table width="100%" align="center" cellpadding="10" cellspacing="20">


<tr>
				<td><br/>Name of Patient:</td>
				<td><br/><input type="text" class="validate[required,minSize[2],maxSize[40],custom[onlyLetterSp]] text-input" name="patient_name" size="30"></td>
            </tr>
			<tr>
       		   <td><br/>Age:</td>
        	   <td><br/><input type="text" class="validate[required,minSize[1],maxSize[3],custom[integer]] text-input"  name="age"  size="30"></td>
      	      
      	     

      		  <!-- 
               <td><p><input type="checkbox" class="validate[required,maxCheckbox[1]] checkbox" name="gender" value="male" />male</p>
          <p><input type="checkbox" class="validate[required,maxCheckbox[1]] checkbox" name="gender" value="female" />female</p></td>
          -->
            </tr>
            
            <tr>
     	 
         		 <td><br/>Address:</td>
      		    <td><br/> <textarea  class="validate[required,minSize[5],maxSize[70]] text-input" name="address" cols="30"  >
     		     </textarea>
      	    	</td>
         
     		</tr>
     		
     	<tr>
          <td><br/>Marital Status:</td>
           <td><br/>
      	      <select name="marital_status" style="width: 200px">
				<option value="0" selected>(please select:)</option>
				<option value="married">Married</option>
				<option value="unmarried">Unmarried</option>
				<option value="divorcee">Divorcee</option>
				</select>
			</td>
			
			
          <!-- 
             <td><p><input type="checkbox" class="validate[required,maxCheckbox[1]] checkbox" name="marital_status" value="married" />married</p>
          <p><input type="checkbox" class="validate[required,maxCheckbox[1]] checkbox" name="marital_status" value="unmarried" />unmarried</p></td>
      -->
    	 </tr>
    	 
    	 <tr>
    	 	
          
          <td><br/>Ph.No:</td>
          <td><br/><input class="validate[required,minSize[10],maxSize[12],custom[integer]] text-input" type="text" name="phone_no" size="30"></td>
          </tr>
          <tr>
           <td><br/>Gender:</td>
      	      <td><br/>
      	      <select name="gender" style="width: 200px">
				<option value="0" selected>(please select:)</option>
				<option value="male">Male</option>
				<option value="female">Female</option>
				</select>
			</td>
			
    	 </tr>
    	
    	 <tr>
    	
                  <td><br/>Occupation:</td>
          <td><br/><input class="validate[minSize[2],maxSize[40],custom[onlyLetterSp]] text-input" type="text" name="occupation" size="30"></td>
          </tr>
          
           <tr> <td></td>
        <td><center><br/><input style="height:25px;width:120px;font-size:10pt;" type="submit" value="SUBMIT" ></center></td> 
     
       <td><center><br/><input style="height:25px;width:120px;font-size:10pt;" type="reset" value="RESET"></center></td>
    </tr> 


	   

   

</table>
</div>
</fieldset>
</form>
 <!--           
          
          <td>DIAGNOSIS:</td>
          <td><br/><p><input type="text" name="diagnosis" value="" /></p></td>
          
          <td>MEDICINE:</td>
          <td><br/><p><input type="text" name="medicine" value="" /></p></td>
  </tr>
   
  <tr>
  
         <td><b>LAB:</b></td>
         </tr>
         
         
         <tr>
          <td>REGULAR LAB:</td>
          <td><br/><p><input type="text" name="regular_lab" value="" /></p></td>
          <td>SPECIAL LAB:</td>
          <td><br/><p><input type="text" name="special_lab" value="" /></p></td>
          <td>NEURO LAB:</td>
          <td><br/><p><input type="text" name="neuro_lab" value="" /></p></td>
</tr>
</table>
	</div>
  <left>
  
  
  <div style="width:500px;margin-left:80px;">
            <table border="1" width="30%" cellpadding="2">
                
                <tbody>
                <tr>
                        <td>CT SCAN</td>
                        <td><input type="text" name="ct_scan" value="" /></td>
                </tr>
                <tr>
                        <td>MRI</td>
                        <td><input type="text" name="mri" value="" /></td>
                </tr>
                <tr>
                        <td>ULTRASOUND</td>
                        <td><input type="text" name="ultrasound" value="" /></td>
                </tr>
                <tr>        
                        <td>X-RAY</td>
                        <td><input type="text" name="x_ray" value="" /></td>
                </tr>
                <tr>
                        <td>OTHER</td>
                        <td><input type="text" name="other" value="" /></td>
                </tr>
                   
                   
                   
                   
               </tbody>
               
               
            </table>
            -->
            <!-- 
            </div>
            </left>
     <div style="width:500px;margin-left:80px;">
     <table width="160%" align="center" cellpadding="10" cellspacing="20">
     <tr>
         
     <td><p class="ex1"><button name="submit" type="submit" value="SUBMIT">SUBMIT</button></p></td>
       <td><p class="ex1"><button name="reset" type="reset" value="RESET">RESET</button></p></td>
    </tr> 
   -->
     
            </div>
         </div>
     </div>
</div>     
</body>
</html>