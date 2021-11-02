
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

String id_patient=request.getParameter("id_patient");
String patient_name=request.getParameter("patient_name");

Class.forName("com.mysql.jdbc.Driver");
Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/hmsdb", "root", "root");


Statement st1=con1.createStatement();

ResultSet rs = st1.executeQuery("select id_patient from patient where patient_id='"+id_patient+"'");
rs.next();

int id = rs.getInt("id_patient");



//String id=request.getParameter("ipd_no");
String year=new java.text.SimpleDateFormat("yyyy").format(new java.util.Date());
String patient_id="IPD"+year;

String age=request.getParameter("age");
String gender=request.getParameter("gender");
String address=request.getParameter("address");
String marital_status=request.getParameter("marital_status"); 
String occupation=request.getParameter("occupation");
String phone_no=request.getParameter("phone_no");


String nearest_relative=request.getParameter("nearest_relative");
String relative_address=request.getParameter("relative_address");
String mlc_policestn=request.getParameter("mlc_policestn");
String mlc_policename=request.getParameter("mlc_policename");

String mlc_regi_date=request.getParameter("mlc_regi_date");

String mlc_no=request.getParameter("mlc_no");
String mlc_buccas_no=request.getParameter("mlc_buccas_no");
String provisional_diagnosis=request.getParameter("provisional_diagnosis");
String final_diagnosis=request.getParameter("final_diagnosis");
String relative_relation=request.getParameter("relative_relation");
String witness_name=request.getParameter("witness_name");
String witness_address=request.getParameter("witness_address");
%>

 

<table >
<tr style="color:white;background-color:navy;font:700 12pt verdana">
<td>Record Updated Successfully...</td>
<tr>
<td>

<%
try{
    Class.forName("com.mysql.jdbc.Driver");
      Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hmsdb", "root", "root");
       Statement st=con.createStatement();
      st.executeUpdate("UPDATE patient SET patient_name='"+patient_name+"',age='"+age+"',gender='"+gender+"',address='"+address+"',marital_status='"+marital_status+"',occupation='"+occupation+"',phone_no='"+phone_no+"',nearest_relative='"+nearest_relative+"',relative_address='"+relative_address+"',mlc_policestn='"+mlc_policestn+"',mlc_policename='"+mlc_policename+"',mlc_regi_date='"+mlc_regi_date+"',mlc_no='"+mlc_no+"',mlc_buccas_no='"+mlc_buccas_no+"',provisional_diagnosis='"+provisional_diagnosis+"',final_diagnosis='"+final_diagnosis+"',relative_relation='"+relative_relation+"',witness_name='"+witness_name+"',witness_address='"+witness_address+"' WHERE patient_id='"+id_patient+"'");
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
<a href="Patient.jsp">PATIENT </a> </div>
        </div>
        </div>
       
        
        </body>
        
</html>
       