    <%@page import="javax.print.attribute.DateTimeSyntax"%>

 <%@page import="java.io.*,java.sql.*,java.util.Date,java.text.*"%>
<jsp:useBean id="member" scope="session"  class="hospital.patient" />
<%
//---------------------------------------------------------------------
String id_patient=member.getMid();
String patient_name=member.getPatient_name();
String patient_id=member.getPatient_id();
//---------------------------------------------------------------------
String reg_charges=request.getParameter("registration_charges");
//---------------------------------------------------------------------
String bed_icu=request.getParameter("bed_icu");
String bed_semiicu=request.getParameter("bed_semiicu");
String bed_sproom=request.getParameter("bed_sproom");
String bed_gward=request.getParameter("bed_gward");

String bed_icu_charges_day=request.getParameter("bed_icu_charges_day");
String bed_semiicu_charges_day=request.getParameter("bed_semiicu_charges_day");
String bed_sproom_charges_day=request.getParameter("bed_sproom_charges_day");
String bed_gward_charges_day=request.getParameter("bed_gward_charges_day");


int bed_icu1 = Integer.parseInt(bed_icu);
int bed_semiicu1 = Integer.parseInt(bed_semiicu);
int bed_sproom1 = Integer.parseInt(bed_sproom);
int bed_gward1 = Integer.parseInt(bed_gward);

int bed_icu_charges_day1 = Integer.parseInt(bed_icu_charges_day);
int bed_semiicu_charges_day1=Integer.parseInt(bed_semiicu_charges_day);
int bed_sproom_charges_day1=Integer.parseInt(bed_sproom_charges_day);
int bed_gward_charges_day1=Integer.parseInt(bed_gward_charges_day);

int bed_icuamount=bed_icu1*bed_icu_charges_day1;
int bed_semiicuamount=bed_semiicu1*bed_semiicu_charges_day1;
int bed_sproomamount=bed_sproom1*bed_sproom_charges_day1;
int bed_gwardamount=bed_gward1*bed_gward_charges_day1;

int bed_charges_amount1=bed_icuamount+bed_semiicuamount+bed_sproomamount+bed_gwardamount;

String bed_charges_amount=Integer.toString(bed_charges_amount1); 
//---------------------------------------------------------------------
String doctor_icu=request.getParameter("doctor_icu");
String doctor_semiicu=request.getParameter("doctor_semiicu");
String doctor_sproom=request.getParameter("doctor_sproom");
String doctor_gward=request.getParameter("doctor_gward");

String doctor_icu_charges_day=request.getParameter("doctor_icu_charges_day");
String doctor_semiicu_charges_day=request.getParameter("doctor_semiicu_charges_day");
String doctor_sproom_charges_day=request.getParameter("doctor_sproom_charges_day");
String doctor_gward_charges_day=request.getParameter("doctor_gward_charges_day");


int doctor_icu1 = Integer.parseInt(doctor_icu);
int doctor_semiicu1 = Integer.parseInt(doctor_semiicu);
int doctor_sproom1 = Integer.parseInt(doctor_sproom);
int doctor_gward1 = Integer.parseInt(doctor_gward);

int doctor_icu_charges_day1 = Integer.parseInt(doctor_icu_charges_day);
int doctor_semiicu_charges_day1=Integer.parseInt(doctor_semiicu_charges_day);
int doctor_sproom_charges_day1=Integer.parseInt(doctor_sproom_charges_day);
int doctor_gward_charges_day1=Integer.parseInt(doctor_gward_charges_day);

int doctor_icuamount=doctor_icu1*doctor_icu_charges_day1;
int doctor_semiicuamount=doctor_semiicu1*doctor_semiicu_charges_day1;
int doctor_sproomamount=doctor_sproom1*doctor_sproom_charges_day1;
int doctor_gwardamount=doctor_gward1*doctor_gward_charges_day1;

int doctor_charges_amount1=doctor_icuamount+doctor_semiicuamount+doctor_sproomamount+doctor_gwardamount;

String doctor_charges_amount=Integer.toString(doctor_charges_amount1); 
//---------------------------------------------------------------------
String nursing_icu=request.getParameter("nursing_icu");
String nursing_semiicu=request.getParameter("nursing_semiicu");
String nursing_sproom=request.getParameter("nursing_sproom");
String nursing_gward=request.getParameter("nursing_gward");

String nursing_icu_charges_day=request.getParameter("nursing_icu_charges_day");
String nursing_semiicu_charges_day=request.getParameter("nursing_semiicu_charges_day");
String nursing_sproom_charges_day=request.getParameter("nursing_sproom_charges_day");
String nursing_gward_charges_day=request.getParameter("nursing_gward_charges_day");


int nursing_icu1 = Integer.parseInt(nursing_icu);
int nursing_semiicu1 = Integer.parseInt(nursing_semiicu);
int nursing_sproom1 = Integer.parseInt(nursing_sproom);
int nursing_gward1 = Integer.parseInt(nursing_gward);

