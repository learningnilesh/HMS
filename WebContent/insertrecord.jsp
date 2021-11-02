
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
	


     
    </head>
    <body id="page4" onload="new ElementMaxHeight();">
	
		
			
        
         

       
    

    <div id="content">
            	
        <div class="indent"> 
                 
          <div class="extra-wrap"> 
            
                <%@page import="javax.print.attribute.DateTimeSyntax"%>

 <%@page import="java.io.*,java.sql.*,java.util.Date,java.text.*"%>
 
<jsp:useBean id="member" class="hospital.patient" scope="session" />

<jsp:useBean id="familymember"  class="hospital.Investigation"  scope="page" />
<jsp:setProperty name="familymember" property="*"/>
 
<%


String msg = familymember.add(member.getMid(),member.getPatient_id(),member.getPatient_name());
String msg1="History records are already Exists";
String id_patient=member.getMid();
if ( msg == null)
    out.println("Record inserted Successfully!");
 else{
    out.println("Error : " + msg1);
    %>
  <a href="EditHistoryRecord.jsp?id=<%=id_patient %>"> View</a>
<% }
//response.sendRedirect("Historysheet.jsp");
%>

        </div>
        </div>
        </div>
       
        
        </body>
        
</html>
       