<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<script language="javascript" type="text/javascript" src="datetimepicker.js">
</script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="CSS/style.css" rel="stylesheet" type="text/css" />
<link href="CSS/layout.css" rel="stylesheet" type="text/css" />
<script src="CSS/maxheight.js" type="text/javascript"></script>

<title>Insert title here</title>
</head>
<body>



 
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
                     	<li><a href="Home.jsp">Home</a></li>
                     	<li><a href="Patient.jsp" >PATIENT DETAILS</a></li>
                     	<li><a href="InvestigationList.jsp" class="current">INVESTIGATION</a></li>
                     	<li><a href="EditHistoryRecord.jsp" >HISTORYSHEET</a></li>
                     	<li><a href="PatientDisplayBill.jsp">ADD CHARGES</a></li>
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
            

<fieldset>

<div style="width:300px;margin-left:70px;">
<table width="160%" align="center" cellpadding="10" cellspacing="20">

     <tr>
          <td>Retro:</td>
          <td><input type="text" name="retro" ></td>
          
          <td>Hbs Ag:</td>
          <td><input type="text" name="hbs_ag" ></td>
          
          <td>HCV:</td>
          <td><input type="text" name="hcv" ></td>
          
     </tr>
</table>
</div>
 </fieldset>
 
 <fieldset>
<div style="width:300px;margin-left:70px;">
<table width="160%" align="center" cellpadding="10" cellspacing="20">
    
   	     
     <tr>
     <td>CBC Hb</td>
          <td><br/><input type="text" name="cbc_hb" ></td>
     
          <td>TLC</td>
          <td><br/><input type="text" name="tlc" ></td>
     </tr>
      <tr>
          <td>Platelet Count</td>
          <td><input type="text" name="platelet_count" ></td>
   
          <td>ESR</td>
          <td><input type="text" name="esr" ></td>
     
          <td>MCV/PS</td>
          <td><input type="text" name="mcvps" ></td>
     </tr>
     </table>
</div>
 </fieldset>
 
 <fieldset>
<div style="width:300px;margin-left:70px;">
<table width="160%" align="center" cellpadding="10" cellspacing="20">
    
    
     <tr>
          <td><b>BSL</b></td>
          
     </tr>
     
     <tr>
          <td>(R):</td>
          <td><input type="text" name="r" ></td>
     
          <td>(F):</td>
          <td><input type="text" name="f" ></td>
     
          <td>(PP):</td>
          <td><input type="text" name="pp" ></td>
     </tr>
     </table>
</div>
 </fieldset>
 
 <fieldset>
<div style="width:300px;margin-left:70px;">
<table width="160%" align="center" cellpadding="10" cellspacing="20">
     <tr>
          <td><b>RFT</b></td>
          
     </tr>
     
     <tr>
          <td>BUL:</td>
          <td><br/><input type="text" name="bul" ></td>
     
          <td>Serum Creatinine:</td>
          <td><input type="text" name="serum_creatinine" ></td>
     </tr>
     
     <tr>
          <td>Sr.Na   Sr.K</td>
          <td><br/><input type="text" name="sr_na" ></td>
     
          <td>Sr.Ca   Sr.PO4</td>
          <td><input type="text" name="sr_ca" ></td>
     </tr>
      </table>
</div>
 </fieldset>
 
<fieldset>
<div style="width:300px;margin-left:70px;">
<table width="160%" align="center" cellpadding="10" cellspacing="20">    
     <tr>
          <td>PT (INR)</td>
          <td><br/><input type="text" name="pt_inr" ></td>
     </tr>
     
     <tr>
          <td>APTT</td>
          <td><br/><input type="text" name="aptt" ></td>
     </tr>
  
      <tr>
     <td>Electrocardiogram:</td>
   
        <td>  <textarea name="electrocardiogram" >
          </textarea>
    </tr>
       </table>
       </div>
</fieldset>

<fieldset>
     <div style="width:300px;margin-left:70px;">
<table width="160%" align="center" cellpadding="10" cellspacing="20">
     <tr>
          <td><b>Lipid Profile</b></td>
                  
     </tr>
     <tr>
     		<td>Sr.Cholesterol:</td>
          <td><br/><input type="text" name="sr_cholesterol" ></td>
     		
     		<td>Sr.LDL:</td>
          <td><input type="text" name="sr_ldl" ></td>
     		
     		<td>Sr.Triglycerides:</td>
          <td><input type="text" name="sr_triglyserides" ></td>
     		
     </tr>
     
     <tr>		
     		<td>Sr.VLDL</td>
          <td><input type="text" name="sr_vldl" ></td>
     		
     		<td>Sr.HDL</td>
          <td><input type="text" name="sr_hdl" ></td>
     		
     		<td>Sr.Cholesterol: Sr.HDI Ratio</td>
          <td><input type="text" name="sr_cholesterol_sr_hdi_ratio" ></td>
     		
     
     </tr>
     
       </table>
       </div>
