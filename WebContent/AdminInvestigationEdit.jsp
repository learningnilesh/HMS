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
<body>

  
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
     PreparedStatement ps = con.prepareStatement("select *  from investigation_record where date = '"+date+"'");
  
     
     ResultSet rs = ps.executeQuery();

     rs.next();

%>
<div style="width:880px;margin-left:0px;">

<form  action="AdminEditInvestigationFinal.jsp" method=post name="EDITINVESTIGATIONFINAL">
<fieldset>

<div style="width:300px;margin-left:10px;">
<table width="100%" align="center" cellpadding="10" cellspacing="20">
<tr>
 <td><br/>Date</td>
          
         <td><br/><input  type="Text" id="date" name="date" size="17" value="<%=rs.getString("date")%>"><a href="javascript:NewCal('doa','ddmmyyyy','arrow',true,'12',true)"><img src="images/cal.gif" width="16" height="16" border="0" alt="Pick a date"></a></td>
	  		
   	     </tr>
     <tr>
          <td>Retro:</td>
          <td><input type="text" name="retro" value="<%=rs.getString("retro")%>"></td>
          
          <td>Hbs Ag:</td>
          <td><input type="text" name="hbs_ag" value="<%=rs.getString("hbs_ag")%>"></td>
          
          <td>HCV:</td>
          <td><input type="text" name="hcv" value="<%=rs.getString("hcv")%>"></td>
          
     </tr>
</table>
</div>
 </fieldset>
 
 <fieldset>
<div style="width:300px;margin-left:10px;">
<table width="100%" align="center" cellpadding="10" cellspacing="20">
    
   	     
     <tr>
     <td>CBC Hb</td>
          <td><br/><input type="text" name="cbc_hb" value="<%=rs.getString("cbc_hb")%>" ></td>
     
          <td>TLC</td>
          <td><br/><input type="text" name="tlc" value="<%=rs.getString("tlc")%>"></td>
     </tr>
      <tr>
          <td>Platelet Count</td>
          <td><input type="text" name="platelet_count" value="<%=rs.getString("platelet_count")%>"></td>
   
          <td>ESR</td>
          <td><input type="text" name="esr" value="<%=rs.getString("esr")%>"></td>
     
          <td>MCV/PS</td>
          <td><input type="text" name="mcvps" value="<%=rs.getString("mcvps")%>"></td>
     </tr>
     </table>
</div>
 </fieldset>
 
 <fieldset>
<div style="width:300px;margin-left:10px;">
<table width="100%" align="center" cellpadding="10" cellspacing="20">
    
    
     <tr>
          <td><b>BSL</b></td>
          
     </tr>
     
     <tr>
          <td>(R):</td>
          <td><input type="text" name="r" value="<%=rs.getString("r")%>"></td>
     
          <td>(F):</td>
          <td><input type="text" name="f" value="<%=rs.getString("f")%>"></td>
     
          <td>(PP):</td>
          <td><input type="text" name="pp" value="<%=rs.getString("pp")%>"></td>
     </tr>
     </table>
</div>
 </fieldset>
 
 <fieldset>
<div style="width:300px;margin-left:10px;">
<table width="100%" align="center" cellpadding="10" cellspacing="20">
     <tr>
          <td><b>RFT</b></td>
          
     </tr>
     
     <tr>
          <td>BUL:</td>
          <td><br/><input type="text" name="bul" value="<%=rs.getString("bul")%>"></td>
     
          <td>Serum Creatinine:</td>
          <td><input type="text" name="serum_creatinine" value="<%=rs.getString("serum_creatinine")%>"></td>
     </tr>
     
     <tr>
          <td>Sr.Na   Sr.K</td>
          <td><br/><input type="text" name="sr_na" value="<%=rs.getString("sr_na")%>"></td>
     
          <td>Sr.Ca   Sr.PO4</td>
          <td><input type="text" name="sr_ca" value="<%=rs.getString("sr_ca")%>"></td>
     </tr>
      </table>
</div>
 </fieldset>
 
