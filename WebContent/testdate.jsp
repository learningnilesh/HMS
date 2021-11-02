     <%@page import="javax.print.attribute.DateTimeSyntax"%>
 <%@page import="java.io.*,java.sql.*,java.util.Date,java.text.*"%>
<%
/*String dateString = "2009-11-25 11:15:00";
DateFormat formatter = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
Date myDate = formatter.parse(dateString);


out.print( "<h2 align=\"center\">"+dateString+"</h2>");*/


String dateReceivedFromUser= request.getParameter("date_of_admit");
DateFormat userDateFormat = new SimpleDateFormat("dd/MM/yyyy hh:mm:ss");
DateFormat dateFormatNeeded = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
Date date = userDateFormat.parse(dateReceivedFromUser);
String convertedDate = dateFormatNeeded.format(date);

out.print( "<h2 align=\"center\">"+convertedDate+"</h2>");
%>