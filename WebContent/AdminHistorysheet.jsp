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
<title>historysheet</title>
<script type="text/javascript">
function Confirm(HISTORYSHEET){
alert("Record insert successfully!"); 
form.submit();
}
</script>
</head>
<body>

<jsp:useBean id="member" class="hospital.patient" scope="session" />

<jsp:useBean id="familymember"  class="hospital.Investigation"  scope="page" />
<jsp:setProperty name="familymember" property="*"/>

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
                     	<li><a href="AdminHome.jsp">Home</a></li>
                        <li><a href="AdminPatient.jsp" >PATIENT DETAILS</a></li>
                     	<li><a href="AdminInvestigationList.jsp">INVESTIGATION</a></li>
                        <li><a href="AdminHistorysheet.jsp"  class="current">HISTORYSHEET</a></li>
                     	<li><a href="AdminPatientDisplayBill.jsp">ADD CHARGES</a></li>
                     	<li><a href="AdminDischarge.jsp">DISCHARGE</a></li>
                     	<li><a href="AdminAnotherPatient.jsp">Another Patient</a></li>
                     	
                        
                    
                        
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
            

<fieldset>
<div style="width:500px;margin-left:40px;">
<table width="150%" align="center" cellpadding="10" cellspacing="10">
<center>
<form  action="Admininsertrecord.jsp" method=post name="HISTORYSHEET">
<fieldset>
<table>
<tr>
<td><b>PATIENT DIAGNOSIS:</b></td>
</tr>

  
  <tr>
          <td><br>S/B DR.</td>
          <td><br/><input style="height:18px;font-size:10pt;" type="text" name="sb_dr" size="30" /></td>
          
          <td><br>HNB:</td>
          <td><br/><input style="height:18px;font-size:10pt;" type="text" name="hnb" size="30" /></td>
  </tr>
  </table>
  
  </fieldset>
  
  <fieldset>  
  <div style="width:300px;margin-left:40px;">
  <table width="160%" align="center" cellpadding="10" cellspacing="20">
  <tr>
     <td>CHIEF COMPLAINTS:</td>
   
        <td><textarea name="chief_complaints" >
          </textarea>
          </td>
    </tr>  
    
    <tr>
     <td>PRESENT ILLNESS:</td>
   
        <td><textarea name="history_of_present_illness" >
          </textarea>
          </td>
    </tr> 
    </table>
   </div>
   </fieldset>
    
    
     <fieldset>
     <div style="width:300px;margin-left:40px;">
  <table width="160%" align="center" cellpadding="10" cellspacing="10">  
  
 
   
  <tr>
  <td><b>PAST INFO:</b></td>
    </tr>
    </table></div>
     <div style="width:300px;margin-left:40px;">
  <table width="160%" align="center" cellpadding="10" cellspacing="20"> 
  <tr>
  
  		<td><br>DM</td>
          <td><br/><input style="height:18px;font-size:10pt;" type="checkbox" name="dm" value="YES" /></td>
          
          <td><br>ASTHMA</td>
          <td><br/><input style="height:18px;font-size:10pt;" type="checkbox" name="asthma" value="YES" /></td>
          
          <td><br>TB</td>
          <td><br/><input style="height:18px;font-size:10pt;" type="checkbox" name="tb" value="YES" /></td>
          
          <td><br>HTN</td>
          <td><br/><input style="height:18px;font-size:10pt;" type="checkbox" name="htn" value="YES" /></td>
          
          <td><br>IHD</td>
          <td><br/><input style="height:18px;font-size:10pt;" type="checkbox" name="ihd" value="YES" /></td>
    </tr>
    <tr>
          
          <td><br>CVA</td>
          <td><br/><input style="height:18px;font-size:10pt;" type="checkbox" name="cva" value="YES" /></td>
          
          <td><br>EPILEPSY</td>
          <td><br/><input style="height:18px;font-size:10pt;" type="checkbox" name="epilepsy" value="YES" /></td>
          
          <td><br>COPD</td>
          <td><br/><input style="height:18px;font-size:10pt;" type="checkbox" name="copd" value="YES" /></td>
          
          <td><br>CKD</td>
          <td><br/><input style="height:18px;font-size:10pt;" type="checkbox" name="ckd" value="YES" /></td>
          
          <td><br>OTHER</td>
          <td><br/><input style="height:18px;font-size:10pt;" type="text" name="other" value="" /></td>
          
  </tr>
  </table>
  </div>
  </fieldset>
  
  <fieldset>
  
   <div style="width:300px;margin-left:40px;">
  <table width="160%" align="center" cellpadding="10" cellspacing="20">   
 
  <tr>
  		<td><b>PERSONAL INFO:</b></td> 
  </tr>
  </table></div>
   <div style="width:300px;margin-left:40px;">
  <table width="160%" align="center" cellpadding="10" cellspacing="20"> 
  <tr>
  			<td><br>DIET:</td> 
  			<td><br/><input style="height:18px;font-size:10pt;" type="text" name="diet" value="" /></td>
  			
  			<td><br>SLEEP:</td> 
  			<td><br/><input style="height:18px;font-size:10pt;" type="text" name="sleep" value="" /></td>
  			
  			<td><br>APPETITE:</td> 
  			<td><br/><input style="height:18px;font-size:10pt;" type="text" name="appetite" value="" /></td> 			
  </tr>
  
  <tr>
  			<td><br>BOWEL:</td> 
  			<td><br/><input style="height:18px;font-size:10pt;" type="text" name="bowel" value="" /></td>
  			
  			<td><br>BLADDER:</td> 
  			<td><br/><input style="height:18px;font-size:10pt;" type="text" name="bladder" value="" /></td>
  			
  			<td><br>OCCUPATION:</td> 
  			<td><br/><input style="height:18px;font-size:10pt;" type="text" name="occupatoin" value="" /></td> 
  
  </tr>
  </table>
  </div>
  
  <div style="width:300px;margin-left:40px;">
  <table width="160%" align="center" cellpadding="10" cellspacing="20">   
  <tr>
  			<td><br>ADDICATION:</td> 
  			
  			 <td><br>ALCOHOL</td>
          <td><br/><input style="height:18px;font-size:10pt;" type="checkbox" name="alcohol" value="YES" /></td>
          
          <td><br>TOBACCO</td>
          <td><br/><input style="height:18px;font-size:10pt;" type="checkbox" name="tobacco" value="YES" /></td>
          
          <td><br>SMOKING</td>
          <td><br/><input style="height:18px;font-size:10pt;" type="checkbox" name="smoking" value="YES" /></td>
          
          <td><br>PAN/GUTKHA</td>
          <td><br/><input style="height:18px;font-size:10pt;" type="checkbox" name="pangutkha" value="YES" /></td>
  
  </tr>
  
  </table>
