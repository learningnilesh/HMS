    <%@page import="javax.print.attribute.DateTimeSyntax"%>
 <%@page import="java.sql.*,hospital.*"%>
 <%@page import="java.io.*,java.sql.*,java.util.Date,java.text.*"%>
<jsp:useBean id="member" scope="session"  class="hospital.patient" />
<%
//---------------------------------------------------------------------
String id_patient=member.getMid();
String patient_name=member.getPatient_name();
String patient_id=member.getPatient_id();
//---------------------------------------------------------------------
String reg_charges=request.getParameter("registration_charges");
int reg_charges1 = Integer.parseInt(reg_charges);
//---------------------------------------------------------------------
 Connection con = Database.getConnection();
     PreparedStatement ps = con.prepareStatement("select *  from bill_charges where id = 1");
  
     
     ResultSet rs = ps.executeQuery();

     rs.next();
String bed_icu=rs.getString("bed_icu");
String bed_semiicu=rs.getString("bed_semiicu");
String bed_sproom=rs.getString("bed_sproom");
String bed_gward=rs.getString("bed_gward");

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
String doctor_icu=rs.getString("doctor_charges_icu");
String doctor_semiicu=rs.getString("doctor_charges_semiicu");
String doctor_sproom=rs.getString("doctor_charges_sproom");
String doctor_gward=rs.getString("doctor_charges_gward");

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
String nursing_icu=rs.getString("nursing_charges_icu");
String nursing_semiicu=rs.getString("nursing_charges_semiicu");
String nursing_sproom=rs.getString("nursing_charges_sproom");
String nursing_gward=rs.getString("nursing_charges_gward");

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
String operation_charges=request.getParameter("operation_charges");
String operation_charges_operations=request.getParameter("operation_charges_operations");

int operation_charges1 = Integer.parseInt(operation_charges);
int operation_charges_operations1 = Integer.parseInt(operation_charges_operations);

int operation_chargesamount1=operation_charges1*operation_charges_operations1;

String operation_charges_amount=Integer.toString(operation_chargesamount1); 


//---------------------------------------------------------------------
String theatre_charges=request.getParameter("theatre_charges");
int theatre_charges1=Integer.parseInt(theatre_charges);
//---------------------------------------------------------------------
String transfusion_blood=rs.getString("transfusion_bood");
String transfusion_ffp=rs.getString("transfusion_ffp");
String transfusion_rdp=rs.getString("transfusion_rdp");
String transfusion_albumin=rs.getString("transfusion_albumin");

String transfusion_bloodcharges_items=request.getParameter("nursing_icu_charges_day");
String transfusion_ffpcharges_items=request.getParameter("nursing_semiicu_charges_day");
String transfusion_rdpcharges_items=request.getParameter("nursing_sproom_charges_day");
String transfusion_albumincharges_items=request.getParameter("nursing_gward_charges_day");


int transfusion_blood1 = Integer.parseInt(transfusion_blood);
int transfusion_ffp1 = Integer.parseInt(transfusion_ffp);
int transfusion_rdp1 = Integer.parseInt(transfusion_rdp);
int transfusion_albumin1 = Integer.parseInt(transfusion_albumin);

int transfusion_bloodcharges_items1 = Integer.parseInt(transfusion_bloodcharges_items);
int transfusion_ffpcharges_items1=Integer.parseInt(transfusion_ffpcharges_items);
int transfusion_rdpcharges_items1=Integer.parseInt(transfusion_rdpcharges_items);
int transfusion_albumincharges_items1=Integer.parseInt(transfusion_albumincharges_items);

int transfusion_bloodamount=transfusion_blood1*transfusion_bloodcharges_items1;
int transfusion_ffpamount=transfusion_ffp1*transfusion_ffpcharges_items1;
int transfusion_rdpamount=transfusion_rdp1*transfusion_rdpcharges_items1;
int transfusion_albuminamount=transfusion_albumin1*transfusion_albumincharges_items1;

int transfusion_charges_amount1=transfusion_bloodamount+transfusion_ffpamount+transfusion_rdpamount+transfusion_albuminamount;

String transfusion_charges_amount=Integer.toString(transfusion_charges_amount1); 
//---------------------------------------------------------------------