int nursing_icu_charges_day1 = Integer.parseInt(nursing_icu_charges_day);
int nursing_semiicu_charges_day1=Integer.parseInt(nursing_semiicu_charges_day);
int nursing_sproom_charges_day1=Integer.parseInt(nursing_sproom_charges_day);
int nursing_gward_charges_day1=Integer.parseInt(nursing_gward_charges_day);

int nursing_icuamount=nursing_icu1*nursing_icu_charges_day1;
int nursing_semiicuamount=nursing_semiicu1*nursing_semiicu_charges_day1;
int nursing_sproomamount=nursing_sproom1*nursing_sproom_charges_day1;
int nursing_gwardamount=nursing_gward1*nursing_gward_charges_day1;

int nursing_charges_amount1=nursing_icuamount+nursing_semiicuamount+nursing_sproomamount+nursing_gwardamount;

String nursing_charges_amount=Integer.toString(nursing_charges_amount1); 
//---------------------------------------------------------------------


try{
     Class.forName("com.mysql.jdbc.Driver");
       Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hmsdb", "root", "root");
       Statement st=con.createStatement();
       int i=st.executeUpdate("insert into biling_tb(id_patient,patient_name,patient_id,reg_charges,bed_icu,bed_semiicu,bed_sproom,bed_gward,bed_icu_charges_day,bed_semiicu_charges_day,bed_sproom_charges_day,bed_gward_charges_day,bed_charges_amount,doctor_charges_icu,doctor_charges_semiicu,doctor_charges_sproom,doctor_charges_gward,doctor_icu_charges_day,doctor_semiicu_charges_day,doctor_sproom_charges_day,doctor_gward_charges_day,doctor_charges_amount,nursing_charges_icu,nursing_charges_semiicu,nursing_charges_sproom,nursing_charges_gward,nursing_icu_charges_day,nursing_semiicu_charges_day,nursing_sproom_charges_day,nursing_gward_charges_day,nursing_charges_amount) values('"+id_patient+"','"+patient_name+"','"+patient_id+"','"+reg_charges+"','"+bed_icu+"','"+bed_semiicu+"','"+bed_sproom+"','"+bed_gward+"','"+bed_icu_charges_day+"','"+bed_semiicu_charges_day+"','"+bed_sproom_charges_day+"','"+bed_gward_charges_day+"','"+bed_charges_amount+"','"+doctor_icu+"','"+doctor_semiicu+"','"+doctor_sproom+"','"+doctor_gward+"','"+doctor_icu_charges_day+"','"+doctor_semiicu_charges_day+"','"+doctor_sproom_charges_day+"','"+doctor_gward_charges_day+"','"+doctor_charges_amount+"','"+nursing_icu+"','"+nursing_semiicu+"','"+nursing_sproom+"','"+nursing_gward+"','"+nursing_icu_charges_day+"','"+nursing_semiicu_charges_day+"','"+nursing_sproom_charges_day+"','"+nursing_gward_charges_day+"','"+nursing_charges_amount+"')");
    // response.sendRedirect("Ipd.jsp");



    }
    catch(Exception e){
    System.out.print(e);
    e.printStackTrace();
    }

    
/*
String nursing_charges=request.getParameter("nursing_charges");
String nursing_charges_day=request.getParameter("nursing_charges_day");

String operation_charges=request.getParameter("operation_charges");
String operation_charges_operations=request.getParameter("operation_charges_operations");

String theatre_charges=request.getParameter("theatre_charges");

String transfusion=request.getParameter("transfusion");
String transfusion_charges_items=request.getParameter("transfusion_charges_items");

String injection_charges=request.getParameter("injection_charges");
String injection_charges_items=request.getParameter("injection_charges_items");

String monitor_charges=request.getParameter("monitor_charges");
String monitor_charges_items=request.getParameter("monitor_charges_items");

String oxygen_charges=request.getParameter("oxygen_charges");
String oxygen_charges_items=request.getParameter("oxygen_charges_items");

String ventilator_charges=request.getParameter("ventilator_charges");
String ventilator_charges_items=request.getParameter("ventilator_charges_items");

String tapping_charges=request.getParameter("tapping_charges");
String tapping_charges_items=request.getParameter("tapping_charges_items");

String bsl_charges=request.getParameter("bsl_charges");
String bsl_charges_items=request.getParameter("bsl_charges_items");

String ecg_charges=request.getParameter("ecg_charges");
String ecg_charges_items=request.getParameter("ecg_charges_items");

String rt_catheter_charges=request.getParameter("rt_catheter_charges");
String rt_catheter_charges_items=request.getParameter("rt_catheter_charges_items");

String nebulilzation_charges=request.getParameter("nebulilzation_charges");
String nebulization_charges_items=request.getParameter("nebulization_charges_items");

String emergency_charges=request.getParameter("emergency_charges");
String emergency_charges_items=request.getParameter("emergency_charges_items");

String physiotherapy_charges=request.getParameter("physiotherapy_charges");
String physiotherapy_charges_items=request.getParameter("physiotherapy_charges_items");

System.out.println(bed_charges_amount);*/
    %>