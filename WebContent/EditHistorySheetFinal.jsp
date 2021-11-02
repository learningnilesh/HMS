
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <link href="CSS/style.css" rel="stylesheet" type="text/css" /> 
<link href="CSS/layout.css" rel="stylesheet" type="text/css" /> 
<script src="CSS/maxheight.js" type="text/javascript"></script>

<link rel="stylesheet" href="CSS/validationEngine.jquery.css" type="text/css"/>
	
	<script type="text/javascript" src="validate/jquery.js"></script>
	<script src="validate/jquery.validationEngine-en.js" type="text/javascript" charset="utf-8">
	</script>
	<script src="validate/jquery.validationEngine.js" type="text/javascript" charset="utf-8">
	</script>
	


     
    </head>
    <body id="page4" onload="new ElementMaxHeight();">
	
		
			
        
         

       
    

    <div id="content">
            	
        <div class="indent"> 
                 
          <div class="extra-wrap"> 

<%@page import="java.sql.*,hospital.*"%>

<%

String patient_id=request.getParameter("patient_id");
String patient_name=request.getParameter("patient_name");


String sb_dr=request.getParameter("sb_dr");
String hnb=request.getParameter("hnb");
String chief_complaints=request.getParameter("chief_complaints");
String history_of_present_illness=request.getParameter("history_of_present_illness"); 
String dm=request.getParameter("dm");
String asthma=request.getParameter("asthma");


String tb=request.getParameter("tb");
String htn=request.getParameter("htn");
String ihd=request.getParameter("ihd");
String cva=request.getParameter("cva");

String epilepsy=request.getParameter("epilepsy");

String copd=request.getParameter("copd");
String ckd=request.getParameter("ckd");
String other=request.getParameter("other");
String diet=request.getParameter("diet");
String sleep=request.getParameter("sleep");
String appetite=request.getParameter("appetite");
String bowel=request.getParameter("bowel");
String bladder=request.getParameter("bladder");
String occupation=request.getParameter("occupation");
String alcohol=request.getParameter("alcohol");
String tobacco=request.getParameter("tobacco");
String smoking=request.getParameter("smoking");
String pangutkha=request.getParameter("pangutkha");
String drugs_history=request.getParameter("drugs_history");
String family_history=request.getParameter("family_history");
String higher_fun=request.getParameter("higher_fun");
String temp=request.getParameter("temp");
String pr=request.getParameter("pr");
String bp=request.getParameter("bp");
String rr=request.getParameter("rr");
String pallor=request.getParameter("pallor");
String edema=request.getParameter("edema");
String clubbing=request.getParameter("clubbing");
String lnpathy=request.getParameter("lnpathy");
String icterus=request.getParameter("icterus");
String jvp=request.getParameter("jvp");
String sign_of_ccf=request.getParameter("sign_of_ccf");
String height_in_cm=request.getParameter("height_in_cm");
String weight_in_kg=request.getParameter("weight_in_kg");
String higher_function=request.getParameter("higher_function");
String cranial_nerve=request.getParameter("cranial_nerve");
String tone=request.getParameter("tone");
String right_ul=request.getParameter("right_ul");
String left_ul=request.getParameter("left_ul");
String right_ll=request.getParameter("right_ll");
String left_ll=request.getParameter("left_ll");
String glassglow_coma_scale=request.getParameter("glassglwo_coma_scale");
String sensory_system=request.getParameter("sensory_system");
String coordination_abnormal_movement=request.getParameter("coordination_abnormal_movement");
String planter=request.getParameter("planter");
String right=request.getParameter("right");
String left=request.getParameter("left");
String cerebellum_fun=request.getParameter("cerebellum_fun");
String clinical_provisional_diagnosis=request.getParameter("clinical_provisional_diagnosis");


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
      st.executeUpdate("UPDATE history_record SET  patient_name='"+patient_name+"',sb_dr='"+sb_dr+"',hnb='"+hnb+"',chief_complaints='"+chief_complaints+"',history_of_present_illness='"+history_of_present_illness+"',dm='"+dm+"',asthma='"+asthma+"',tb='"+tb+"',htn='"+htn+"',ihd='"+ihd+"',cva='"+cva+"',epilepsy='"+epilepsy+"',copd='"+copd+"',ckd='"+ckd+"',other='"+other+"',diet='"+diet+"',sleep='"+sleep+"',appetite='"+appetite+"',bowel='"+bowel+"',bladder='"+bladder+"',occupation='"+occupation+"',alcohol='"+alcohol+"',tobacco='"+tobacco+"',smoking='"+smoking+"',pangutkha='"+pangutkha+"',drugs_history='"+drugs_history+"',family_history='"+family_history+"',higher_fun='"+higher_fun+"',temp='"+temp+"',pr='"+pr+"',bp='"+bp+"',rr='"+rr+"',pallor='"+pallor+"',edema='"+edema+"',clubbing='"+clubbing+"',lnpathy='"+lnpathy+"',icterus='"+icterus+"',jvp='"+jvp+"',sign_of_ccf='"+sign_of_ccf+"',height_in_cm='"+height_in_cm+"',weight_in_kg='"+weight_in_kg+"',higher_function='"+higher_function+"',cranial_nerve='"+cranial_nerve+"',tone='"+tone+",glassglow_coma_scale='"+glassglow_coma_scale+"',sensory_system='"+sensory_system+"',coordination_abnormal_movement='"+coordination_abnormal_movement+"' WHERE patient_id='"+patient_id+"'");
  //  response.sendRedirect("Ipd_Edit.jsp?id='"+id+"'");
  /**/
   }
   catch(Exception e){
   System.out.print(e);
   e.printStackTrace();
   }
%>


</tr>
</table>
<p>
<a href="EditHistoryRecord.jsp">HISTORYSHEET </a> </div>
        </div>
        </div>
       
        
        </body>
        
</html>
       