String monitor_charges=request.getParameter("monitor_charges");
String monitor_charges_items=request.getParameter("monitor_charges_items");

int monitor_charges1 = Integer.parseInt(monitor_charges);
int monitor_charges_items1 = Integer.parseInt(monitor_charges_items);

int monitor_chargesamount1=monitor_charges1*monitor_charges_items1;

String monitor_chargesamount=Integer.toString(monitor_chargesamount1); 


//---------------------------------------------------------------------

String injection_charges=request.getParameter("injection_charges");
String injection_charges_items=request.getParameter("injection_charges_items");

int injection_charges1 = Integer.parseInt(injection_charges);
int injection_charges_items1 = Integer.parseInt(injection_charges_items);

int injection_chargesamount1=injection_charges1*injection_charges_items1;

String injection_chargesamount=Integer.toString(injection_chargesamount1); 


//---------------------------------------------------------------------


String oxygen_charges=request.getParameter("oxygen_charges");
String oxygen_charges_items=request.getParameter("oxygen_charges_items");

int oxygen_charges1 = Integer.parseInt(oxygen_charges);
int oxygen_charges_items1 = Integer.parseInt(oxygen_charges_items);

int oxygen_chargesamount1=oxygen_charges1*oxygen_charges_items1;

String oxygen_chargesamount=Integer.toString(oxygen_chargesamount1); 


//---------------------------------------------------------------------

String ventilator_charges=request.getParameter("ventilator_charges");
String ventilator_charges_items=request.getParameter("ventilator_charges_items");

int ventilator_charges1 = Integer.parseInt(ventilator_charges);
int ventilator_charges_items1 = Integer.parseInt(ventilator_charges_items);

int ventilator_chargesamount1=ventilator_charges1*ventilator_charges_items1;

String ventilator_chargesamount=Integer.toString(ventilator_chargesamount1); 


//---------------------------------------------------------------------

String tapping_abd=rs.getString("tapping_abd");
String tapping_pleural=rs.getString("tapping_pleural");
String tapping_csf=rs.getString("tapping_csf");
String tapping_stich=rs.getString("tapping_stich");

String tapping_abdcharges_items=request.getParameter("tapping_abdcharges_items");
String tapping_pleuralcharges_items=request.getParameter("tapping_pleuralcharges_items");
String tapping_csfcharges_items=request.getParameter("tapping_csfcharges_items");
String tapping_stichcharges_items=request.getParameter("tapping_stichcharges_items");


int tapping_abd1 = Integer.parseInt(tapping_abd);
int tapping_pleural1 = Integer.parseInt(tapping_pleural);
int tapping_csf1 = Integer.parseInt(tapping_csf);
int tapping_stich1 = Integer.parseInt(tapping_stich);

int tapping_abdcharges_items1 = Integer.parseInt(tapping_abdcharges_items);
int tapping_pleuralcharges_items1=Integer.parseInt(tapping_pleuralcharges_items);
int tapping_csfcharges_items1=Integer.parseInt(tapping_csfcharges_items);
int tapping_stichcharges_items1=Integer.parseInt(tapping_stichcharges_items);

int tapping_abdamount=tapping_abd1*tapping_abdcharges_items1;
int tapping_pleuralamount=tapping_pleural1*tapping_pleuralcharges_items1;
int tapping_csfamount=tapping_csf1*tapping_csfcharges_items1;
int tapping_stichamount=tapping_stich1*tapping_stichcharges_items1;

int tapping_charges_amount1=tapping_abdamount+tapping_pleuralamount+tapping_csfamount+tapping_stichamount;

String tapping_charges_amount=Integer.toString(tapping_charges_amount1); 
//---------------------------------------------------------------------

String bsl_charges=request.getParameter("bsl_charges");
String bsl_charges_items=request.getParameter("bsl_charges_items");

int bsl_charges1 = Integer.parseInt(bsl_charges);
int bsl_charges_items1 = Integer.parseInt(bsl_charges_items);

int bsl_chargesamount1=bsl_charges1*bsl_charges_items1;

String bsl_chargesamount=Integer.toString(bsl_chargesamount1); 


//---------------------------------------------------------------------

String ecg_charges=request.getParameter("ecg_charges");
String ecg_charges_items=request.getParameter("ecg_charges_items");