</div>
</fieldset>
    
      
<fieldset>
  <div style="width:250px;margin-left:40px;">
  <table width="160%" align="center" cellpadding="10" cellspacing="20"> 
  <tr>
     		<td>DRUGS HISTORY:</td>
   			<td><textarea name="drugs_history" >
         	</textarea>
         	
         	</td>
    </tr>  
    
    <tr>
     		<td>FAMILY HISTORY:</td>
   			<td><textarea name="family_history" >
         	</textarea>
         	
         	</td>
    </tr>  
  
   
    </table>
    </div>
    </fieldset>
    <fieldset>
    <div style="width:300px;margin-left:40px;">
  <table width="160%" align="center" cellpadding="10" cellspacing="20"> 
    <tr>
    		<td><b>GENERAL EXAMINATION:</b></td> 
  			
  			</tr>
  			</table></div>
  			<div style="width:300px;margin-left:40px;">
  <table width="160%" align="center" cellpadding="10" cellspacing="20"> 
  			<tr>
  			<td>HIGHER FUN-</td> 
  			<td><input style="height:18px;font-size:10pt;" type="text" name="higher_fun" value="" /></td>
  	</tr>
  	
  	<tr>
  			<td>TEMP-</td> 
  			<td><input style="height:18px;font-size:10pt;" type="text" name="temp" value="" /></td> 
  			
  			<td>PR-</td> 
  			<td><input style="height:18px;font-size:10pt;" type="text" name="pr" value="" /></td>
  			
  			<td>BP</td> 
  			<td><input style="height:18px;font-size:10pt;" type="text" name="bp" value="" /></td>
  			
  			
    
    </tr>
  
  
  	
  	<tr>
  			<td>RR-</td> 
  			<td><input style="height:18px;font-size:10pt;" type="text" name="rr" value="" /></td>
  			
  			<td>PALLOR-</td> 
  			<td><input style="height:18px;font-size:10pt;" type="text" name="pallor" value="" /></td> 
  			
  			<td>EDEMA-</td> 
  			<td><input style="height:18px;font-size:10pt;" type="text" name="edema" value="" /></td>
  			</tr>
  			<tr>
  			<td>CLUBBING-</td> 
  			<td><input style="height:18px;font-size:10pt;" type="text" name="clubbing" value="" /></td>
  			
  			<td>LNPATHY-</td> 
  			<td><input style="height:18px;font-size:10pt;" type="text" name="lnpathy" value="" /></td>
  			
  			<td>ICTERUS-</td> 
  			<td><input style="height:18px;font-size:10pt;" type="text" name="icterus" value="" /></td>
    
    </tr>
    
    <tr>
  			<td>JVP-</td> 
  			<td><input style="height:18px;font-size:10pt;" type="text" name="jvp" value="" /></td> 
  			
  			<td>SIGN OF CCF-</td> 
  			<td><input style="height:18px;font-size:10pt;" type="text" name="sign_of_ccf" value="" /></td>
  			
  			<td>HEIGHT in cm-</td> 
  			<td><input style="height:18px;font-size:10pt;" type="text" name="height_in_cm" value="" /></td>
  			</tr>
  			<tr>
  			
  			<td>WEIGHT in kg-</td> 
  			<td><input style="height:18px;font-size:10pt;" type="text" name="weight_in_kg" value="" /></td>
    </tr>
    
    </table>
    </div>
  </fieldset>
  
    
  <fieldset>
 <div style="width:300px;margin-left:40px;">
