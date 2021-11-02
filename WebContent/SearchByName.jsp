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
                        <li><a href="SearchByIPD.jsp" >Search by IPD/OPD</a></li>
                        <li><a href="SeardchByIPD.jsp" class="current">Search by name</a></li>
                    
                        
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
            
                     
        <form id="searchbyname" method="post" action="testse.jsp">    
<fieldset>
	<div style="width:500px;margin-left:70px;">
<table width="160%" align="center" cellpadding="10" cellspacing="20">
			
			<tr>
			<td>Name of Patient:</td>
				<td><p><br/><input type="text" size="70"  name="patient_name"></p></td>
            </tr>
          </table>
	
	</div>
	<div style="width:450px;margin-left:100px;">
<table width="150%" align="center" cellpadding="10" cellspacing="20">
	<tr>
        <td><input type="submit" value="SUBMIT" /></td> 
     
       <td><input type="reset" value="RESET"></td>
    </tr> 
    
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