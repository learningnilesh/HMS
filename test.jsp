<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="mycss/style.css" rel="stylesheet" type="text/css" />
<link href="mycss/layout.css" rel="stylesheet" type="text/css" />
<script src="mycss/maxheight.js" type="text/javascript"></script>

<script language="javascript" type="text/javascript" src="datetimepicker.js">
</script>
<script type="text/javascript" src="validate/jquery.js"></script>
<script type="text/javascript" src="validate/jquery.validate.js"></script>

<link rel="stylesheet" href="mycss/validationEngine.jquery.css" type="text/css"/>
	
	<script type="text/javascript" src="validate/jquery.js"></script>
	<script src="validate/jquery.validationEngine-en.js" type="text/javascript" charset="utf-8">
	</script>
	<script src="validate/jquery.validationEngine.js" type="text/javascript" charset="utf-8">
	</script>
	<script>
		jQuery(document).ready(function(){
			// binds form submission and fields to the validation engine
			jQuery("#IPD").validationEngine();
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
               	
          <h1><a href="adminhome.jsp">CHOUGALE</a></h1>
                  
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
                     	<li><a href="adminhome.jsp" >Home page</a></li>
                        <li><a href="adminadmission1.jsp" class="current">IPD</a></li>
                        <li><a href="adminopd.jsp">OPD</a></li>
                        
                    
                        
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
            
                     
        <form id="IPD" method="post" action="insertrecord.jsp">    
<fieldset>
	<div style="width:500px;margin-left:70px;">
<table width="160%" align="center" cellpadding="10" cellspacing="20">
			<tr>
				<td>Name of Patient:</td>
				<td><p><br/><input type="text" class="validate[required,minSize[2],maxSize[40],custom[onlyLetterSp]] text-input" name="patient_name"></p></td>
          
         		<td><p><br/>IPDNO:</p></td>
                <td><input type="text" class="validate[required,minSize[2],maxSize[10],custom[integer]] text-input" name="ipd_no"></td>
			</tr>
			<tr>
   	     
          
        
       		   <td>Age:</td>
        	   <td><input type="text" class="validate[required,minSize[1],maxSize[3],custom[integer]] text-input" name="age" value="" /></td>
      	      <!--  <td><div align="right"></div></td>-->
      		   <td><br/><p>Gender:</p></td>
               <td><p><input type="checkbox" class="validate[required,maxCheckbox[1]] checkbox" name="gender" value="1" />male</p>
          <p><input type="checkbox" class="validate[required,maxCheckbox[1]] checkbox" name="gender" value="0" />female</p></td>
            </tr>
            
            <tr>
     	 
         		 <td><p>Address:</p></td>
      		    <td><p> <textarea class="validate[required,minSize[5],maxSize[70]] text-input" name="address" cols="30" >
     		     </textarea></p>
      	    	</td>
         
     		</tr>
     		
     	<tr>
          <td><p>Marital Status:</p></td>
             <td><p><input type="checkbox" class="validate[required,maxCheckbox[1]] checkbox" name="marital_status" value="1" />married</p>
          <p><input type="checkbox" class="validate[required,maxCheckbox[1]] checkbox" name="marital_status" value="0" />unmarried</p></td>
     
    	 </tr>
    	 
    	 <tr>
    	 	<td><p>Occupation:</p></td>
          <td><p><input type="text" name="occupation" ></p></td>
          
          <td><p >Ph.No:</p></td>
          <td><p><input type="text"class="validate[required,minSize[10],maxSize[12],custom[integer]] text-input" name="phone_no" ></p></td>
    	 </tr>
    	 <tr>
                  
          <td>DOA and Time</td>
          
         <td><input type="Text" id="doa" class="validate[required] name="date_of_admit"  size="25" ><a href="javascript:NewCal('doa','ddmmyyyy','arrow',true,'12',true)"><img src="images/cal.gif" width="16" height="16" border="0" alt="Pick a date"></a></td>
	  		
   	      <td>DOD and Time</td>
         <td> <input type="Text"  id="dod"  size="25"><a href="javascript:NewCal('dod','yyyy.mm.dd','arrow',true,'12',true)"><img src="images/cal.gif" width="16" height="16" border="0" alt="Pick a date"></a></td>
     </tr>
     	 <tr>
          <td>Name of Nearest Relative:</td>
          <td><br/><p><input type="text" class="validate[minSize[5],maxSize[70],custom[onlyLetterSp]]" name="nearest_relative" ></p></td>
     </tr>
     	 <tr>
          <td>Address:</td>
          <td><textarea class="validate[maxSize[75]] text-input" name="relative_address" cols="30">
          </textarea>
          
     
     <td>Ph:</td>
          <td><input type="text" class="validate[minSize[10],maxSize[12],custom[integer]] text-input" name="relative_ph" ></td>
     
     </tr>
	</table>
	</div>
</fieldset>

<fieldset>
<div style="width:550px;margin-left:70px;">
<table width="150%" align="center" cellpadding="10" cellspacing="20">
<tr>
 <td><div align="right"></div>
<td><center><b>For MLC</b></center></td>
</tr>
<tr>
          <td><p >Police Station:</p></td>
          <td><p><input type="text" class="validate[minSize[5],maxSize[70],custom[onlyLetterSp]] name="mlc_policestn" ></p></td>
          
          <td><p class="ex1">Police Name:</p></td>
          <td><p><input type="text" class="validate[minSize[5],maxSize[70],custom[onlyLetterSp]] name="mlc_policename" ></p></td>
     </tr>
     	 <tr>
          <td><p >MLC Reg on Date:</p></td>
          <td><p><input type="text" name="mlc_regi_date" ></p></td>
          
          <td><p class="ex1">MLC NO:</p></td>
          <td><p><input type="text" name="mlc_no" ></p></td>
          
         
    
     </tr>
     
     <tr>
      <td>Buccas No:</td>
          <td><p><input type="text" name="mlc_buccas_no" ></p></td>
     </tr>

</table>
</div>
</fieldset>

<fieldset>
	<div style="width:500px;margin-left:70px;">
<table width="150%" align="center" cellpadding="10" cellspacing="20">
		<tr>
          <td><p>PROVISIONAL DIAGNOSIS:</p></td>
          <td><p><input type="text" name="provisional_diagnosis" ></p></td>
     
          <td><p>FINAL DIAGNOSIS:</p></td>
          <td><p><input type="text" name="final_diagnosis" ></p></td>
     </tr>
  </table>
  </div>
  
  <div style="width:350px;margin-left:70px;">
<table width="160%" align="center" cellpadding="2" cellspacing="8"> 
      <tr>
          <td>Patient Cured</td>
          <td><input type="checkbox" name="cured" value="" /></td>
          
          <td>Improved</td>
          <td><input type="checkbox" name="improved" value="" /></td>
          
          <td>Not Improved</td>
          <td><p><br/><input type="checkbox" name="not_improved" value="" /></p></td>
        </tr>
        <tr>  
          <td>Died</td>
          <td><br/><p><input type="checkbox" name="died" value="" /></p></td>
          
          <td>Discharge on Request</td>
          <td><br/><p><input type="checkbox" name="discharge_on_request" value="" /></p></td>
          
          <td>Against Medical Advice</td>
          <td><br/><p><input type="checkbox" name="against_medical_advice" value="" /></p></td>
     </tr>
	</table>
	</div>
</fieldset>

<fieldset>
<div style="width:500px;margin-left:70px;">
<table width="160%" align="center" cellpadding="10" cellspacing="20">
		 <tr>
          <td><p >Name of Relative:</p></td>
          <td><p><input type="text" class="validate[minSize[5],maxSize[70],custom[onlyLetterSp]] name="relative_name" class="validate[required,custom[onlyLetterSp]] text-input"></p></td>
          
     
          <td><p>Relative Relation:</p></td>
          <td><p><input type="text" class="validate[minSize[5],maxSize[70],custom[onlyLetterSp]] name="relative_relation" ></p></td>
     </tr>
     
     	 <tr>
          <td><p >Date and Time</p></td>
          
                   
         <td> <input type="Text" id="relative" maxlength="25" size="25"><a href="javascript:NewCal('relative','ddmmmyyyy',true,24)"><img src="images/cal.gif" width="16" height="16" border="0" alt="Pick a date"></a></td>
	  		
          
     </tr>
     
     <tr>
          <td><p>Name of Patient/Relative:</p></td>
          <td><p><input type="text" class="validate[minSize[5],maxSize[70],custom[onlyLetterSp]] name="name_of_patient_relative" ></p></td>
     </tr>
     	 <tr>
          <td><p>Name of Witness:</p></td>
          <td><p><input type="text" class="validate[minSize[5],maxSize[70],custom[onlyLetterSp]] name="witness_name" ></p></td>
     </tr>
      <tr>
          <td><p>Witness Address:</p></td>
			<td> <textarea name="witness_address" class="validate[maxSize[75]] text-input" cols="30">
          </textarea>
         
     </tr>
	</table>
	
	</div>
	<div style="width:450px;margin-left:100px;">
<table width="150%" align="center" cellpadding="10" cellspacing="20">
	<tr>
        <td><input type="submit" value="SUBMIT" /></td> 
     
       <td><input type="reset" value="RESET"></td>
    </tr> 
    
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