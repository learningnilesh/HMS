<%@ page import ="java.sql.*" %>

<%@page import="java.sql.ResultSet"%>
<%@page import="javax.naming.spi.DirStateFactory.Result"%>
<%@page import="javax.print.attribute.DateTimeSyntax"%>

 <%@page import="java.io.*,java.sql.*,java.util.Date,java.text.*"%>
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

<script language="javascript" type="text/javascript" src="jqueryCalendar/datetimepicker.js">
</script>
<script type="text/javascript" src="validate/jquery.js"></script>
<script type="text/javascript" src="validate/jquery.validate.js"></script>

<link rel="stylesheet" href="CSS/validationEngine.jquery.css" type="text/css"/>
	<script type="text/javascript">
function Confirm(RECORD){
alert("Record insert successfully!"); 
form.submit();
}
</script>
	
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



</head>


  
  <body id="page4" onload="new ElementMaxHeight();">
	<div id="main">
		<!-- header -->
		
   
		<!-- content -->
		<div id="content">
            	
        <div class="indent"> 
                 
          <div class="extra-wrap"> 
            
            <div>
            <div>
            
            	<%
            	
            		if(request.getParameter("status")!=null)
            		{	
            		
            	%>		
            			 <td><b>Record Inserted Succesfully</b></td> 
            	<% 
            		}
            	%>		      	
            	
            
            </div>
            
            
            <%
            
            if(request.getParameter("id")!=null)
            {
            	int id=Integer.parseInt(request.getParameter("id").toString());
            	
            	
            	//out.print(""+id);
            	
            
                    Class.forName("com.mysql.jdbc.Driver");
                      Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hmsdb", "root", "root");
                      Statement st=con.createStatement();
                      
                      ResultSet rs=st.executeQuery("SELECT *FROM patient WHERE id_patient="+id+"");
                      
                      rs.next();
                      
                  
                   
					%>
            
                     
      
<fieldset>
	<div style="width:500px;margin-left:70px;">
<table width="100%" height="1000px" align="center" border="2" cellpadding="10" cellspacing="10" >
<tr>
<td width="30%" valign="top">
<center>
   <form method="post" action="Ipd_Edit.jsp" name="RECORD" >
   <table>
      <tr>
				<td><br/><b>IPD no. of Patient:</b></td>
				<td><br/><input type="text" name="id_patient" size="30" value="<%=rs.getString("patient_id")%>" ></td>
            </tr>
			<tr>
				<td><br/>Name of Patient:</td>
				<td><br/><input type="text" name="patient_name" size="30" value="<%=rs.getString("patient_name")%>"></td>
            </tr>
			<tr>
       		   <td><br/>Age:</td>
        	   <td><br/><input type="text"  name="age"  size="30" value="<%=rs.getString("age")%>"></td>
      	      
      	     

      		  <!-- 
               <td><p><input type="checkbox" class="validate[required,maxCheckbox[1]] checkbox" name="gender" value="male" />male</p>
          <p><input type="checkbox" class="validate[required,maxCheckbox[1]] checkbox" name="gender" value="female" />female</p></td>
          -->
            </tr>
            
            <tr>
     	 
         		 <td><br/>Address:</td>
      		    <td><br/> <input type="text" name="address" size="30" value="<%=rs.getString("address")%>" >
     		    
      	    	</td>
         
     		</tr>
   <tr>
          <td><br/>Marital Status:</td>
           <td><br/>
      	      <select name="marital_status" style="width: 200px"  >
				<option value="<%=rs.getString("marital_status")%>" selected>(please select:)</option>
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
          <td><br/><input type="text" name="phone_no" size="30"value="<%=rs.getString("phone_no")%>"></td>
          
           <td><br/>Gender:</td>
      	      <td><br/>
      	      <select name="gender" style="width: 200px">
				<option  value="<%=rs.getString("gender")%>" selected>(please select:)</option>
				<option value="male">Male</option>
				<option value="female">Female</option>
				</select>
			</td>
			
    	 </tr>
    	
    	 <tr>
                  <td><br/>Occupation:</td>
          <td><br/><input type="text" name="occupation" size="30"value="<%=rs.getString("occupation")%>"></td>
          <td><br/>DOA and Time</td>
          
         <td><br/><input type="Text" id="doa" name="date_of_admit"  size="30" value="<%=rs.getString("date_of_admit")%>"><a href="javascript:NewCal('doa','ddmmyyyy','arrow',true,'12',true)"><img src="images/cal.gif" width="16" height="16" border="0" alt="Pick a date" ></a></td>
	  		
   	     </tr>
     	 <tr>
          <td><br/>Name of Nearest Relative:</td>
          <td><br/><input type="text" name="nearest_relative" size="30"value="<%=rs.getString("nearest_relative")%>"></td>
           
          
     
          <td><br/>Relative Relation:</td>
          
          <td><br/>
      	      <select name="relative_relation" style="width: 200px" >
				<option value="<%=rs.getString("relative_relation")%>" selected>(please select:)</option>
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
          <td><br/><input type="text" name="relative_address" size="30" value="<%=rs.getString("relative_address")%>">
        
     
     <td><br/>Ph:</td>
          <td><br/><input type="text"  name="phone_no" size="30"value="<%=rs.getString("phone_no")%>"></td>
     
     </tr>
     <tr>
          <td><br/>PROVISIONAL DIAGNOSIS:</td>
          <td><br/><input type="text" name="provisional_diagnosis" size="30"value="<%=rs.getString("provisional_diagnosis")%>" ></td>
     
          <td><br/>FINAL DIAGNOSIS:<br/></td>
          <td><br/><input type="text" name="final_diagnosis" size="30"value="<%=rs.getString("final_diagnosis")%>"></td>
     </tr>
     
    

<tr>
 <td><div align="center"></div>
<td><br/><center><b>For MLC</b></center></td>
</tr>
<tr>
          <td><br/>Police Station:</td>
          <td><br/><input type="text" name="mlc_policestn"  size="30"value="<%=rs.getString("mlc_policestn")%>" ><br/></td>
          
          
          <td><br/>Police Name:</td>
          <td><br/><input type="text" name="mlc_policename" size="30"value="<%=rs.getString("mlc_policename")%>" ></td>
     </tr>
     	 <tr>
          <td><br/>MLC Reg on Date:</td>
          <td><br/><input type="Text" id="mlcregi" name="mlc_regi_date" size="30"value="<%=rs.getString("mlc_regi_date")%>"><a href="javascript:NewCal('mlcregi','ddmmyyyy','arrow',true,'12',true)"><img src="images/cal.gif" width="16" height="16" border="0" alt="Pick a date"></a></td>
          
          <td><br/>MLC NO:</td>
          <td><br/><input type="text" name="mlc_no" size="30" value="<%=rs.getString("mlc_no")%>"><br/></td>
          
   
     </tr>
       
     <tr>
     <td><br/>Buccas No.:</td>
          <td><br/><input type="text" name="mlc_buccas_no" size="30" value="<%=rs.getString("mlc_buccas_no")%>" /><br/></td>
          
   
     </tr>
     <tr>
        <td><center><br/><input style="height:25px;width:120px;font-size:10pt;" type="submit" name="aaa" value="SUBMIT"  /></center></td> 
     
       <td><!-- <br/><input type="reset"name="bbb" value="RESET" />  --></td>
    </tr> 
         
 </table>
</form></center></td></tr>
 
    
   
	<% 
            }
            %>
     		
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
/*
//String q="insert into patient(patient_name,ipd_no,age,gender,address,marital_status,occupation,phone_no,date_of_admit,date_of_discharge,nearest_relative,relative_address,mlc_policestn,mlc_policename,mlc_no,mlc_buccas_no,provisional_diagnosis,final_diagnosis,relative_relation,witness_name,witness_address) values('"+patient_name+"','"+ipd_no+"','"+age+"','"+gender+"','"+address+"','"+marital_status+"','"+occupation+"','"+phone_no+"','"+date_of_admit+"','"+date_of_discharge+"','"+nearest_relative+"','"+relative_address+"','"+mlc_policestn+"','"+mlc_policename+"','"+mlc_no+"','"+mlc_buccas_no+"','"+provisional_diagnosis+"','"+final_diagnosis+"','"+relative_relation+"','"+witness_name+"','"+witness_address+"')";


/*out.print( "<h2 align=\"center\">"+q+"</h2>");
*/
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
    
           
           
          </table>
          </div>
</fieldset>

              
         	
             
               </div>
            </div>
            
         </div>
		</div>
		

</body>
</html>


