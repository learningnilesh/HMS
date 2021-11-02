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
	
	<script type="text/javascript" src="validate/jquery.js"></script>
	<script src="validate/jquery.validationEngine-en.js" type="text/javascript" charset="utf-8">
	</script>
	<script src="validate/jquery.validationEngine.js" type="text/javascript" charset="utf-8">
	</script>
	<script>
		jQuery(document).ready(function(){
			// binds form submission and fields to the validation engine
			jQuery("#manage_user").validationEngine();
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
                        <li><a href="SetCharges.jsp" >Set Charges</a></li>
                        <li><a href="manageusers.jsp" class="current">Manage Users</a></li>
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
            
    
   
        <form id="manage_user" method="post" action="Adduser.jsp">
            <center>
            <table border="1" width="30%" cellpadding="3">
                <thead>
                    <tr>
                        <th colspan="2">ADD USER</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>User Name</td>
                        <td><input type="text" class="validate[required,minSize[2],maxSize[20],custom[onlyLetterSp]] text-input" name="uname" value="" /></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" class="validate[required] text-input" name="pass" value="" /></td>
                    </tr>
                    
                    <tr>
                    <td></td>
                        <td><input  style="height:25px;width:120px;font-size:10pt;" type="submit" value="SUBMIT" /></td>
                      
                    </tr>
                    
                </tbody>
            </table>
           </center>
        </form>
        </div>
        </div>
        </div>
        </div>
        
    </body>
</html>