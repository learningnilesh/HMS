<html>
<body>



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
<a href="AdminPatient.jsp">patient </a>
</body>
</html>