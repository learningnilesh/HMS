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

<link rel="stylesheet" href="CSSvalidationEngine.jquery.css" type="text/css"/>
	
	<script type="text/javascript" src="validate/jquery.js"></script>
	<script src="validate/jquery.validationEngine-en.js" type="text/javascript" charset="utf-8">
	</script>
	<script src="validate/jquery.validationEngine.js" type="text/javascript" charset="utf-8">
	</script>
	<script>
		jQuery(document).ready(function(){
			// binds form submission and fields to the validation engine
			jQuery("#hms_editcharges").validationEngine();
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


        <title>JSP Example</title>
    </head>
    <body id="page4" onload="new ElementMaxHeight();">
	<div id="main">
		<!-- header -->
		<div id="header" class="small">
			<div class="row-1">
         	<div class="wrapper">
            	<div class="logo">
               	
          <h1><a href="adminhome.jsp">CHOUGALE</a></h1>
                  
                 <font size="4" face="Verdana"> 
                 <strong>Neurology Centre & Nursing Home</strong>
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
                        
                     	<li><a href="AdminHome.jsp" >Home</a></li>
                        
                        <li><a href="AdminEditCharges.jsp" class="current">Bill Charges</a></li>
                        
                        <li><a href="logout.jsp">Logout</a></li>
            
                    
                        
      
                    
                        
                      </ul>
                  </div>
               </div>
               <!-- header-box-small end -->
            </div>
         </div>
         </div> 
    

    <div id="content">
            	
        <div class="indent"> 
                 
          <div class="extra-wrap"> 
            
    
   
        <form id="hms_editcharges" method="post" action="">
            
            <fieldset>
            <div style="width:500px;margin-left:30px;">
<table width="80%" align="center" cellpadding="10" cellspacing="20">
                <thead>
                  
                    <tr>
				
				<td>REGISTRATION CHARGES:</td>
                <td><input type="text" class="validate[custom[integer]] text-input" name="regcharges"></td>
                <td><input type="submit" value="SUBMIT" /></td>
			</tr>                 
                  
                    <tr>
				<td>OPERATION CHARGES:</td>
                <td><input type="text" class="validate[custom[integer]] text-input" name="opecharges"></td>
                <td><input type="submit" value="SUBMIT" /></td>
			</tr>                 
                
                   <tr>
				<td>THEATRE CHARGES:</td>
                <td><input type="text" class="validate[custom[integer]] text-input" name="thecharges"></td>
                <td><input type="submit" value="SUBMIT" /></td>
			</tr>   
			
			 <tr>
				<td>INJECTION CHARGES:</td>
                <td><input type="text" class="validate[custom[integer]] text-input" name="injcharges"></td>
                <td><input type="submit" value="SUBMIT" /></td>
			</tr>     
			
			 <tr>
				<td>MONITOR CHARGES:</td>
                <td><input type="text" class="validate[custom[integer]] text-input" name="moncharges"></td>
                <td><input type="submit" value="SUBMIT" /></td>
			</tr>   
			
			   <tr>
				<td>OXYGEN CHARGES:</td>
                <td><input type="text" class="validate[custom[integer]] text-input" name="oxycharges"></td>
                <td><input type="submit" value="SUBMIT" /></td>
			</tr>   
			
			    <tr>
				<td>VENTILATOR CHARGES:</td>
                <td><input type="text" class="validate[custom[integer]] text-input" name="vencharges"></td>
                <td><input type="submit" value="SUBMIT" /></td>
			</tr>   
			
			      <tr>
				<td>BSL CHARGES:</td>
                <td><input type="text" class="validate[custom[integer]] text-input" name="bslcharges"></td>
                <td><input type="submit" value="SUBMIT" /></td>
			</tr>  
			
			   <tr>
				<td>ECG CHARGES:</td>
                <td><input type="text" class="validate[custom[integer]] text-input" name="ecgcharges"></td>
                <td><input type="submit" value="SUBMIT" /></td>
			</tr>  
			
			     <tr>
				<td>RT/CATHETER CHARGES:</td>
                <td><input type="text" class="validate[custom[integer]] text-input" name="rtcharges"></td>
                <td><input type="submit" value="SUBMIT" /></td>
			</tr>   
			
			     <tr>
				<td>NEBULIZATION CHARGES:</td>
                <td><input type="text" class="validate[custom[integer]] text-input" name="nebcharges"></td>
                <td><input type="submit" value="SUBMIT" /></td>
			</tr>    
			
			      <tr>
				<td>EMERGENCY CHARGES:</td>
                <td><input type="text" class="validate[custom[integer]] text-input" name="emecharges"></td>
                <td><input type="submit" value="SUBMIT" /></td>
			</tr>  
			
			      <tr>
				<td>PHYSIOTHERAPY CHARGES:</td>
                <td><input type="text" class="validate[custom[integer]] text-input" name="phycharges"></td>
                <td><input type="submit" value="SUBMIT" /></td>
			</tr>  
                </tbody>
            </table>
            </div>
            </fieldset>
            
                      
        </form>
        </div>
        </div>
        </div>
        </div>
        
    </body>
</html>