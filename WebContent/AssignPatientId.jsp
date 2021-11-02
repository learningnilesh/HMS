
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
	
		
         <%@ page import="java.util.*,java.sql.*,hospital.*"%>

       
    

    <div id="content">
            	
        <div class="indent"> 
                 
          <div class="extra-wrap"> 
            
                <%@page import="javax.print.attribute.DateTimeSyntax"%>

 <%@page import="java.io.*,java.sql.*,java.util.Date,java.text.*"%>
 
<jsp:useBean id="member" class="hospital.patient" scope="session" />

<jsp:useBean id="familymember"  class="hospital.Investigation"  scope="page" />
<jsp:setProperty name="familymember" property="*"/>
 
<%
     Connection con = Database.getConnection();
     PreparedStatement ps = con.prepareStatement("select * from patient order by id_patient desc limit 1");
  
     
     ResultSet rs = ps.executeQuery();

%>
<div style="width:500px;margin-left:30px;">
<form  action="">
<table width="140%" align="center"  cellspacing=10 cellpadding=10>

<tr style="color:white;background-color:navy;font:700 10pt verdana">

</tr>

<%
 while( rs.next())
 {
     String id_patient=rs.getString("id_patient");
%>
<tr>
<td><font size="2.5" style="color:white;background-color:navy;font:700 10pt verdana">Name Of Patient:</font>
<td> <%=rs.getString("patient_name")%>
<td><font size="2.5" style="color:white;background-color:navy;font:700 10pt verdana">Patient ID:</font>
<td><%=rs.getString("patient_id")%>

</tr>

<%
    }
    rs.close();
    ps.close();
    con.close();
%>

        </div>
        </div>
        </div>
       
        
        </body>
        
</html>
       