<table width="160%" align="center" cellpadding="10" cellspacing="20">   
    <tr>
    	<td><b>SYSTEMATIC EXAMINATION:</b></td>
    </tr>
    
    <tr>
    	<td>CNS EXAMINATION:</td>
    </tr>
    	
    <tr>	
    	<td>Higher Function-</td> 
  		<td><input style="height:18px;font-size:10pt;" type="text" name="higher_function" value="" /></td> 
  	</tr>
  		
  	<tr>	
  		<td><br>CRANIAL NERVE(Facial Nerve)-</td> 
  		<td><br/><input style="height:18px;font-size:10pt;" type="text" name="cranial_nerve" value="" /></td> 
  	</tr>
  		
  	<tr>	
    	<td><br>Tone-</td> 
  		<td><br/><input style="height:18px;font-size:10pt;" type="text" name="tone" value="" /></td> 
    	
    </tr>
    
    </table>
  </div>
    
  <div style="width:300px;margin-left:40px;">
            <table border="1" width="30%" cellpadding="2">
                
                <tbody>
                <tr>
                        <td>POWER</td>
                        <td>RIGHT</td>
                        <td>LEFT</td>
                    </tr>
                    <tr>
                        <td>UL</td>
                        <td><input style="height:18px;font-size:10pt;" type="text" name="right_ul" value="" /></td>
                        <td><input style="height:18px;font-size:10pt;" type="text" name="left_ul" value="" /></td>
                        
                    </tr>
                    <tr>
                        <td>LL</td>
                        <td><input style="height:18px;font-size:10pt;" type="text" name="right_ll" value="" /></td>
                        <td><input style="height:18px;font-size:10pt;" type="text" name="left_ll" value="" /></td>
                    </tr>
                   
               </tbody>
            </table>
      </div>
      
      
       <div style="width:300px;margin-left:40px;">
<table width="160%" align="center" cellpadding="10" cellspacing="20">   
         <tr>	
    	<td>Glassglow Coma Scale-</td> 
  		<td><input style="height:18px;font-size:10pt;" type="text" name="glassglow_coma_scale" value="" /></td> 
    	
    </tr>
    
    <tr>	
    	<td>Sensory System-</td> 
  		<td><textarea name="sensory_system" >
          </textarea>
    	</td>
    </tr>
    
    <tr>	
    	<td>Coordination/Abnormal Movement-</td> 
  		<td><input style="height:18px;font-size:10pt;" type="text" name="coordination_abnormal_movement" value="" /></td> 
    	
    </tr>
       <tr>
     <td><b>Reflex:</b></td>
     </tr>
    </table>
    </div>
    
   
   <div style="width:300px;margin-left:40px;">
    <table border="1" width="30%" cellpadding="2">
                
          
                <tbody>
                <tr>
                        <td>PLANTER</td>
                        <td>RIGHT</td>
                        <td>LEFT</td>
                    </tr>
                    <tr>
                        <td><input style="height:18px;font-size:10pt;" type="text" name="planter" value="" /></td>
                        <td><input style="height:18px;font-size:10pt;" type="text" name="right" value="" /></td>
                        <td><input style="height:18px;font-size:10pt;" type="text" name="left" value="" /></td>
                        
                    </tr>
                    
               </tbody>
            </table>
    </div>
    
     <div style="width:300px;margin-left:40px;">
<table width="160%" align="center" cellpadding="10" cellspacing="20">   
    <tr>	
    	<td>CEREBELLUM FUN-</td> 
  		<td><input style="height:18px;font-size:10pt;" type="text" name="cerebellum_fun" value="" /></td> 
    	
    </tr>
    
    <tr>	
    	<td>CLINICAL PROVISIONAL DIAGNOSIS:</td> 
  		<td><textarea name="clinical_provisional_diagnosis" >
          </textarea>
    	
    	</td>
    </tr>
   
        </table>
    </div>
    
     
<table width="160%" align="center" cellpadding="10" cellspacing="20" style="width:300px;margin-left:200px;">   
 
	<tr>
         
     <td><p class="ex1"><button style="height:25px;width:120px;font-size:10pt;" name="submit" type="submit" value="SUBMIT" >SUBMIT</button></p></td>
       <td><p class="ex1"><button style="height:25px;width:120px;font-size:10pt;" name="reset" type="reset" value="RESET">RESET</button></p></td>
    </tr> 
   
    
            </table>
            </table>
      </div>
</fieldset>
    
</form>
</center>



   
 
   

</table></div></fieldset></div></div></div></div>



</body>
</html>