</fieldset>  

<fieldset> 
<div style="width:300px;margin-left:70px;">
<table width="160%" align="center" cellpadding="10" cellspacing="20"> 
      <tr>
          <td><b>BIOTHESIOMETRY</b></td>
                  
     </tr>
     <tr>
     		<td>MP</td>
          <td><br/><input type="text" name="mp" ></td>
     		
     		<td>DENGUE:</td>
          <td><input type="text" name="dengue" ></td>
     		
     		<td>WIDAL TEST:</td>
          <td><input type="text" name="widal_test" ></td>
     		
     </tr>
     
     <tr>		
     		<td>LEPTO SPIRA</td>
          <td><input type="text" name="lepto_spira" ></td>
     		
     		<td>HAV</td>
          <td><input type="text" name="hav" ></td>
     		
     		<td>HEV</td>
          <td><input type="text" name="hev" ></td>
     		
     
     </tr> 
     
       </table>
       </div>
</fieldset> 

<fieldset> 
<div style="width:300px;margin-left:70px;">
<table width="160%" align="center" cellpadding="10" cellspacing="20"> 
    
     <tr>
          <td><b>Liver Function Tests</b></td>
                  
     </tr>
     <tr>
     		<td>Sr.Bilirubin Total</td>
          <td><br/><input type="text" name="sr_bilirubin_total" ></td>
     		
     		<td>D:</td>
          <td><input type="text" name="d" ></td>
     		
     		<td>I:</td>
          <td><input type="text" name="i" ></td>
     		
     </tr>
     
     <tr>		
     		<td>SGOT:</td>
          <td><input type="text" name="sgot" ></td>
     		
     		<td>SGPT:</td>
          <td><input type="text" name="sgpt" ></td>
     		
     		<td>Sr.Alkaline Phosphage:</td>
          <td><input type="text" name="sr_alkaline_phosphage" ></td>
     		
     
     </tr>
    </table>
       </div>
</fieldset> 

<fieldset> 
<div style="width:300px;margin-left:70px;">
<table width="160%" align="center" cellpadding="10" cellspacing="20">  
     <tr>
          <td><b>THYROID FUNCTION TEST</b></td>
                  
     </tr>
     <tr>
     		<td>T3:</td>
          <td><input type="text" name="t3"></td>
     		
     		<td>T4:</td>
          <td><input type="text" name="t4" ></td>
     		
     		<td>TSH:</td>
          <td><input type="text" name="tsh" ></td>
     		
     </tr>
  </table>
       </div>
</fieldset>

<fieldset> 
<div style="width:300px;margin-left:70px;">
<table width="160%" align="center" cellpadding="10" cellspacing="20">      
     <tr>
          <td><b>CARDIC</b></td>
                  
     </tr>
     <tr>
     		<td>CPK-MB:</td>
          <td><input type="text" name="cpk_mb" ></td>
     		
     		<td>TROPI/T:</td>
          <td><input type="text" name="tropi_t" ></td>
   
     		
     </tr>
</table>
       </div>
</fieldset>     


<fieldset> 
<div style="width:300px;margin-left:70px;">
<table width="160%" align="center" cellpadding="10" cellspacing="20">       
     <tr>
          <td><b>Urine Exam:</b></td>
                  
     </tr>
     <tr>
     		<td>Albumin</td>
          <td><br/><input type="text" name="albumin" ></td>
     		
     		<td>Suger</td>
          <td><input type="text" name="suger" ></td>
     		
     		<td>RBC</td>
          <td><input type="text" name="rbc" ></td>
     		
     </tr>
     
     <tr>
     		<td>Pus Cells</td>
          <td><input type="text" name="pus_cells" ></td>
     		
     		<td>Other</td>
          <td><input type="text" name="urineexam_other" ></td>
   
     		
     </tr>
</table>
       </div>
</fieldset>     
      
<fieldset> 
<div style="width:300px;margin-left:70px;">
<table width="160%" align="center" cellpadding="10" cellspacing="20">         
     <tr>
          <td><b>Stool Exam:</b></td>
                  
     </tr>
     <tr>
     		<td>RBC</td>
          <td><br/><input type="text" name="stoolexam_rbc" ></td>
     		
     		<td>Pus Cells</td>
          <td><input type="text" name="stoolexam_pus_cells" ></td>
     		   		
     </tr>
     
     <tr>
     		<td>Worms</td>
          <td><input type="text" name="stoolexam_worms"></td>
     		
     		<td>Other</td>
          <td><input type="text" name="stoolexam_other" ></td>
 
     </tr>
 </table>
       </div>
