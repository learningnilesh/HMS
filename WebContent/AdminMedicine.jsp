<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.*,java.sql.*,java.util.Date,java.text.*"%>
<!DOCTYPE html>
<html>
    <head>
             <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="CSS/style.css" rel="stylesheet" type="text/css" />
<link href="CSS/layout.css" rel="stylesheet" type="text/css" />
<script src="CSS/maxheight.js" type="text/javascript"></script>

<script type="text/javascript">

function Confirm(MEDICINE){

	
alert("Medicine added successfully!"); 
form.submit();
}
</script>
<link rel="stylesheet" href="CSS/validationEngine.jquery.css" type="text/css"/>
	<script src="jqueryCalendar/jquery-1.6.2.min.js"></script>
	<script type="text/javascript" src="validate/jquery.js"></script>
	<script src="validate/jquery.validationEngine-en.js" type="text/javascript" charset="utf-8">
	</script>
	<script src="validate/jquery.validationEngine.js" type="text/javascript" charset="utf-8">
	</script>
	
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script> 

    



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
                        
                     		<li><a href="AdminPanel.jsp" >Home</a></li>
                       
                        <li><a href="SetCharges.jsp" >Set Charges</a></li>
                        <li><a href="AdminMedicine.jsp" class="current">new medicine</a></li>
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
            
    
   
        <form id="MEDICINE" action="AdminMedicine.jsp" method=post>
            <fieldset>     
              <div style="width:700px;margin-left:70px;">  
        <table style="width:700px;margin-left:70px;">


<tr>
				<td><br/>Medicine Name:</td>
				<td><br/><input  style="height:18px;font-size:10pt;" type="text" name="medicine_name" size="30"></td>
            </tr>
            
            </table>
            <table  style="width:700px;margin-left:70px;">
             <tr>
        <td><input style="height:18px;font-size:10pt;" type="submit" value="SUBMIT" onClick="Confirm(this.MEDICINE)" ></td> 
     
       <td><br/><input style="height:18px;font-size:10pt;"  type="reset" value="RESET"></td>
    </tr>
    
    
<%


//String id_patient=request.getParameter("id_patient");
String medicine_name=request.getParameter("medicine_name");


try{
     Class.forName("com.mysql.jdbc.Driver");
       Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hmsdb", "root", "root");
       Statement st=con.createStatement();
       int i=st.executeUpdate("insert into medicine(medicine_name) values('"+medicine_name+"')");
     //  response.sendRedirect("manageuser1.jsp");
        

    }
    catch(Exception e){
    System.out.print(e);
    e.printStackTrace();
    }

    %>
    
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