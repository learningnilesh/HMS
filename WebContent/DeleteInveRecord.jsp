    <%@page import="javax.print.attribute.DateTimeSyntax"%>

 <%@page import="java.io.*,java.sql.*,java.util.Date,java.text.*"%>

<jsp:useBean id="record" class="hospital.InvestigationPatient" scope="page" />
<jsp:setProperty name="record" property="*"/>


<%
String date=request.getParameter("date");
      String msg = record.Delete(date);
      if ( msg == null)
         out.println("Family Member Details Deleted Successfully!");
      else{
    	    out.println("Error : " + msg);
    	    %>
    	    
    	<% }
    	response.sendRedirect("InvestigationList.jsp");
    	%>