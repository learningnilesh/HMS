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
	
	<script type="text/javascript" src="validate/jquery.js"></script>
	<script src="validate/jquery.validationEngine-en.js" type="text/javascript" charset="utf-8">
	</script>
	<script src="validate/jquery.validationEngine.js" type="text/javascript" charset="utf-8">
	</script>
	<script>
		jQuery(document).ready(function(){
			// binds form submission and fields to the validation engine
			jQuery("#EDITIPD").validationEngine();
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



<title>historysheet</title>

</head>
<body>

  
	<div id="main">
		<!-- header -->
		
         <%@page import="java.sql.*,hospital.*"%>
   <%
	int id=Integer.parseInt(request.getParameter("id").toString());

   	String marital_status,gender,relative_relation;
     // load data from table
     Connection con = Database.getConnection();
     PreparedStatement ps = con.prepareStatement("select * from patient where id_patient = "+id+"");
    // ps.setString(1,member.getMid());
     ResultSet rs = ps.executeQuery();
     rs.next();
     
     marital_status= rs.getString("marital_status");
     gender=rs.getString("gender");
     relative_relation=rs.getString("relative_relation");
%>
		<!-- content -->
		<div id="content">
            	
        <div class="indent"> 
                 
          <div class="extra-wrap"> 
            
<form  id="EDITIPD" action="EditIpdFinal.jsp" method=post name="HISTORYSHEET">

<fieldset>
<div style="width:500px;margin-left:40px;">
<table width="150%" align="center" cellpadding="10" cellspacing="10">


 <tr>
				<td><br/><b>IPD no. of Patient:</b></td>
				<td><br/><input type="text" name="id_patient" size="30" value="<%=rs.getString("patient_id")%>" ></td>
            </tr>
			<tr>
				<td><br/>Name of Patient:</td>
				<td><br/><input class="validate[required,minSize[2],maxSize[40],custom[onlyLetterSp]] text-input" type="text" name="patient_name" size="30" value="<%=rs.getString("patient_name")%>"></td>
            </tr>
			<tr>
       		   <td><br/>Age:</td>
        	   <td><br/><input class="validate[required,minSize[1],maxSize[3],custom[integer]] text-input" type="text"  name="age"  size="30" value="<%=rs.getString("age")%>"></td>
      	      
      	     

      		  <!-- 
               <td><p><input type="checkbox" class="validate[required,maxCheckbox[1]] checkbox" name="gender" value="male" />male</p>
          <p><input type="checkbox" class="validate[required,maxCheckbox[1]] checkbox" name="gender" value="female" />female</p></td>
          -->
            </tr>
            
            <tr>
     	 
         		 <td><br/>Address:</td>
      		    <td><br/> <input class="validate[required,minSize[5],maxSize[70]] text-input" type="text" name="address" size="30" value="<%=rs.getString("address")%>" >
     		    
      	    	</td>
         
     		</tr>
     		
     		
     	
   <tr>
          <td><br/>Marital Status:</td>
           <td><br/>
      	      <select name="marital_status" style="width: 200px"   >
				<option value="0">(please select:)</option>
				<option value="married"<%=marital_status.equals("married")?"SELECTED":""%>>Married</option>
				<option value="unmarried"<%=marital_status.equals("unmarried")?"SELECTED":""%>>Unmarried</option>
				<option value="divorcee"<%=marital_status.equals("divorcee")?"SELECTED":""%>>Divorcee</option>
				</select>
			</td>
			
			
          <!-- 
             <td><p><input type="checkbox" class="validate[required,maxCheckbox[1]] checkbox" name="marital_status" value="married" />married</p>
          <p><input type="checkbox" class="validate[required,maxCheckbox[1]] checkbox" name="marital_status" value="unmarried" />unmarried</p></td>
      -->
    	 </tr>
    	 
    	 <tr>
    	 	
          
          <td><br/>Ph.No:</td>
          <td><br/><input class="validate[required,minSize[10],maxSize[12],custom[integer]] text-input" type="text" name="phone_no" size="30"value="<%=rs.getString("phone_no")%>"></td>
          
           <td><br/>Gender:</td>
      	      <td><br/>
      	      <select name="gender" style="width: 200px">
				<option  value="0" selected>(please select:)</option>
				<option value="male"<%=gender.equals("male")?"SELECTED":""%>>Male</option>
				<option value="female"<%=gender.equals("female")?"SELECTED":""%>>Female</option>
				</select>
			</td>
			
    	 </tr>
    	
    	 <tr>
                  <td><br/>Occupation: </td>
          <td><br/><input  class="validate[minSize[2],maxSize[40],custom[onlyLetterSp]] text-input" type="text" name="occupation" size="30"value="<%=rs.getString("occupation")%>"></td>
          <td><br/> DOA and Time </td>
          
         <td><br/><input class="validate[required]" type="Text" id="doa" name="date_of_admit"  size="30" value="<%=rs.getString("date_of_admit")%>"><a href="javascript:NewCal('doa','ddmmyyyy','arrow',true,'12',true)"><img src="images/cal.gif" width="16" height="16" border="0" alt="Pick a date" ></a></td>
	  		
   	     </tr>
     	 <tr>
          <td><br/> Name of Nearest Relative: </td>
          <td><br/><input class="validate[minSize[2],maxSize[40],custom[onlyLetterSp]] text-input" type="text" name="nearest_relative" size="30"value="<%=rs.getString("nearest_relative")%>"></td>
           
          
     
          <td><br/> Relative Relation: </td>
          
          <td><br/>
      	      <select name="relative_relation" style="width: 200px" >
				<option value="" selected>(please select:)</option>
				<option value="mother"<%=relative_relation.equals("mother")?"SELECTED":""%>>Mother</option>
				<option value="father"<%=relative_relation.equals("father")?"SELECTED":""%>>Father</option>
				<option value="husband"<%=relative_relation.equals("husband")?"SELECTED":""%>>Husband</option>
				<option value="wife"<%=relative_relation.equals("wife")?"SELECTED":""%>>Wife</option>
				
				<option value="son"<%=relative_relation.equals("son")?"SELECTED":""%>>Son</option>
				<option value="daughter"<%=relative_relation.equals("daughter")?"SELECTED":""%>>Daughter</option>
				<option value="brother"<%=relative_relation.equals("brother")?"SELECTED":""%>>Brother</option>
				<option value="sister"<%=relative_relation.equals("sister")?"SELECTED":""%>>Sister</option>
				<option value="uncle"<%=relative_relation.equals("uncle")?"SELECTED":""%>>Uncle</option>
				<option value="aunt"<%=relative_relation.equals("aunt")?"SELECTED":""%>>Aunt</option>
				<option value="close relatives"<%=relative_relation.equals("close relatives")?"SELECTED":""%>>Close relatives</option>
				</select>
			</td>
          <!-- 
          <td><p><input type="text" class="validate[minSize[5],maxSize[70],custom[onlyLetterSp]] name="relative_relation" ></p></td>
      -->
     </tr>
     
     
     	 <tr>
          <td><br/> Address: </td>
          <td><br/><input class="validate[minSize[5],maxSize[70]] text-input" type="text" name="relative_address" size="30" value="<%=rs.getString("relative_address")%>">
        
     
     <td><br/> Ph: </td>
          <td><br/><input class="validate[minSize[10],maxSize[12],custom[integer]] text-input" type="text"  name="phone_no" size="30"value="<%=rs.getString("phone_no")%>"></td>
     
     </tr>
     <tr>
          <td><br/> PROVISIONAL DIAGNOSIS: </td>
          <td><br/><input class="validate[minSize[2],maxSize[40],custom[onlyLetterSp]] text-input" type="text" name="provisional_diagnosis" size="30"value="<%=rs.getString("provisional_diagnosis")%>" ></td>
     
          <td><br/> FINAL DIAGNOSIS: <br/></td>
          <td><br/><input class="validate[minSize[2],maxSize[40],custom[onlyLetterSp]] text-input" type="text" name="final_diagnosis" size="30"value="<%=rs.getString("final_diagnosis")%>"></td>
     </tr>
     <tr>
     <td><br/> Witness Name: </td>
          <td><br/><input class="validate[minSize[2],maxSize[40],custom[onlyLetterSp]] text-input" type="text" name="witness_name" size="30" value="<%=rs.getString("witness_name")%>" /><br/></td>
          
        <td><br/> Witness Address: </td>
          <td><br/><input class="validate[minSize[5],maxSize[70]] text-input" type="text" name="witness_address" size="30" value="<%=rs.getString("witness_address")%>" /><br/></td>
        
    </tr>

<tr>
 <td><div align="center"></div>
<td><br/><b> For MLC </b></td>

</tr>
<tr>
          <td><br/> Police Station: </td>
          <td><br/><input class="validate[minSize[2],maxSize[40],custom[onlyLetterSp]] text-input" type="text" name="mlc_policestn"  size="30"value="<%=rs.getString("mlc_policestn")%>" ><br/></td>
          
          
          <td><br/> Police Name: </td>
          <td><br/><input class="validate[minSize[2],maxSize[40],custom[onlyLetterSp]] text-input" type="text" name="mlc_policename" size="30"value="<%=rs.getString("mlc_policename")%>" ></td>
     </tr>
     	 <tr>
          <td><br/> MLC Reg on Date: </td>
          <td><br/><input class="validate[required]" type="Text" id="mlcregi" name="mlc_regi_date" size="30"value="<%=rs.getString("mlc_regi_date")%>"><a href="javascript:NewCal('mlcregi','ddmmyyyy','arrow',true,'12',true)"><img src="images/cal.gif" width="16" height="16" border="0" alt="Pick a date"></a></td>
          
          <td><br/> MLC NO: </td>
          <td><br/><input class="validate[custom[integer]] text-input" type="text" name="mlc_no" size="30" value="<%=rs.getString("mlc_no")%>"><br/></td>
          
   
     </tr>
       
     <tr>
     <td><br/> Buccas No.: </td>
          <td><br/><input class="validate[custom[integer]] text-input" type="text" name="mlc_buccas_no" size="30" value="<%=rs.getString("mlc_buccas_no")%>" /><br/></td>
          
   
     </tr>
    
<tr>
         <td></td>
     <td><p class="ex1"><button style="height:25px;width:120px;font-size:10pt;" name="submit" type="submit" value="CHANGE" >CHANGE</button></p></td>
       <td><p class="ex1"><button style="height:25px;width:120px;font-size:10pt;" name="reset" type="reset" value="RESET">RESET</button></p></td>
    </tr> 
</table>
<%

     rs.close();
     ps.close();
     con.close();
%>
</div></fieldset></form></div></div></div></div>
</body>
</html>   