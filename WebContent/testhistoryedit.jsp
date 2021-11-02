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
   <%
	int id=Integer.parseInt(request.getParameter("id").toString());
  
     // load data from table
     Connection con = Database.getConnection();
     PreparedStatement ps = con.prepareStatement("select * from history_record where id_patient = "+id+"");
    // ps.setString(1,member.getMid());
     ResultSet rs = ps.executeQuery();
     rs.next();
     
   
%>
		<!-- content -->
		<div id="content">
            	
        <div class="indent"> 
                 
          <div class="extra-wrap"> 
            


<div class="boxed">
<form  action="AdminEditHistorySheetFinal.jsp" method=post name="HISTORYSHEET">
<table width="50%" align="center" cellpadding="5" cellspacing="10">






 <tr>
				<td><br/><b>IPD no. of Patient:</b></td>
				<td><br/><input type="text" name="patient_id" size="30" value="<%=rs.getString("patient_id")%>" ></td>
           
				<td><br/>Name of Patient:</td>
				<td><br/><input type="text" name="patient_name" size="30" value="<%=rs.getString("patient_name")%>"></td>
            </tr>
			
<tr>



<td><b><font size="2.5" style="color:white;background-color:grey;font:700 10pt verdana">PATIENT DIAGNOSIS:</font></b></td>
</tr>

  
  <tr>
          <td><br>S/B DR.</td>
          <td><br/><input  type="text" name="sb_dr" size="30" value="<%=rs.getString("sb_dr")%>"/></td>
          
          <td><br>HNB:</td>
          <td><br/><input  type="text" name="hnb" size="30" value="<%=rs.getString("hnb")%>"/></td>
  </tr>
 
  <tr>
     <td>CHIEF COMPLAINTS:</td>
   
        <td><textarea name="chief_complaints" ><%=rs.getString("chief_complaints") %>
          </textarea>
          </td>
  
     <td>PRESENT ILLNESS:</td>
   
        <td><textarea name="history_of_present_illness" ><%=rs.getString("history_of_present_illness") %>
          </textarea>
          </td>
    </tr> 
   
 
   
  <tr>
  <td><b><font size="2.5" style="color:white;background-color:grey;font:700 10pt verdana">PAST INFO:</font></b></td>
    </tr>
     <tr>
  
  		<td><br/>DM</td>
          <td><br/><input   type="checkbox" name="dm" value="YES"<%=rs.getString("dm").equals("null")?"":"UNCHECKED"%> /></td>
          
          <td><br/>ASTHMA</td>
          <td><br/><input   type="checkbox" name="asthma" value="YES"<%=rs.getString("asthma").equals("YES")?"CHECKED":""%> /></td>
          
      </tr>
          <tr>
          <td><br>TB</td>
          <td><br/><input   type="checkbox" name="tb" value="<%=rs.getString("tb").equals("null")?"CHECKED":"" %>" /></td>
          
          
          <td><br>HTN</td>
          <td><br/><input   type="checkbox" name="htn" value="YES"<%=rs.getString("htn").equals("YES")?"CHECKED":""%> /></td>
        
        </tr>
          <tr>  
          <td><br>IHD</td>
          <td><br/><input   type="checkbox" name="ihd" value="YES"<%=rs.getString("ihd").equals("YES")?"CHECKED":""%> /></td>
    
          
          <td><br>CVA</td>
          <td><br/><input   type="checkbox" name="cva" value="YES"<%=rs.getString("cva").equals("YES")?"CHECKED":""%> /></td>
      </tr>
    <tr>   
          <td><br>EPILEPSY</td>
          <td><br/><input   type="checkbox" name="epilepsy" value="YES"<%=rs.getString("epilepsy").equals("YES")?"CHECKED":""%> /></td>
          
          
          <td><br>COPD</td>
          <td><br/><input   type="checkbox" name="copd" value="YES"<%=rs.getString("copd").equals("YES")?"CHECKED":""%> /></td>
     </tr>
          <tr>     
          <td><br>CKD</td>
          <td><br/><input   type="checkbox" name="ckd" value="YES"<%=rs.getString("ckd").equals("YES")?"CHECKED":""%> /></td>
          
        
          
          <td><br>OTHER</td>
          <td><br/><input   type="text" name="other" value="<%=rs.getString("other") %>" /></td>
          
  </tr>
   
  <tr>
  		<td><b><font size="2.5" style="color:white;background-color:grey;font:700 10pt verdana">PERSONAL INFO:</font></b></td> 
  </tr>
  <tr>
  			<td><br>DIET:</td> 
  			<td><br/><input   type="text" name="diet" value="<%=rs.getString("diet")%>" /></td>
  			
  			<td><br>SLEEP:</td> 
  			<td><br/><input   type="text" name="sleep" value="<%=rs.getString("sleep")%>" /></td>
  			
  			</tr>
          <tr>
  			
  			<td><br>APPETITE:</td> 
  			<td><br/><input   type="text" name="appetite" value="<%=rs.getString("appetite")%>" /></td> 			
  
  			<td><br>BOWEL:</td> 
  			<td><br/><input   type="text" name="bowel" value="<%=rs.getString("bowel")%>" /></td>
  			
  			
  			</tr>
          <tr>
  			<td><br>BLADDER:</td> 
  			<td><br/><input   type="text" name="bladder" value="<%=rs.getString("bladder")%>" /></td>
  			
  			<td><br>OCCUPATION:</td> 
  			<td><br/><input   type="text" name="occupation" value="<%=rs.getString("occupation")%>" /></td> 
  
  </tr>
   <tr>
  			<td><br><font size="2.5" style="color:white;background-color:grey;font:700 10pt verdana">ADDICATION:</font></td> 
  			
  			</tr>
          <tr>
  			 <td><br>ALCOHOL</td>
          <td><br/><input   type="checkbox" name="alcohol" value="YES"<%=rs.getString("alcohol").equals("YES")?"CHECKED":""%> /></td>
          
          <td><br>TOBACCO</td>
          <td><br/><input   type="checkbox" name="tobacco" value="YES"<%=rs.getString("tobacco").equals("YES")?"CHECKED":""%> /></td>
          </tr>
          <tr>
          <td><br>SMOKING</td>
          <td><br/><input   type="checkbox" name="smoking" value="YES"<%=rs.getString("smoking").equals("YES")?"CHECKED":""%> /></td>
          
          <td><br>PAN/GUTKHA</td>
          <td><br/><input   type="checkbox" name="pangutkha" value="YES"<%=rs.getString("pangutkha").equals("YES")?"CHECKED":""%> /></td>
  
  </tr>
  
  <tr>
     		<td>DRUGS HISTORY:</td>
   			<td><textarea name="drugs_history" ><%=rs.getString("drugs_history") %>
         	</textarea>
         	
         	</td>
    </tr>  
    
    <tr>
     		<td>FAMILY HISTORY:</td>
   			<td><textarea name="family_history" ><%=rs.getString("family_history") %>
         	</textarea>
         	
         	</td>
    </tr>  
  
   
    <tr>
    		<td><b><font size="2.5" style="color:white;background-color:grey;font:700 10pt verdana">GENERAL EXAMINATION:</font></b></td> 
  			
  			</tr>
    			<tr>
  			<td>HIGHER FUN-</td> 
  			<td><input   type="text" name="higher_fun" value="<%=rs.getString("higher_fun")%>" /></td>
  	
  			<td>TEMP-</td> 
  			<td><input   type="text" name="temp" value="<%=rs.getString("temp")%>" /></td> 
  			</tr>
  	
  	<tr>
  			<td>PR-</td> 
  			<td><input   type="text" name="pr" value="<%=rs.getString("pr")%>" /></td>
  			
  			<td>BP</td> 
  			<td><input   type="text" name="bp" value="<%=rs.getString("bp")%>" /></td>
  			
  			
    
    </tr>
  
  
  	
  	<tr>
  			<td>RR-</td> 
  			<td><input   type="text" name="rr" value="<%=rs.getString("rr")%>"/></td>
  			
  			<td>PALLOR-</td> 
  			<td><input   type="text" name="pallor" value="<%=rs.getString("pallor")%>" /></td> 
  			</tr>
  	
  	<tr>
  			<td>EDEMA-</td> 
  			<td><input   type="text" name="edema" value="<%=rs.getString("edema")%>" /></td>
  			
  			<td>CLUBBING-</td> 
  			<td><input   type="text" name="clubbing" value="<%=rs.getString("clubbing")%>" /></td>
  		</tr>
  			<tr>	
  			<td>LNPATHY-</td> 
  			<td><input   type="text" name="lnpathy" value="<%=rs.getString("lnpathy")%>" /></td>
  			
  			<td>ICTERUS-</td> 
  			<td><input   type="text" name="icterus" value="<%=rs.getString("icterus")%>" /></td>
    
    </tr>
    
    <tr>
  			<td>JVP-</td> 
  			<td><input   type="text" name="jvp" value="<%=rs.getString("jvp")%>" /></td> 
  			
  			<td>SIGN OF CCF-</td> 
  			<td><input   type="text" name="sign_of_ccf" value="<%=rs.getString("sign_of_ccf")%>" /></td>
  		</tr>
  			<tr>	
  			<td>HEIGHT in cm-</td> 
  			<td><input   type="text" name="height_in_cm" value="<%=rs.getString("height_in_cm")%>" /></td>
  			
  			
  			<td>WEIGHT in kg-</td> 
  			<td><input   type="text" name="weight_in_kg" value="<%=rs.getString("weight_in_kg")%>" /></td>
    </tr>
   <tr>
    	<td><b><font size="2.5" style="color:white;background-color:grey;font:700 10pt verdana">SYSTEMATIC EXAMINATION:</font></b></td>
    </tr>
    
    <tr>
    	<td><font size="2.5" style="color:white;background-color:grey;font:700 10pt verdana">CNS EXAMINATION:</font></td>
    </tr>
    	
    <tr>	
    	<td>Higher Function-</td> 
  		<td><input   type="text" name="higher_function" value="<%=rs.getString("higher_function")%>" /></td> 
  	</tr>
  		
  	<tr>	
  		<td><br>CRANIAL NERVE(Facial Nerve)-</td> 
  		<td><br/><input   type="text" name="cranial_nerve" value="<%=rs.getString("cranial_nerve")%>" /></td> 
  	</tr>
  		
  	<tr>	
    	<td><br>Tone-</td> 
  		<td><br/><input   type="text" name="tone" value="<%=rs.getString("tone")%>" /></td> 
    	
    </tr>
               
                <tbody>
                <tr>
                        <td>POWER</td>
                        <td>RIGHT</td>
                        <td>LEFT</td>
                    </tr>
                    <tr>
                        <td>UL</td>
                        <td><input   type="text" name="right_ul" value="<%=rs.getString("right_ul")%>" /></td>
                        <td><input   type="text" name="left_ul" value="<%=rs.getString("left_ul")%>"/></td>
                        
                    </tr>
                    <tr>
                        <td>LL</td>
                        <td><input   type="text" name="right_ll" value="<%=rs.getString("right_ll")%>" /></td>
                        <td><input   type="text" name="left_ll" value="<%=rs.getString("left_ll")%>" /></td>
                    </tr>
       
          <tr>	
    	<td>Glassglow Coma Scale-</td> 
  		<td><input   type="text" name="glassglow_coma_scale" value="<%=rs.getString("glassglow_coma_scale")%>" /></td> 
    	
    </tr>
    
    <tr>	
    	<td>Sensory System-</td> 
  		<td><textarea name="sensory_system" ><%=rs.getString("sensory_system") %>
          </textarea>
    	</td>
    </tr>
    
    <tr>	
    	<td>Coordination/Abnormal Movement-</td> 
  		<td><input   type="text" name="coordination_abnormal_movement" value="<%=rs.getString("coordination_abnormal_movement")%>" /></td> 
    	
    </tr>
       <tr>
     <td><b>Reflex:</b></td>
     </tr>
       
                <tbody>
                <tr>
                        <td>PLANTER</td>
                        <td>RIGHT</td>
                        <td>LEFT</td>
                    </tr>
                    <tr>
                        <td><input   type="text" name="planter" value="<%=rs.getString("planter")%>" /></td>
                        <td><input   type="text" name="right" value="<%=rs.getString("right")%>" /></td>
                        <td><input   type="text" name="left" value="<%=rs.getString("left")%>" /></td>
                        
                    </tr>
                    
               </tbody>
      <tr>	
    	<td>CEREBELLUM FUN-</td> 
  		<td><input   type="text" name="cerebellum_fun" value="<%=rs.getString("cerebellum_fun")%>" /></td> 
    	
    </tr>
    
    <tr>	
    	<td>CLINICAL PROVISIONAL DIAGNOSIS:</td> 
  		<td><textarea name="clinical_provisional_diagnosis" ><%=rs.getString("clinical_provisional_diagnosis") %>
          </textarea>
    	
    	</td>
    </tr>
   
  
 <tr></tr><tr></tr>
	<tr>
         <td></td>
    <td><p class="ex1"><button style="height:25px;width:120px;font-size:10pt;" name="submit" type="submit" value="CHANGE" >CHANGE</button></p></td>
       <td><p class="ex1"><button style="height:25px;width:120px;font-size:10pt;" name="reset" type="reset" value="RESET">RESET</button></p></td>
    </tr> 
   
  
    



  

</table></form>
<%

     rs.close();
     ps.close();
     con.close();
%>
</div></div></div></div></div>



</body>
</html>