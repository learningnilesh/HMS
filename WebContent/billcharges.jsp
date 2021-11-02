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
	<script src="jqueryCalendar/jquery-1.6.2.min.js"></script>
	<script type="text/javascript" src="validate/jquery.js"></script>
	<script src="validate/jquery.validationEngine-en.js" type="text/javascript" charset="utf-8">
	</script>
	<script src="validate/jquery.validationEngine.js" type="text/javascript" charset="utf-8">
	</script>
	
	<script>
$(document).ready(function(){
    $("button").click(function(){
        $("p").clone().appendTo("body");
        $("input").clone().appendTo("body");
    });
});
</script>
	<script>
		jQuery(document).ready(function(){
			// binds form submission and fields to the validation engine
			jQuery("#hms_billcharges").validationEngine();
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
                        
                     	<li><a href="adminhome.jsp" >Home page</a></li>
                        <li><a href="billcharges.jsp" class="current">Bill Charges</a></li>
            
                    
                        
      
                    
                        
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
            
    
   
        <form id="hms_billcharges" method="post" action="">
            
            <fieldset>
            <div style="width:500px;margin-left:30px;">
<table width="60%" align="center" cellpadding="10" cellspacing="20">
                <thead>
                  
                    <tr>
				<td>CHARGES FOR:</td>
				<td><p><br/><input type="text" class="validate[required,minSize[2],maxSize[20],custom[onlyLetterSp]] text-input" name="charges_name"></p></td>
          </tr>
          <tr>
         		<td><p><br/>CHARGES:</p></td>
                <td><input type="text" class="validate[required,minSize[2],maxSize[10],custom[integer]] text-input" name="charges"></td>
			</tr>                 
                  
                    <tr>
                        <td><input type="submit" value="SUBMIT" /></td>
                      
                    </tr>
                    
                </tbody>
            </table>
            </div>
       </fieldset>
            
           <fieldset>
            <div style="width:500px;margin-left:30px;">
<table width="60%" align="center" cellpadding="10" cellspacing="20">
                
                <tbody>
                
                  
                 <tr><td>Operation:<select name="state" >
            <option value="1">Indoor bed charges</option>
            <option value="2">Doctor charges</option>
            <option value="3">Nursing charges</option>
            <option value="4">Transfusion</option>
            <option value="5">Tapping charges</option>
                  </select></td></tr>
                 <tr> 
                  <td>CHARGES FOR:</td>
                  <td>CHARGES:</td>
                 </tr> 
                 
                 <tr> 
                 <td><p><br/><input type="text" class="validate[required,minSize[2],maxSize[20],custom[onlyLetterSp]] text-input" name="charges_name1"></p></td>
                  <td><p><br/><input type="text" class="validate[required,minSize[2],maxSize[10],custom[integer]] text-input" name="charges1"></p></td>
                  <td><p><button>+</button></p></td>
                 </tr> 
                 
                 
                    <tr>
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