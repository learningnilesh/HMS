<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="javax.print.attribute.DateTimeSyntax"%>

<%@page import="java.io.*,java.sql.*,java.util.Date,java.text.*"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="CSS/style.css" rel="stylesheet" type="text/css" />
<link href="CSS/layout.css" rel="stylesheet" type="text/css" />
<script src="CSS/maxheight.js" type="text/javascript"></script>

<script language="javascript" type="text/javascript" src="jqueryCalendar/datetimepicker.js">
</script>
<script type="text/javascript" src="validate/jquery.js"></script>
<script type="text/javascript" src="validate/jquery.validate.js"></script>

<link rel="stylesheet" href="CSS/validationEngine.jquery.css" type="text/css"/>
	
	<script type="text/javascript" src="validate/jquery.js"></script>
	<script src="validate/jquery.validationEngine-en.js" type="text/javascript" charset="utf-8">
	</script>
	<script src="validate/jquery.validationEngine.js" type="text/javascript" charset="utf-8">
	</script>
	<script>
		jQuery(document).ready(function(){
			// binds form submission and fields to the validation engine
			jQuery("#IPD").validationEngine();
		});

		/**
		*
		* @param {jqObject} the field where the validation applies
		* @param {Array[String]} validation rules for this field
		* @param {int} rule index
		* @param {Map} form options
		* @return an error string if validation failed
		*/
		function checkHELLO(field, rules, i, options){
			if (field.val() != "HELLO") {
				// this allows to use i18 for the error msgs
				return options.allrules.validate2fields.alertText;
			}
		}
	</script>

<script type="text/javascript">
function Confirm(IPDNK){
alert("Record insert successfully!"); 
form.submit();
}
</script>

</head>


  
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
                     	<li><a href="Home.jsp" >Home page</a></li>
                     	 <li><a href="Ipd.jsp" >ADMISSION</a></li>
                        <li><a href="SearchByIPD.jsp" class="current">SEARCH</a></li>
                     <li><a href="AdmittedPatients.jsp">ADMITTED PATIENTS</a></li>
                        
                    
                        
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
              <div style="width:500px;margin-left:70px;">  
        <table width="150%" align="center" cellpadding="10" cellspacing="10">
<tr>
<td width="30%" valign="top">
<center>