int ecg_charges1 = Integer.parseInt(ecg_charges);
int ecg_charges_items1 = Integer.parseInt(ecg_charges_items);

int ecg_chargesamount1=ecg_charges1*ecg_charges_items1;

String ecg_chargesamount=Integer.toString(ecg_chargesamount1); 


//---------------------------------------------------------------------
String rt_catheter_charges=request.getParameter("rt_catheter_charges");
String rt_catheter_charges_items=request.getParameter("rt_catheter_charges_items");

int rt_catheter_charges1 = Integer.parseInt(rt_catheter_charges);
int rt_catheter_charges_items1 = Integer.parseInt(rt_catheter_charges_items);

int rt_catheter_chargesamount1=rt_catheter_charges1*rt_catheter_charges_items1;

String rt_catheter_chargesamount=Integer.toString(rt_catheter_chargesamount1); 


//---------------------------------------------------------------------
String nebulilzation_charges=request.getParameter("nebulilzation_charges");
String nebulilzation_charges_items=request.getParameter("nebulization_charges_items");

int nebulilzation_charges1 = Integer.parseInt(nebulilzation_charges);
int nebulilzation_charges_items1 = Integer.parseInt(nebulilzation_charges_items);

int nebulilzation_chargesamount1=nebulilzation_charges1*nebulilzation_charges_items1;

String nebulilzation_chargesamount=Integer.toString(nebulilzation_chargesamount1); 


//---------------------------------------------------------------------
String emergency_charges=request.getParameter("emergency_charges");
String emergency_charges_items=request.getParameter("emergency_charges_items");

int emergency_charges1 = Integer.parseInt(emergency_charges);
int emergency_charges_items1 = Integer.parseInt(emergency_charges_items);

int emergency_chargesamount1=emergency_charges1*emergency_charges_items1;

String emergency_chargesamount=Integer.toString(emergency_chargesamount1); 


//---------------------------------------------------------------------
String physiotherapy_charges=request.getParameter("physiotherapy_charges");
String physiotherapy_charges_items=request.getParameter("physiotherapy_charges_items");

int physiotherapy_charges1 = Integer.parseInt(physiotherapy_charges);
int physiotherapy_charges_items1 = Integer.parseInt(physiotherapy_charges_items);

int physiotherapy_chargesamount1=physiotherapy_charges1*physiotherapy_charges_items1;

String physiotherapy_chargesamount=Integer.toString(physiotherapy_chargesamount1); 


