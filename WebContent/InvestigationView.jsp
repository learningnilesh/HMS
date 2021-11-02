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

   

%>
<div style="width:750px;margin-left:30px;">
<form  action="">
<table width="100%" align="center"  cellspacing=5 cellpadding=5>

<tr style="color:white;background-color:navy;font:700 10pt verdana">

</tr>

<%
 while( rs.next())
 {
    
%>
<tbody>

<tr>
<td><font size="2.5" style="color:white;background-color:navy;font:700 10pt verdana">Date.:</font>
<td><%=rs.getString("date")%>
</tr>

<tr>
<td><font size="2.5" style="color:white;background-color:navy;font:700 10pt verdana">Patient ID:</font>
<td><%=rs.getString("patient_id")%>
<td><font size="2.5" style="color:white;background-color:navy;font:700 10pt verdana">Name Of Patient:</font>
<td> <%=rs.getString("patient_name")%>
</tr>

<tr>
<td><font size="2.5" style="color:white;background-color:navy;font:700 10pt verdana">Retro.:</font>
<td><%=rs.getString("retro")%>
<td><font size="2.5" style="color:white;background-color:navy;font:700 10pt verdana">Hbs Ag:</font>
<td><%=rs.getString("hbs_ag")%>
</tr>


<tr>
<td><font size="2.5" style="color:white;background-color:navy;font:700 10pt verdana">HCV:</font>
<td><%=rs.getString("hcv")%>
</tr>

<tr>
<td><font size="2.5" style="color:white;background-color:navy;font:700 10pt verdana">CBC Hb:</font>
<td><%=rs.getString("cbc_hb")%>
</td></tr>


<tr><td><font size="2.5" style="color:white;background-color:grey;font:700 10pt verdana">TLC:</font>
<td><%=rs.getString("tlc")%>
<td><font size="2.5" style="color:white;background-color:grey;font:700 10pt verdana">Platelet Count:</font>
<td><%=rs.getString("platelet_count")%>
</tr>
<tr>
<td><font size="2.5" style="color:white;background-color:grey;font:700 10pt verdana">ESR:</font>
<td><%=rs.getString("esr")%>
<td><font size="2.5" style="color:white;background-color:grey;font:700 10pt verdana">MCV/PS:</font>
<td><%=rs.getString("mcvps")%>
</tr>

<tr>
<td><font size="2.5" style="color:white;background-color:navy;font:700 10pt verdana">BSL:</font>
</td></tr>
<tr>
<td><font size="2.5" style="color:white;background-color:grey;font:700 10pt verdana">(R):</font>
<td><%=rs.getString("r")%>
<td><font size="2.5" style="color:white;background-color:grey;font:700 10pt verdana">(F):</font>
<td><%=rs.getString("f")%>
</tr>
<tr>
<td><font size="2.5" style="color:white;background-color:grey;font:700 10pt verdana">(pp):</font>
<td><%=rs.getString("pp")%>
</td></tr>

<tr>
<td><font size="2.5" style="color:white;background-color:navy;font:700 10pt verdana">RFT:</font>
</td></tr>
<tr>
<td><font size="2.5" style="color:white;background-color:grey;font:700 10pt verdana">BUL:</font>
<td><%=rs.getString("bul")%>

<td><font size="2.5" style="color:white;background-color:grey;font:700 10pt verdana">Serum Creatinine:</font>
<td><%=rs.getString("serum_creatinine") %>
</tr>
<tr>
<td><font size="2.5" style="color:white;background-color:grey;font:700 10pt verdana">Sr.Na. Sr. K:</font>
<td><%=rs.getString("sr_na")%>
</td>
<td><font size="2.5" style="color:white;background-color:grey;font:700 10pt verdana">Sr.Ca. Sr.PO4:</font>
<td><%=rs.getString("sr_ca")%>
</td></tr>

<tr>
<td><font size="2.5" style="color:white;background-color:navy;font:700 10pt verdana">PT(INR):</font>
<td><%=rs.getString("pt_inr")%>
</tr>

<tr>
<td><font size="2.5" style="color:white;background-color:navy;font:700 10pt verdana">APTT:</font>
<td><%=rs.getString("aptt")%>
</tr>

<tr>
<td><font size="2.5" style="color:white;background-color:navy;font:700 10pt verdana">Electrocardiogram:</font>
<td><%=rs.getString("electrocardiogram")%>
</tr>

<tr>
<td><font size="2.5" style="color:white;background-color:navy;font:700 10pt verdana">Lipid profile:</font>
</td></tr>

 <tr>
<td><font size="2.5" style="color:white;background-color:grey;font:700 10pt verdana">Sr. Cholesterol:</font>
<td><%=rs.getString("sr_cholesterol")%>

<td><font size="2.5" style="color:white;background-color:grey;font:700 10pt verdana">Sr. LDL:</font>
<td><%=rs.getString("sr_ldl") %>
</tr>
<tr>
<td><font size="2.5" style="color:white;background-color:grey;font:700 10pt verdana">Sr. Triglycerides:</font>
<td><%=rs.getString("sr_triglyserides")%>

<td><font size="2.5" style="color:white;background-color:grey;font:700 10pt verdana">Sr. VLDL:</font>
<td><%=rs.getString("sr_vldl") %>
</tr>
<tr>
<td><font size="2.5" style="color:white;background-color:grey;font:700 10pt verdana">Sr. HDL:</font>
<td><%=rs.getString("sr_hdl")%>
<td><font size="2.5" style="color:white;background-color:grey;font:700 10pt verdana">Sr. Cholesteral:Sr. HDI Ratio:</font>
<td><%=rs.getString("sr_cholesterol_sr_hid_ratio")%>
</tr>
<tr>

<tr>
<td><font size="2.5" style="color:white;background-color:navy;font:700 10pt verdana">BIOTHESIOMETRY:</font>
</td></tr>
 <tr>
<td><font size="2.5" style="color:white;background-color:grey;font:700 10pt verdana">MP:</font>
<td><%=rs.getString("mp")%>

<td><font size="2.5" style="color:white;background-color:grey;font:700 10pt verdana">DENGUE:</font>
<td><%=rs.getString("dengue") %>
</tr>
<tr>
<td><font size="2.5" style="color:white;background-color:grey;font:700 10pt verdana">WIDAL TEST:</font>
<td><%=rs.getString("widal_test")%>

<td><font size="2.5" style="color:white;background-color:grey;font:700 10pt verdana">LEPTO SPIRA:</font>
<td><%=rs.getString("lepto_spira") %>
</tr>
<tr>
<td><font size="2.5" style="color:white;background-color:grey;font:700 10pt verdana">HAV:</font>
<td><%=rs.getString("hav")%>

<td><font size="2.5" style="color:white;background-color:grey;font:700 10pt verdana">HEV:</font>
<td><%=rs.getString("hev")%>
</td></tr>

<tr>
<td><font size="2.5" style="color:white;background-color:navy;font:700 10pt verdana">LIVER FUNCTIO TESTS:</font>
</td></tr>
 <tr>
<td><font size="2.5" style="color:white;background-color:grey;font:700 10pt verdana">Sr. Bilirubin Total:</font>
<td><%=rs.getString("sr_bilirubin_total")%>

<td><font size="2.5" style="color:white;background-color:grey;font:700 10pt verdana">D:</font>
<td><%=rs.getString("d") %>
</tr>
<tr>
<td><font size="2.5" style="color:white;background-color:grey;font:700 10pt verdana">I:</font>
<td><%=rs.getString("i")%>

<td><font size="2.5" style="color:white;background-color:grey;font:700 10pt verdana">SGOT:</font>
<td><%=rs.getString("sgot") %>
</tr>
<tr>
<td><font size="2.5" style="color:white;background-color:grey;font:700 10pt verdana">SGPT:</font>
<td><%=rs.getString("sgpt")%>


<td><font size="2.5" style="color:white;background-color:grey;font:700 10pt verdana">Sr. Alkaline Phosphage:</font>
<td><%=rs.getString("sr_alkaline_phosphage")%>
</td></tr>


<tr>
<td><font size="2.5" style="color:white;background-color:navy;font:700 10pt verdana">THYROID FUNCTION TEST:</font>
</td></tr>
 <tr>
<td><font size="2.5" style="color:white;background-color:grey;font:700 10pt verdana">T3:</font>
<td><%=rs.getString("t3")%>

<td><font size="2.5" style="color:white;background-color:grey;font:700 10pt verdana">T4:</font>
<td><%=rs.getString("t4")%>
</tr>
<tr>
<td><font size="2.5" style="color:white;background-color:grey;font:700 10pt verdana">TSH:</font>
<td><%=rs.getString("tsh")%>
</tr>


<tr>
<td><font size="2.5" style="color:white;background-color:navy;font:700 10pt verdana">CARDIC:</font>
</td></tr>
 <tr>
<td><font size="2.5" style="color:white;background-color:grey;font:700 10pt verdana">CPD-MB:</font>
<td><%=rs.getString("cpk_mb")%>

<td><font size="2.5" style="color:white;background-color:grey;font:700 10pt verdana">TROPI/T:</font>
<td><%=rs.getString("tropi_t")%>
</tr>

<tr>
<td><font size="2.5" style="color:white;background-color:navy;font:700 10pt verdana">URINE EXAM:</font>
</td></tr>
 <tr>
<td><font size="2.5" style="color:white;background-color:grey;font:700 10pt verdana">Albumin:</font>
<td><%=rs.getString("albumin")%>

<td><font size="2.5" style="color:white;background-color:grey;font:700 10pt verdana">Sugar:</font>
<td><%=rs.getString("suger")%>
</tr>
 <tr>
<td><font size="2.5" style="color:white;background-color:grey;font:700 10pt verdana">RBC:</font>
<td><%=rs.getString("rbc")%>

<td><font size="2.5" style="color:white;background-color:grey;font:700 10pt verdana">Pus Cells:</font>
<td><%=rs.getString("pus_cells")%>
</tr>
<tr>
<td><font size="2.5" style="color:white;background-color:grey;font:700 10pt verdana">Other:</font>
<td><%=rs.getString("urineexam_other")%>
</tr>

<tr>
<td><font size="2.5" style="color:white;background-color:navy;font:700 10pt verdana">Stool Exam:</font>
</td></tr>
 <tr>
<td><font size="2.5" style="color:white;background-color:grey;font:700 10pt verdana">RBC:</font>
<td><%=rs.getString("stoolexam_rbc")%>
</td>

<td><font size="2.5" style="color:white;background-color:grey;font:700 10pt verdana">Pus Cells:</font>
<td><%=rs.getString("stoolexam_pus_cells")%>
</td>
</tr> <tr>
<td><font size="2.5" style="color:white;background-color:grey;font:700 10pt verdana">Worms:</font>
<td><%=rs.getString("worms")%>
</td>

<td><font size="2.5" style="color:white;background-color:grey;font:700 10pt verdana">Other:</font>
<td><%=rs.getString("stoolexam_oher")%>
</td>
</tr>
<tr>
<td><font size="2.5" style="color:white;background-color:navy;font:700 10pt verdana">Serum Uric Acid:</font>
</td></tr>
<tr>
<td><font size="2.5" style="color:white;background-color:navy;font:700 10pt verdana">Sr. Proteins:</font>
</td></tr>
 <tr>
<td><font size="2.5" style="color:white;background-color:grey;font:700 10pt verdana">Albumin:</font>
<td><%=rs.getString("sr_poteins_albumin")%>
</td>

<td><font size="2.5" style="color:white;background-color:grey;font:700 10pt verdana">Globulin:</font>
<td><%=rs.getString("gloulin")%>
</td>
</tr> <tr>
<td><font size="2.5" style="color:white;background-color:navy;font:700 10pt verdana">Other:</font>
<td><%=rs.getString("other")%>
</td>
</tr> <tr>
<td><font size="2.5" style="color:white;background-color:navy;font:700 10pt verdana">Sputum:</font>
<td><%=rs.getString("sputum")%>
</td>
</tr>

<tr>
<td><font size="2.5" style="color:white;background-color:navy;font:700 10pt verdana">Ultrasound Report:</font>
<td><%=rs.getString("ultrasound_report")%>
</td>
</tr>

<tr>
<td><font size="2.5" style="color:white;background-color:navy;font:700 10pt verdana">2D Echo:</font>
</td>
</tr>
<tr>
<td><font size="2.5" style="color:white;background-color:grey;font:700 10pt verdana">Chamber Size:</font>
<td><%=rs.getString("chamber_size")%>
</td>

<td><font size="2.5" style="color:white;background-color:grey;font:700 10pt verdana">RW/MA:</font>
<td><%=rs.getString("rw_ma")%>
</td>
</tr>

 <tr>
<td><font size="2.5" style="color:white;background-color:grey;font:700 10pt verdana">LV Systolic:</font>
<td><%=rs.getString("lv_systolic")%>

<td><font size="2.5" style="color:white;background-color:grey;font:700 10pt verdana">EF:</font>
<td><%=rs.getString("ef")%>
</tr>
 <tr>
<td><font size="2.5" style="color:white;background-color:grey;font:700 10pt verdana">DD:</font>
<td><%=rs.getString("dd")%>

<td><font size="2.5" style="color:white;background-color:grey;font:700 10pt verdana">Clot/PE:</font>
<td><%=rs.getString("clot_pe")%>
</tr>

<tr>
<td><font size="2.5" style="color:white;background-color:navy;font:700 10pt verdana">CT Scan Report:</font>
<td><%=rs.getString("ct_scan_report")%>
</td></tr>

<tr>
<td><font size="2.5" style="color:white;background-color:navy;font:700 10pt verdana">MRI/MRA:</font>
<td><%=rs.getString("mri_mra")%>
</td></tr>

<tr>
<td><font size="2.5" style="color:white;background-color:navy;font:700 10pt verdana">FLUID:</font>
</td></tr>
 <tr>
<td><font size="2.5" style="color:white;background-color:grey;font:700 10pt verdana">Protein:</font>
<td><%=rs.getString("protein")%>

<td><font size="2.5" style="color:white;background-color:grey;font:700 10pt verdana">Sugar:</font>
<td><%=rs.getString("sugar")%>
</tr>
 <tr>
<td><font size="2.5" style="color:white;background-color:grey;font:700 10pt verdana">TLC:</font>
<td><%=rs.getString("fluid_tlc")%>

<td><font size="2.5" style="color:white;background-color:grey;font:700 10pt verdana">P:</font>
<td><%=rs.getString("p")%>
</tr>
 <tr>
<td><font size="2.5" style="color:white;background-color:grey;font:700 10pt verdana">L:</font>
<td><%=rs.getString("l")%>

<td><font size="2.5" style="color:white;background-color:grey;font:700 10pt verdana">ADA:</font>
<td><%=rs.getString("ada")%>
</tr>

<tr>
<td><font size="2.5" style="color:white;background-color:navy;font:700 10pt verdana">FUNDUSCOPY:</font>
<td><%=rs.getString("funduscopy")%>
</td></tr>

<%
    }
if ( ps.executeQuery() == null )
	 //out.println("If record not exist click here..");
	  %>
	 </table>
	 <table width="80%" style="margin-left:120px;" align="center"  cellspacing=5 cellpadding=5>
<tr>
         
        <td> <input style="height:25px;width:120px;font-size:10pt;" type="button" value="EDIT" onclick="window.location.href='InvestigationEdit.jsp?date=<%=date %>'" /></td>
        <td> <input style="height:25px;width:120px;font-size:10pt;" type="button" value="PRINT" onclick="window.location.href='Invistigation_pdf.jsp?date=<%=date %>'" /></td>
     <td> <input style="height:25px;width:120px;font-size:10pt;" type="button" value="DELETE" onclick="window.location.href='DeleteInveRecord.jsp?date=<%=date %>'" /></td>
      
    </tr>
	 
<% 
    rs.close();
    ps.close();
    con.close();
%>

</table>
</form>
</div>
</div></div></div></div>



</body>
</html>