<fieldset>
<div style="width:300px;margin-left:10px;">
<table width="100%" align="center" cellpadding="10" cellspacing="20">    
     <tr>
          <td>PT (INR)</td>
          <td><br/><input type="text" name="pt_inr" value="<%=rs.getString("pt_inr")%>"></td>
     </tr>
     
     <tr>
          <td>APTT</td>
          <td><br/><input type="text" name="aptt" value="<%=rs.getString("aptt")%>"></td>
     </tr>
  
      <tr>
     <td>Electrocardiogram:</td>
   
        
          <td>  <textarea name="electrocardiogram" ><%=rs.getString("electrocardiogram")%>
          </textarea>     
     </tr> 
    
       </table>
       </div>
</fieldset>

<fieldset>
     <div style="width:300px;margin-left:10px;">
<table width="100%" align="center" cellpadding="10" cellspacing="20">
     <tr>
          <td><b>Lipid Profile</b></td>
                  
     </tr>
     <tr>
     		<td>Sr.Cholesterol:</td>
          <td><br/><input type="text" name="sr_cholesterol" value="<%=rs.getString("sr_cholesterol")%>"></td>
     		
     		<td>Sr.LDL:</td>
          <td><input type="text" name="sr_ldl" value="<%=rs.getString("sr_ldl")%>"></td>
     		
     		<td>Sr.Triglycerides:</td>
          <td><input type="text" name="sr_triglyserides" value="<%=rs.getString("sr_triglyserides")%>"></td>
     		
     </tr>
     
     <tr>		
     		<td>Sr.VLDL</td>
          <td><input type="text" name="sr_vldl" value="<%=rs.getString("sr_vldl")%>"></td>
     		
     		<td>Sr.HDL</td>
          <td><input type="text" name="sr_hdl" value="<%=rs.getString("sr_hdl")%>"></td>
     		
     		<td>Sr.Cholesterol: Sr.HDI Ratio</td>
          <td><input type="text" name="sr_cholesterol_sr_hdi_ratio" value="<%=rs.getString("sr_cholesterol_sr_hid_ratio")%>"></td>
     		
     
     </tr>
     
       </table>
       </div>
</fieldset>  

<fieldset> 
<div style="width:300px;margin-left:10px;">
<table width="100%" align="center" cellpadding="10" cellspacing="20"> 
      <tr>
          <td><b>BIOTHESIOMETRY</b></td>
                  
     </tr>
     <tr>
     		<td>MP</td>
          <td><br/><input type="text" name="mp" value="<%=rs.getString("mp")%>"></td>
     		
     		<td>DENGUE:</td>
          <td><input type="text" name="dengue" value="<%=rs.getString("dengue")%>"></td>
     		
     		<td>WIDAL TEST:</td>
          <td><input type="text" name="widal_test" value="<%=rs.getString("widal_test")%>"></td>
     		
     </tr>
     
     <tr>		
     		<td>LEPTO SPIRA</td>
          <td><input type="text" name="lepto_spira" value="<%=rs.getString("lepto_spira")%>"></td>
     		
     		<td>HAV</td>
          <td><input type="text" name="hav" value="<%=rs.getString("hav")%>" ></td>
     		
     		<td>HEV</td>
          <td><input type="text" name="hev" value="<%=rs.getString("hev")%>"></td>
     		
     
     </tr> 
     
       </table>
       </div>
</fieldset> 

<fieldset> 
<div style="width:300px;margin-left:10px;">
<table width="100%" align="center" cellpadding="10" cellspacing="20"> 
    
     <tr>
          <td><b>Liver Function Tests</b></td>
                  
     </tr>
     <tr>
     		<td>Sr.Bilirubin Total</td>
          <td><br/><input type="text" name="sr_bilirubin_total" value="<%=rs.getString("sr_bilirubin_total")%>"></td>
     		
     		<td>D:</td>
          <td><input type="text" name="d" value="<%=rs.getString("d")%>"></td>
     		
     		<td>I:</td>
          <td><input type="text" name="i" value="<%=rs.getString("i")%>"></td>
     		
     </tr>
     
     <tr>		
     		<td>SGOT:</td>
          <td><input type="text" name="sgot" value="<%=rs.getString("sgot")%>"></td>
     		
     		<td>SGPT:</td>
          <td><input type="text" name="sgpt" value="<%=rs.getString("sgpt")%>"></td>
     		
     		<td>Sr.Alkaline Phosphage:</td>
          <td><input type="text" name="sr_alkaline_phosphage" value="<%=rs.getString("sr_alkaline_phosphage")%>"></td>
     		
     
     </tr>
    </table>
       </div>
</fieldset> 