</fieldset> 

 <fieldset> 
<div style="width:300px;margin-left:70px;">
<table width="160%" align="center" cellpadding="10" cellspacing="20">   
     <tr>
          <td><b>Serum Uric Acid</b></td>
           <td><input type="text" name="serumuricacid"></td>
            </tr>
           
         
   
      
 </table>
       </div>
</fieldset>     
     
<fieldset> 
<div style="width:300px;margin-left:70px;">
<table width="160%" align="center" cellpadding="10" cellspacing="20">        
     <tr>
          <td><b>Sr.Poteins:</b></td>      
     </tr>
     <tr>
     		<td>Albumin</td>
          <td><input type="text" name="sr_poteins_albumin" ></td>
     		
     		<td>Gloulin</td>
          <td><input type="text" name="gloulin" ></td>		   		
     </tr>
 </table>
       </div>
</fieldset>

<fieldset> 
<div style="width:300px;margin-left:70px;">
<table width="160%" align="center" cellpadding="10" cellspacing="20">   
     
     <tr>
          <td><b>OTHER</b></td> 
          <td><input type="text" name="other" ></td>     
     
          <td><b>Sputum</b></td>
          <td><input type="text" name="sputum" ></td>      
     </tr> 
     
    
     
     <tr>
          <td>Ultrasound Report:</td> 
          <td>  <textarea name="ultrasound_report" >
          </textarea>     
     </tr> 
  </table>
       </div>
</fieldset>

<fieldset> 
<div style="width:300px;margin-left:70px;">
<table width="160%" align="center" cellpadding="10" cellspacing="20">     
	<tr>
          <td><b>2D Echo:</b></td> 
	</tr> 
	 <tr>		
     		<td>Chamber Size</td>
          <td><input type="text" name="chamber_size" ></td>
     		
     		<td>RW/MA</td>
          <td><input type="text" name="rw_ma" ></td>
     		
     </tr>
     
     
     <tr>		
     		<td>LV Systolic</td>
          <td><input type="text" name="lv_systolic" ></td>
     		
     		<td>EF</td>
          <td><input type="text" name="ef" ></td>
     		
     </tr>    
     
     <tr>		
     		<td>DD</td>
          <td><br/><input type="text" name="dd" ></td>
     		
     		<td>Clot/PE</td>
          <td><input type="text" name="clot_pe" ></td>
     		
     </tr> 
 </table>
       </div>
</fieldset>

 <fieldset> 
<div style="width:300px;margin-left:70px;">
<table width="160%" align="center" cellpadding="10" cellspacing="20">         
     <tr>
          <td>CT Scan Report:</td> 
          <td><textarea name="ct_scan_report" >
          </textarea>
            
</td>  
     </tr> 
     
     <tr>
          <td>MRI/MRA</td> 
          <td><textarea name="mri_mra" >
          </textarea>
          
          </td>     
     </tr>    
 </table>
       </div>
</fieldset>

 <fieldset> 
<div style="width:300px;margin-left:70px;">
<table width="160%" align="center" cellpadding="10" cellspacing="20">   
    
     <tr>
          <td><b>FLUID</b></td>      
     </tr> 
     
     <tr>
     		<td>Protein:</td>
          <td><br/><input type="text" name="protein" ></td>
     		
     		<td>Sugar:</td>
          <td><input type="text" name="sugar" ></td>
     		
     		<td>TLC</td>
          <td><input type="text" name="tlc"></td>
     		
     </tr>
     
     <tr>		
     		<td>P:</td>
          <td><input type="text" name="p" ></td>
     		
     		<td>L:</td>
          <td><input type="text" name="l" ></td>
     		
     		<td>ADA:</td>
          <td><input type="text" name="ada" ></td>     
     </tr>
</table>
       </div>
</fieldset>

 <fieldset> 
<div style="width:300px;margin-left:70px;">
<table width="160%" align="center" cellpadding="10" cellspacing="20">   
     
     <tr>
          <td><p>FUNDUSCOPY</p></td> 
          <td> <textarea name="funduscopy" >
          </textarea>
          
          </td>     
     </tr>    
             
 
 
</table>
</div>
<div style="width:500px;margin-left:70px;">
<table width="160%" align="center" cellpadding="10" cellspacing="20">
	<tr>
         
     <td><p class="ex1"><button name="submit" type="submit" value="SUBMIT">SUBMIT</button></p></td>
       <td><p class="ex1"><button name="reset" type="reset" value="RESET">RESET</button></p></td>
    </tr> 
    
            </table>
            </div>
</fieldset> 
</div>
</div>
</div>
</div>



</body>
</html>