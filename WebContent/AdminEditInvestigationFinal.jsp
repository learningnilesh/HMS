<html>
<body>



<%@page import="java.sql.*,hospital.*"%>

<%



String retro=request.getParameter("retro");
String hbs_ag=request.getParameter("hbs_ag");
String hcv=request.getParameter("hcv");
String date=request.getParameter("date");
String cbc_hb=request.getParameter("cbc_hb");
String tlc=request.getParameter("tlc");
String platelet_count=request.getParameter(" platelet_count");

String esr=request.getParameter("esr");
String mcvps=request.getParameter("mcvps");
String r=request.getParameter("r");
String f=request.getParameter("f");
String pp=request.getParameter("pp");
String bul=request.getParameter("bul");
String serum_creatinine=request.getParameter("serum_creatinine");
String sr_na=request.getParameter("sr_na");
String sr_ca=request.getParameter("sr_ca");
String pt_inr=request.getParameter("pt_inr");

String aptt=request.getParameter("aptt");
String electrocardiogram=request.getParameter("electrocardiogram");
String sr_cholesterol=request.getParameter("sr_cholesterol");
String sr_ldl=request.getParameter("sr_ldl");
String sr_triglyserides=request.getParameter("sr_triglyserides");
String sr_vldl=request.getParameter("sr_vldl");
String sr_hdl=request.getParameter("sr_hdl");
String sr_cholesterol_sr_hdi_ratio=request.getParameter("sr_cholesterol_sr_hdi_ratio");
String mp=request.getParameter("mp");
String dengue=request.getParameter("dengue");

String widal_test=request.getParameter("widal_test");
String lepto_spira=request.getParameter("lepto_spira");
String hav=request.getParameter("hav");
String hev=request.getParameter("hev");
String sr_bilirubin_total=request.getParameter("sr_bilirubin_total");
String d=request.getParameter("d");
String i=request.getParameter("i");
String sgot=request.getParameter("sgot");
String sgpt=request.getParameter("sgpt");
String sr_alkaline_phosphage=request.getParameter("sr_alkaline_phosphage");

String t3=request.getParameter("t3");
String t4=request.getParameter("t4");
String tsh=request.getParameter("tsh");
String cpk_mb=request.getParameter("cpk_mb");
String tropi_t=request.getParameter("tropi_t");
String albumin=request.getParameter("albumin");
String suger=request.getParameter("suger");
String rbc=request.getParameter("rbc");
String pus_cells=request.getParameter("pus_cells");
String urineexam_other=request.getParameter("urineexam_other");

String stoolexam_rbc=request.getParameter("stoolexam_rbc");
String stoolexam_pus_cells=request.getParameter("stoolexam_pus_cells");
String worms=request.getParameter("worms");
String stoolexam_other=request.getParameter("stoolexam_other");
String sr_poteins_albumin=request.getParameter("sr_poteins_albumin");
String gloulin=request.getParameter("gloulin");
String other=request.getParameter("other");
String sputum=request.getParameter("sputum");
String ultrasound_report=request.getParameter("ultrasound_report");
String chamber_size=request.getParameter("chamber_size");

String rw_ma=request.getParameter("rw_ma");
String lv_systolic=request.getParameter("lv_systolic");
 String ef=request.getParameter("ef");
 String dd=request.getParameter("dd");
 String clot_pe=request.getParameter("clot_pe");
 String ct_scan_report=request.getParameter("ct_scan_report");
 String mri_mra=request.getParameter("mri_mra");
 String protein=request.getParameter("protein");
 String sugar=request.getParameter("sugar");
 String fluid_tlc=request.getParameter("fluid_tlc");

 String p=request.getParameter("p");
 String l=request.getParameter("l");
 String ada=request.getParameter("ada");
 String funduscopy=request.getParameter("funduscopy");


%>

 

<table border=1 cellpadding=5  width=100%>
<tr style="color:white;background-color:navy;font:700 12pt verdana">
<td>Result</td>
<tr>
<td>

<%
try{
    Class.forName("com.mysql.jdbc.Driver");
      Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hmsdb", "root", "root");
       Statement st=con.createStatement();
    																																																																																																																																											

      st.executeUpdate("UPDATE investigation_record SET  retro='"+retro+"',hbs_ag='"+hbs_ag+"',hcv='"+hcv+"' ,date='"+date+"',cbc_hb='"+cbc_hb+"',tlc='"+tlc+"',platelet_count='"+platelet_count+"',esr='"+esr+"',mcvps='"+mcvps+"',r='"+r+"',f='"+f+"',pp='"+pp+"',bul='"+bul+"',serum_creatinine='"+serum_creatinine+"',sr_na='"+sr_na+"',sr_ca='"+sr_ca+"',pt_inr='"+pt_inr+"',aptt='"+aptt+"',electrocardiogram='"+electrocardiogram+"',sr_cholesterol='"+sr_cholesterol+"',sr_ldl='"+sr_ldl+"',sr_triglyserides='"+sr_triglyserides+"',sr_vldl='"+sr_vldl+"',sr_hdl='"+sr_hdl+"',sr_cholesterol_sr_hid_ratio='"+sr_cholesterol_sr_hdi_ratio+"',mp='"+mp+"',dengue='"+dengue+"',widal_test='"+widal_test+"',lepto_spira='"+lepto_spira+"',hav='"+hav+"',hev='"+hev+"',sr_bilirubin_total='"+sr_bilirubin_total+"',d='"+d+"',i='"+i+"',sgot='"+sgot+"',sgpt='"+sgpt+"',sr_alkaline_phosphage='"+sr_alkaline_phosphage+"',t3='"+t3+"',t4='"+t4+"',tsh='"+tsh+"',cpk_mb='"+cpk_mb+"',tropi_t='"+tropi_t+"',albumin='"+albumin+"',suger='"+suger+"',rbc='"+rbc+"',pus_cells='"+pus_cells+"',urineexam_other='"+urineexam_other+"',stoolexam_rbc='"+stoolexam_rbc+"',stoolexam_pus_cells='"+stoolexam_pus_cells+"',worms='"+worms+"',stoolexam_oher='"+stoolexam_other+"',sr_poteins_albumin='"+sr_poteins_albumin+"',gloulin='"+gloulin+"',other='"+other+"',sputum='"+sputum+"',ultrasound_report='"+ultrasound_report+"',chamber_size='"+chamber_size+"',rw_ma='"+rw_ma+"',lv_systolic='"+lv_systolic+"',ef='"+ef+"',dd='"+dd+"',clot_pe='"+clot_pe+"',ct_scan_report='"+ct_scan_report+"',mri_mra='"+mri_mra+"',protein='"+protein+"',sugar='"+sugar+"',fluid_tlc='"+fluid_tlc+"',p='"+p+"',l='"+l+"',ada='"+ada+"',funduscopy='"+funduscopy+"' WHERE date='"+date+"'");
      //  response.sendRedirect("Ipd_Edit.jsp?id='"+id+"'");
   }
   catch(Exception e){
   System.out.print(e);
   e.printStackTrace();
   }
%>


</tr>
</table>
<p>
<a href="AdminInvestigationList.jsp">Investigation Records </a>
</body>
</html>