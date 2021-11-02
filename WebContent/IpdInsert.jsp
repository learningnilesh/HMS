    <%@page import="javax.print.attribute.DateTimeSyntax"%>

 <%@page import="java.io.*,java.sql.*,java.util.Date,java.text.*"%>
<%


//String id_patient=request.getParameter("id_patient");
String patient_name=request.getParameter("patient_name");

Class.forName("com.mysql.jdbc.Driver");
Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/hmsdb", "root", "root");


Statement st1=con1.createStatement();

ResultSet rs = st1.executeQuery("select id_patient from patient order by id_patient desc limit 1");
rs.next();

int id_patient = rs.getInt("id_patient");


id_patient++;
String year=new java.text.SimpleDateFormat("yyyy").format(new java.util.Date());
String ipd_no="IPD"+year+id_patient;

String age=request.getParameter("age");
String gender=request.getParameter("gender");
String address=request.getParameter("address");
String marital_status=request.getParameter("marital_status"); 
String occupation=request.getParameter("occupation");
String phone_no=request.getParameter("phone_no");
String date_of_admit=request.getParameter("date_of_admit");

/*
String dateReceivedFromUser = request.getParameter("date_of_admit");
DateFormat userDateFormat = new SimpleDateFormat("dd-MM-yyyy H:mm:ss");
DateFormat dateFormatNeeded = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
Date date = userDateFormat.parse(dateReceivedFromUser);
String date_of_admit = dateFormatNeeded.format(date);



String dateReceivedFromUser1 = request.getParameter("date_of_discharge");
DateFormat userDateFormat1 = new SimpleDateFormat("dd-MM-yyyy H:mm:ss");
DateFormat dateFormatNeeded1 = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
Date date1 = userDateFormat1.parse(dateReceivedFromUser1);
String date_of_discharge= dateFormatNeeded1.format(date1);
*/
String nearest_relative=request.getParameter("nearest_relative");
String relative_address=request.getParameter("relative_address");
//String mlc_policestn=request.getParameter("mlc_policestn");
//String mlc_policename=request.getParameter("mlc_policename");
/*
String dateReceivedFromUser2 = request.getParameter("mlc_regi_date");
DateFormat userDateFormat2 = new SimpleDateFormat("dd-MM-yyyy H:mm:ss");
DateFormat dateFormatNeeded2 = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
Date date2 = userDateFormat2.parse(dateReceivedFromUser2);
String mlc_regi_date= dateFormatNeeded2.format(date2);

*/
/*
String mlc_no=request.getParameter("mlc_no");
String mlc_buccas_no=request.getParameter("mlc_buccas_no");*/
String provisional_diagnosis=request.getParameter("provisional_diagnosis");
String final_diagnosis=request.getParameter("final_diagnosis");
String relative_relation=request.getParameter("relative_relation");/*
String witness_name=request.getParameter("witness_name");
String witness_address=request.getParameter("witness_address");*/
/*
//String q="insert into patient(patient_name,ipd_no,age,gender,address,marital_status,occupation,phone_no,date_of_admit,date_of_discharge,nearest_relative,relative_address,mlc_policestn,mlc_policename,mlc_no,mlc_buccas_no,provisional_diagnosis,final_diagnosis,relative_relation,witness_name,witness_address) values('"+patient_name+"','"+ipd_no+"','"+age+"','"+gender+"','"+address+"','"+marital_status+"','"+occupation+"','"+phone_no+"','"+date_of_admit+"','"+date_of_discharge+"','"+nearest_relative+"','"+relative_address+"','"+mlc_policestn+"','"+mlc_policename+"','"+mlc_no+"','"+mlc_buccas_no+"','"+provisional_diagnosis+"','"+final_diagnosis+"','"+relative_relation+"','"+witness_name+"','"+witness_address+"')";


/*out.print( "<h2 align=\"center\">"+q+"</h2>");
*/
try{
     Class.forName("com.mysql.jdbc.Driver");
       Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hmsdb", "root", "root");
       Statement st=con.createStatement();
       int i=st.executeUpdate("insert into patient(patient_name,patient_id,age,gender,address,marital_status,occupation,phone_no,date_of_admit,nearest_relative,relative_address,provisional_diagnosis,final_diagnosis,relative_relation) values('"+patient_name+"','"+ipd_no+"','"+age+"','"+gender+"','"+address+"','"+marital_status+"','"+occupation+"','"+phone_no+"','"+date_of_admit+"','"+nearest_relative+"','"+relative_address+"','"+provisional_diagnosis+"','"+final_diagnosis+"','"+relative_relation+"')");
     response.sendRedirect("Ipd.jsp");
        

    }
    catch(Exception e){
    System.out.print(e);
    e.printStackTrace();
    }

    %>