//---------------------------------------------------------------------
int bill_amount=reg_charges1+bed_charges_amount1+doctor_charges_amount1+nursing_charges_amount1+operation_chargesamount1+theatre_charges1+transfusion_charges_amount1+monitor_chargesamount1+injection_chargesamount1+oxygen_chargesamount1+ventilator_chargesamount1+tapping_charges_amount1+bsl_chargesamount1+ecg_chargesamount1+rt_catheter_chargesamount1+nebulilzation_chargesamount1+emergency_chargesamount1+physiotherapy_chargesamount1;
try{
    Class.forName("com.mysql.jdbc.Driver");
       con = Database.getConnection();
      Statement st=con.createStatement();
      int i=st.executeUpdate("insert into biling_tb(id_patient,patient_name,patient_id,reg_charges,bed_icu,bed_semiicu,bed_sproom,bed_gward,bed_icu_charges_day,bed_semiicu_charges_day,bed_sproom_charges_day,bed_gward_charges_day,bed_charges_amount,doctor_charges_icu,doctor_charges_semiicu,doctor_charges_sproom,doctor_charges_gward,doctor_icu_charges_day,doctor_semiicu_charges_day,doctor_sproom_charges_day,doctor_gward_charges_day,doctor_charges_amount,nursing_charges_icu,nursing_charges_semiicu,nursing_charges_sproom,nursing_charges_gward,nursing_icu_charges_day,nursing_semiicu_charges_day,nursing_sproom_charges_day,nursing_gward_charges_day,nursing_charges_amount,operation_charges,operation_charges_operations,operation_charges_amount,theatre_charges,theatre_charges_amount,transfusion_blood,transfusion_ffp,transfusion_rdp,transfusion_albumin,transfusion_bloodcharges_items,transfusion_ffpcharges_items,transfusion_rdpcharges_items,transfusion_albumincharges_items,transfusion_charges_amount,injection_charges,injection_charges_items,injection_charges_amount,monitor_charges,monitor_charges_items,monitor_charges_amount,oxygen_charges,oxygen_charges_items,oxygen_charges_amount,ventilator_charges,ventilator_charges_items,ventilator_charges_amount,tapping_abd,tapping_pleural,tapping_csf,tapping_stich,tapping_abdcharges_items,tapping_pleuralcharges_items,tapping_csfcharges_items,tapping_stichcharges_items,tapping_charges_amount,bsl_charges,bsl_charges_items,bsl_charges_amount,ecg_charges,ecg_charges_items,ecg_charges_amount,rt_catheter_charges,rt_catheter_charges_items,rt_catheter_charges_amount,nebulization_charges,nebulization_charges_items,nebulization_charges_amount,emergency_charges,emergency_charges_items,emergency_charges_amount,physiotherapy_charges,physiotherapy_charges_items,physiotherapy_charges_amount,bill_amonut) values('"+id_patient+"','"+patient_name+"','"+patient_id+"','"+reg_charges+"','"+bed_icu+"','"+bed_semiicu+"','"+bed_sproom+"','"+bed_gward+"','"+bed_icu_charges_day+"','"+bed_semiicu_charges_day+"','"+bed_sproom_charges_day+"','"+bed_gward_charges_day+"','"+bed_charges_amount+"','"+doctor_icu+"','"+doctor_semiicu+"','"+doctor_sproom+"','"+doctor_gward+"','"+doctor_icu_charges_day+"','"+doctor_semiicu_charges_day+"','"+doctor_sproom_charges_day+"','"+doctor_gward_charges_day+"','"+doctor_charges_amount+"','"+nursing_icu+"','"+nursing_semiicu+"','"+nursing_sproom+"','"+nursing_gward+"','"+nursing_icu_charges_day+"','"+nursing_semiicu_charges_day+"','"+nursing_sproom_charges_day+"','"+nursing_gward_charges_day+"','"+nursing_charges_amount+"','"+operation_charges+"','"+operation_charges_operations+"','"+operation_charges_amount+"','"+theatre_charges+"','"+theatre_charges+"','"+transfusion_blood+"','"+transfusion_ffp+"','"+transfusion_rdp+"','"+transfusion_albumin+"','"+transfusion_bloodcharges_items+"','"+transfusion_ffpcharges_items+"','"+transfusion_rdpcharges_items+"','"+transfusion_albumincharges_items+"','"+transfusion_charges_amount+"','"+injection_charges+"','"+injection_charges_items+"','"+injection_chargesamount+"','"+monitor_charges+"','"+monitor_charges_items+"','"+monitor_chargesamount+"','"+oxygen_charges+"','"+oxygen_charges_items+"','"+oxygen_chargesamount+"','"+ventilator_charges+"','"+ventilator_charges_items+"','"+ventilator_chargesamount+"','"+tapping_abd+"','"+tapping_pleural+"','"+tapping_csf+"','"+tapping_stich+"','"+tapping_abdcharges_items+"','"+tapping_pleuralcharges_items+"','"+tapping_csfcharges_items+"','"+tapping_stichcharges_items+"','"+tapping_charges_amount+"','"+bsl_charges+"','"+bsl_charges_items+"','"+bsl_chargesamount+"','"+ecg_charges+"','"+ecg_charges_items+"','"+ecg_chargesamount+"','"+rt_catheter_charges+"','"+rt_catheter_charges_items+"','"+rt_catheter_chargesamount+"','"+nebulilzation_charges+"','"+nebulilzation_charges_items+"','"+nebulilzation_chargesamount+"','"+emergency_charges+"','"+emergency_charges_items+"','"+emergency_chargesamount+"','"+physiotherapy_charges+"','"+physiotherapy_charges_items+"','"+physiotherapy_chargesamount+"','"+bill_amount+"')");
   response.sendRedirect("PatientDisplayBill.jsp");



   }
   catch(Exception e){
   System.out.print(e);
   e.printStackTrace();
   }


    %>