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
<title>Investigation Edit</title>
<script>
.boxed {
	  border: 1px solid green ;
	}
</script>
</head>
<body>

<jsp:useBean id="member" scope="session"  class="hospital.patient" />

  
	<div id="main">
		<!-- header -->
		
         <%@page import="java.sql.*,hospital.*"%>
  
		<!-- content -->
		<div id="content">
            	
        <div class="indent"> 
                 
          <div class="extra-wrap"> 
            

<%@page import="java.sql.*,hospital.*"%>

<%

String id_patient=request.getParameter("patient_id");
String patient_name=request.getParameter("patient_name");
String address=request.getParameter("address");
String date_of_admit=request.getParameter("date_of_admit");
String date_of_discharge=request.getParameter("date_of_discharge");
String id=member.getMid();

%>

 

<table  cellpadding=5  width=100%>



<%
try{
    Class.forName("com.mysql.jdbc.Driver");
     Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hmsdb", "root", "root");
       Statement st=con.createStatement();
    																																																																																																																																											

       //
      st.executeUpdate("UPDATE patient SET  date_of_discharge='"+date_of_discharge+"' WHERE patient_id='"+id_patient+"'");
       response.sendRedirect("Patient.jsp?id='"+id+"'");
   }
  catch(Exception e){
  System.out.print(e);
  e.printStackTrace();
  }
%>



</table>

</div></div></div></div>
</body>
</html>