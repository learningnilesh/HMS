    <%@page import="javax.print.attribute.DateTimeSyntax"%>

 <%@page import="java.io.*,java.sql.*,java.util.Date,java.text.*"%>
 
<jsp:useBean id="member" class="hospital.patient" scope="session" />

<jsp:useBean id="familymember1"  class="hospital.InvestigationPatient"  scope="page" />
<jsp:setProperty name="familymember1" property="*"/>
 
<%


String msg = familymember1.add(member.getMid(),member.getPatient_id(),member.getPatient_name());
String msg1="History records are already Exists";
String id_patient=member.getMid();
if ( msg == null)
    out.println("Record inserted Successfully!");
 else{
    out.println("Error : " + msg);
    %>
    
<% }
response.sendRedirect("InvestigationList.jsp");
%>

       