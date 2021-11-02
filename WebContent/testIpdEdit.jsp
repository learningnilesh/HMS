<%@ page import ="java.sql.*" %>

<%@page import="java.sql.ResultSet"%>
<%@page import="javax.naming.spi.DirStateFactory.Result"%>
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
                        <li><a href="Ipd.jsp" class="current">IPD</a></li>
                         <li><a href="Opd.jsp">OPD</a></li>
                        
                    
                        
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
            
                     
        <form id="IPD" method="post" action="editrecord.jsp">    
<fieldset>
	<div style="width:500px;margin-left:70px;">
<table width="150%" align="center" cellpadding="10" cellspacing="10">
	<tr>
				<td><br/><b>IPD no. of Patient:</b></td>
				<td><br/><input type="text" name="id_patient" size="30" value="<%=id%>" readonly="readonly"></td>
            </tr>
			<tr>
				<td><br/>Name of Patient:</td>
				<td><br/><input type="text" name="patient_name" size="30" value="<%=rs.getString("patient_name")%>"></td>
            </tr>
			<tr>
       		   <td><br/>Age:</td>
        	   <td><br/><input type="text"  name="age"  size="30"value="<%=rs.getString("age")%>"></td>
      	      
      	     

      		  <!-- 
               <td><p><input type="checkbox" class="validate[required,maxCheckbox[1]] checkbox" name="gender" value="male" />male</p>
          <p><input type="checkbox" class="validate[required,maxCheckbox[1]] checkbox" name="gender" value="female" />female</p></td>
          -->
            </tr>
            
            <tr>
     	 
         		 <td><br/>Address:</td>
      		    <td><br/> <textarea name="address" cols="30" value="<%=rs.getString("address")%>" >
     		     </textarea>
      	    	</td>
         
     		</tr>
     		
     	<tr>
          <td><br/>Marital Status:</td>
           <td><br/>
      	      <select name="marital_status" style="width: 200px" value="<%=rs.getString("marital_status")%>">
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
          <td><br/><input type="text" name="phone_no" size="30"value="<%=rs.getString("phone_no")%>"></td>
          
           <td><br/>Gender:</td>
      	      <td><br/>
      	      <select name="gender" style="width: 200px"value="<%=rs.getString("gender")%>">
				<option value="0" selected>(please select:)</option>
				<option value="male">Male</option>
				<option value="female">Female</option>
				</select>
			</td>
			
    	 </tr>
    	
    	 <tr>
                  <td><br/>Occupation:</td>
          <td><br/><input type="text" name="occupation" size="30"value="<%=rs.getString("occupation")%>"></td>
          <td><br/>DOA and Time</td>
          
         <td><br/><input type="Text" id="doa" name="date_of_admit"  size="30" ><a href="javascript:NewCal('doa','ddmmyyyy','arrow',true,'12',true)"><img src="images/cal.gif" width="16" height="16" border="0" alt="Pick a date"value="<%=rs.getString("date_of_admit")%>"></a></td>
	  		
   	     </tr>
     	 <tr>
          <td><br/>Name of Nearest Relative:</td>
          <td><br/><input type="text" name="nearest_relative" size="30"value="<%=rs.getString("nearest_relative")%>"></td>
           
          
     
          <td><br/>Relative Relation:</td>
          
          <td><br/>
      	      <select name="relative_relation" style="width: 200px"value="<%=rs.getString("relative_relation")%>">
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
          <td><br/><textarea name="relative_address" cols="30" value="<%=rs.getString("relative_address")%>">
          </textarea>
          
     
     <td><br/>Ph:</td>
          <td><br/><input type="text"  name="phone_no" size="30"value="<%=rs.getString("phone_no")%>"></td>
     
     </tr>
     <tr>
          <td><br/>PROVISIONAL DIAGNOSIS:</td>
          <td><br/><input type="text" name="provisional_diagnosis" size="30"value="<%=rs.getString("provisional_diagnosis")%>" ></td>
     
          <td><br/>FINAL DIAGNOSIS:<br/></td>
          <td><br/><input type="text" name="final_diagnosis" size="30"value="<%=rs.getString("final_diagnosis")%>"></td>
     </tr>
     
    
	</table>
	</div>