<fieldset> 
<div style="width:300px;margin-left:10px;">
<table width="100%" align="center" cellpadding="10" cellspacing="20">  
     <tr>
          <td><b>THYROID FUNCTION TEST</b></td>
                  
     </tr>
     <tr>
     		<td>T3:</td>
          <td><input type="text" name="t3" value="<%=rs.getString("t3")%>"></td>
     		
     		<td>T4:</td>
          <td><input type="text" name="t4" value="<%=rs.getString("t4")%>"></td>
     		
     		<td>TSH:</td>
          <td><input type="text" name="tsh" value="<%=rs.getString("tsh")%>"></td>
     		
     </tr>
  </table>
       </div>
</fieldset>

<fieldset> 
<div style="width:300px;margin-left:10px;">
<table width="100%" align="center" cellpadding="10" cellspacing="20">      
     <tr>
          <td><b>CARDIC</b></td>
                  
     </tr>
     <tr>
     		<td>CPK-MB:</td>
          <td><input type="text" name="cpk_mb" value="<%=rs.getString("cpk_mb")%>"></td>
     		
     		<td>TROPI/T:</td>
          <td><input type="text" name="tropi_t" value="<%=rs.getString("tropi_t")%>"></td>
   
     		
     </tr>
</table>
       </div>
</fieldset>     


<fieldset> 
<div style="width:300px;margin-left:10px;">
<table width="100%" align="center" cellpadding="10" cellspacing="20">       
     <tr>
          <td><b>Urine Exam:</b></td>
                  
     </tr>
     <tr>
     		<td>Albumin</td>
          <td><br/><input type="text" name="albumin" value="<%=rs.getString("albumin")%>"></td>
     		
     		<td>Suger</td>
          <td><input type="text" name="suger" value="<%=rs.getString("suger")%>"></td>
     		
     		<td>RBC</td>
          <td><input type="text" name="rbc" value="<%=rs.getString("rbc")%>"></td>
     		
     </tr>
     
     <tr>
     		<td>Pus Cells</td>
          <td><input type="text" name="pus_cells" value="<%=rs.getString("pus_cells")%>"></td>
     		
     		<td>Other</td>
          <td><input type="text" name="urineexam_other" value="<%=rs.getString("urineexam_other")%>"></td>
   
     		
     </tr>
</table>
       </div>
</fieldset>     
      
<fieldset> 
<div style="width:300px;margin-left:10px;">
<table width="100%" align="center" cellpadding="10" cellspacing="20">         
     <tr>
          <td><b>Stool Exam:</b></td>
                  
     </tr>
     <tr>
     		<td>RBC</td>
          <td><br/><input type="text" name="stoolexam_rbc" value="<%=rs.getString("stoolexam_rbc")%>"></td>
     		
     		<td>Pus Cells</td>
          <td><input type="text" name="stoolexam_pus_cells" value="<%=rs.getString("stoolexam_pus_cells")%>"></td>
     		   		
     </tr>
     
     <tr>
     		<td>Worms</td>
          <td><input type="text" name="worms" value="<%=rs.getString("worms")%>"></td>
     		
     		<td>Other</td>
          <td><input type="text" name="stoolexam_other" value="<%=rs.getString("stoolexam_oher")%>"></td>
 
     </tr>
 </table>
       </div>
</fieldset> 

  
     
<fieldset> 
<div style="width:300px;margin-left:10px;">
<table width="100%" align="center" cellpadding="10" cellspacing="20">        
     <tr>
          <td><b>Sr.Poteins:</b></td>      
     </tr>
     <tr>
     		<td>Albumin</td>
          <td><input type="text" name="sr_poteins_albumin" value="<%=rs.getString("sr_poteins_albumin")%>"></td>
     		
     		<td>Gloulin</td>
          <td><input type="text" name="gloulin" value="<%=rs.getString("gloulin")%>"></td>		   		
     </tr>
 </table>
       </div>
</fieldset>

<fieldset> 
<div style="width:300px;margin-left:10px;">
<table width="100%" align="center" cellpadding="10" cellspacing="20">   
     
     <tr>
          <td><b>OTHER</b></td> 
          <td><input type="text" name="other" value="<%=rs.getString("other")%>"></td>     
     
          <td><b>Sputum</b></td>
          <td><input type="text" name="sputum" value="<%=rs.getString("sputum")%>"></td>      
     </tr> 
     
    
     
     <tr>
          <td>Ultrasound Report:</td> 
          <td>  <textarea name="ultrasound_report" ><%=rs.getString("ultrasound_report")%>
          </textarea>     
     </tr> 
  </table>
       </div>