<form  action="ipdnk.jsp" method=post name="IPDNK">
<tr>
				<td><br/>Name of Patient:</td>
				<td><br/><input type="text" name="patient_name" size="30"></td>
            </tr>
			<tr>
       		   <td><br/>Age:</td>
        	   <td><br/><input type="text"  name="age"  size="30"></td>
      	      
      	     

      		  <!-- 
               <td><p><input type="checkbox" class="validate[required,maxCheckbox[1]] checkbox" name="gender" value="male" />male</p>
          <p><input type="checkbox" class="validate[required,maxCheckbox[1]] checkbox" name="gender" value="female" />female</p></td>
          -->
            </tr>
            
            <tr>
     	 
         		 <td><br/>Address:</td>
      		    <td><br/> <textarea name="address" cols="30"  >
     		     </textarea>
      	    	</td>
         
     		</tr>
     		
     	<tr>
          <td><br/>Marital Status:</td>
           <td><br/>
      	      <select name="marital_status" style="width: 200px">
				<option value="0" selected>(please select:)</option>
				<option value="married">Married</option>
				<option value="unmarried">Unmarried</option>
				<option value="divorcee">Divorcee</option>
				</select>
			</td>
			
			
          <!-- 
             <td><p><input type="checkbox" class="validate[required,maxCheckbox[1]] checkbox" name="marital_status" value="married" />married</p>
          <p><input type="checkbox" class="validate[required,maxCheckbox[1]] checkbox" name="marital_status" value="unmarried" />unmarried</p></td>
      -->
    	 </tr>
    	 
    	 <tr>
    	 	
          
          <td><br/>Ph.No:</td>
          <td><br/><input type="text" name="phone_no" size="30"></td>
          
           <td><br/>Gender:</td>
      	      <td><br/>
      	      <select name="gender" style="width: 200px">
				<option value="0" selected>(please select:)</option>
				<option value="male">Male</option>
				<option value="female">Female</option>
				</select>
			</td>
			
    	 </tr>
    	
    	 <tr>
                  <td><br/>Occupation:</td>
          <td><br/><input type="text" name="occupation" size="30"></td>
          <td><br/>DOA and Time</td>
          
         <td><br/><input type="Text" id="doa" name="date_of_admit"  size="30" ><a href="javascript:NewCal('doa','ddmmyyyy','arrow',true,'12',true)"><img src="images/cal.gif" width="16" height="16" border="0" alt="Pick a date"></a></td>
	  		
   	     </tr>
     	 <tr>
          <td><br/>Name of Nearest Relative:</td>
          <td><br/><input type="text" name="nearest_relative" size="30"></td>
           
          
     
          <td><br/>Relative Relation:</td>
          
          <td><br/>
      	      <select name="relative_relation" style="width: 200px">
				<option value="0" selected>(please select:)</option>
				<option value="mother">Mother</option>
				<option value="father">Father</option>
				<option value="husband">Husband</option>
				<option value="wife">Wife</option>
				<option value="father">Father</option>
				<option value="son">Son</option>
				<option value="daughter">Daughter</option>
				<option value="brother">Brother</option>
				<option value="sister">Sister</option>
				<option value="uncle">Uncle</option>
				<option value="aunt">Aunt</option>
				<option value="close relatives">Close relatives</option>
				</select>
			</td>
          <!-- 
          <td><p><input type="text" class="validate[minSize[5],maxSize[70],custom[onlyLetterSp]] name="relative_relation" ></p></td>
      -->
     </tr>
     	 <tr>
          <td><br/>Address:</td>
          <td><br/><textarea name="relative_address" cols="30" >
          </textarea>
          
     
     <td><br/>Ph:</td>
          <td><br/><input type="text"  name="relative_ph" size="30"></td>
     
     </tr>
     <tr>
          <td><br/>PROVISIONAL DIAGNOSIS:</td>
          <td><br/><input type="text" name="provisional_diagnosis" size="30" ></td>
     
          <td><br/>FINAL DIAGNOSIS:<br/></td>
          <td><br/><input type="text" name="final_diagnosis" size="30"></td>
     </tr>
     
     <tr>
        <td><center><br/><input type="submit" value="SUBMIT" onClick="Confirm(this.IPDNK)" ></center></td> 
     
       <td><center><br/><input type="reset" value="RESET"></center></td>
    </tr> 
</form>
</center>
<%


//String id_patient=request.getParameter("id_patient");
String patient_name=request.getParameter("patient_name");

Class.forName("com.mysql.jdbc.Driver");
Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/hmsdb", "root", "root");


Statement st1=con1.createStatement();

ResultSet rs = st1.executeQuery("select id_patient from patient order by id_patient desc limit 1");
rs.next();
String id_patient = rs.getString("id_patient");

String year=new java.text.SimpleDateFormat("yyyy").format(new java.util.Date());
String ipd_no="IPD"+year+id_patient;

String age=request.getParameter("age");
String gender=request.getParameter("gender");
String address=request.getParameter("address");
String marital_status=request.getParameter("marital_status"); 
String occupation=request.getParameter("occupation");
String phone_no=request.getParameter("phone_no");


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
       int i=st.executeUpdate("insert into patient(patient_name,patient_id,age,gender,address,marital_status,occupation,phone_no,nearest_relative,relative_address,provisional_diagnosis,final_diagnosis,relative_relation) values('"+patient_name+"','"+ipd_no+"','"+age+"','"+gender+"','"+address+"','"+marital_status+"','"+occupation+"','"+phone_no+"','"+nearest_relative+"','"+relative_address+"','"+provisional_diagnosis+"','"+final_diagnosis+"','"+relative_relation+"')");
     //  response.sendRedirect("manageuser1.jsp");
    }
    catch(Exception e){
    System.out.print(e);
    e.printStackTrace();
    }

    %>

	   

   
</td>



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