</fieldset>




<fieldset>
<div style="width:500px;margin-left:70px;">
<table width="150%" align="center" cellpadding="10" cellspacing="10">
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
      <td><br/>Buccas No:</td>
          <td><br/><input type="text" name="mlc_buccas_no"  size="30"value="<%=rs.getString("mlc_buccas_no")%>"></td>
     </tr>

</table>
</div>
</fieldset>



<fieldset>
	<div style="width:500px;margin-left:70px;">
<table width="150%" align="center" cellpadding="10" cellspacing="20">
		
  </table>
  </div>
  
 
	<div style="width:500px;margin-left:70px;">
<table width="150%" align="center" cellpadding="10" cellspacing="10"> 
      <tr>
         
          <td><br/><input TYPE=checkbox name=cured VALUE=cured> Patient Cured <BR></td>
           <td><br/><input TYPE=checkbox name=improved VALUE=improved> Improved <BR></td>
            <td><br/><input TYPE=checkbox name=not_improved VALUE=not_improved> Not Improved <BR></td>
            </tr>
            <tr>
             <td><br/><input TYPE=checkbox name=died VALUE=died> Died <BR></td>
              <td><br/><input TYPE=checkbox name=discharge_on_request VALUE=discharge_on_request> Discharge On Request <BR></td>
               <td><br/><input TYPE=checkbox name=against_medical_advice VALUE=against_medical_advice> Against Medical advice  <BR></td>
          </tr>
      
         <tr>
          <td><br/>Improved</td>
          <td><br/><input type="checkbox" name="improved" value="" value="<%=rs.getString("improved")%>"/></td>
          
          <td><br/>Not Improved</td>
          <td><br/><input type="checkbox" name="not_improved" value="" value="<%=rs.getString("not_improved")%>"/></td>
        </tr>
        <tr>  
          <td><br/>Died</td>
          <td><br/><input type="checkbox" name="died" value="" value="<%=rs.getString("died")%>"/></td>
          
          <td><br/>Discharge on Request</td>
          <td><br/><p><input type="checkbox" name="discharge_on_request" value=""value="<%=rs.getString("discharge_on_request")%>"/></p></td>
          
          <td><br/>Against Medical Advice</td>
          <td><br/><p><input type="checkbox" name="against_medical_advice" value=""value="<%=rs.getString("gainst_medical_advice")%>" /></p></td>
          
     
	</table>
	</div>
</fieldset>

<fieldset>

	<div style="width:500px;margin-left:70px;">
<table width="150%" align="center" cellpadding="10" cellspacing="10">
     
     	
     
     	 <tr>
          <td><p>Name of Witness:</p></td>
          <td><p><input type="text"  name="witness_name" size="30" value="<%=rs.getString("witness_name")%>"></p></td>
     </tr>
      <tr>
          <td><p>Witness Address:</p></td>
			<td> <textarea name="witness_address"  cols="30"value="<%=rs.getString("witness_address")%>">
          </textarea>
         
     </tr>
     
      <tr>
          <td><p >Date and Time</p></td>
          
                   
         <td> <input type="Text" id="relative" maxlength="25" size="30"><a href="javascript:NewCal('relative','ddmmmyyyy',true,24)"><img src="images/cal.gif" width="16" height="16" border="0" alt="Pick a date"></a></td>
	  		
          
     </tr>
	</table>
	
	</div>
	 
	<div style="width:450px;margin-left:100px;">
<table width="150%" align="center" cellpadding="10" cellspacing="20">
	
	
	 <tr>
        <td><center><br/><input type="submit" value="SUBMIT" ></center></td> 
     
       <td><center><br/><input type="reset" value="RESET"></center></td>
    </tr> 
    
    
            </table>
            </div>
           
          
</fieldset>

         </form>       
         	<% 
            }
            %>
               </div>
            </div>
            
         </div>
		</div>
		

</body>
</html>