</fieldset>

<fieldset> 
<div style="width:300px;margin-left:10px;">
<table width="100%" align="center" cellpadding="10" cellspacing="20">     
	<tr>
          <td><b>2D Echo:</b></td> 
	</tr> 
	 <tr>		
     		<td>Chamber Size</td>
          <td><input type="text" name="chamber_size" value="<%=rs.getString("chamber_size")%>"></td>
     		
     		<td>RW/MA</td>
          <td><input type="text" name="rw_ma" value="<%=rs.getString("rw_ma")%>"></td>
     		
     </tr>
     
     
     <tr>		
     		<td>LV Systolic</td>
          <td><input type="text" name="lv_systolic" value="<%=rs.getString("lv_systolic")%>"></td>
     		
     		<td>EF</td>
          <td><input type="text" name="ef" value="<%=rs.getString("ef")%>"></td>
     		
     </tr>    
     
     <tr>		
     		<td>DD</td>
          <td><br/><input type="text" name="dd" value="<%=rs.getString("dd")%>"></td>
     		
     		<td>Clot/PE</td>
          <td><input type="text" name="clot_pe" value="<%=rs.getString("clot_pe")%>"></td>
     		
     </tr> 
 </table>
       </div>
</fieldset>

 <fieldset> 
<div style="width:300px;margin-left:10px;">
<table width="100%" align="center" cellpadding="10" cellspacing="20">         
     <tr>
          <td>CT Scan Report:</td> 
          <td><textarea name="ct_scan_report" ><%=rs.getString("ct_scan_report")%>
          </textarea>
            
</td>  
     </tr> 
     
     <tr>
          <td>MRI/MRA</td> 
          <td><textarea name="mri_mra" ><%=rs.getString("mri_mra")%>
          </textarea>
          
          </td>     
     </tr>    
 </table>
       </div>
</fieldset>

 <fieldset> 
<div style="width:300px;margin-left:10px;">
<table width="100%" align="center" cellpadding="10" cellspacing="20">   
    
     <tr>
          <td><b>FLUID</b></td>      
     </tr> 
     
     <tr>
     		<td>Protein:</td>
          <td><br/><input type="text" name="protein" value="<%=rs.getString("protein")%>"></td>
     		
     		<td>Sugar:</td>
          <td><input type="text" name="sugar" value="<%=rs.getString("sugar")%>"></td>
     		
     		<td>TLC</td>
          <td><input type="text" name="fluid_tlc" value="<%=rs.getString("fluid_tlc")%>"> </td>
     		
     </tr>
     
     <tr>		
     		<td>P:</td>
          <td><input type="text" name="p" value="<%=rs.getString("p")%>"></td>
     		
     		<td>L:</td>
          <td><input type="text" name="l" value="<%=rs.getString("l")%>"></td>
     		
     		<td>ADA:</td>
          <td><input type="text" name="ada" value="<%=rs.getString("ada")%>"></td>     
     </tr>
</table>
       </div>
</fieldset>

 <fieldset> 
<div style="width:300px;margin-left:10px;">
<table width="100%" align="center" cellpadding="10" cellspacing="20">   
     
     <tr>
          <td><p>FUNDUSCOPY</p></td> 
          <td> <textarea name="funduscopy" ><%=rs.getString("funduscopy")%>
          </textarea>
          
          </td>     
     </tr>    
             
 
 
</table>
</div>
<div style="width:500px;margin-left:10px;">
<table width="100%" align="center" cellpadding="10" cellspacing="20">
	<tr>
         <td></td><td></td>   <td></td><td></td>   <td></td><td></td> <td></td><td></td>   <td></td><td></td>   <td></td><td></td>
     <td><p class="ex1"><button  style="height:25px;width:120px;font-size:10pt;" name="submit" type="submit" value="SUBMIT">CHANGE</button></p></td>
       <td><p class="ex1"><button  style="height:25px;width:120px;font-size:10pt;" name="reset" type="reset" value="RESET">RESET</button></p></td>
    </tr> 
    
            </table>
            </div>
</fieldset> 
</form>
</div>
</div></div></div></div>



</body>
</html>