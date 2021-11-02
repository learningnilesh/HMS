 <%@page import="java.io.*,java.sql.*,java.util.Date,java.text.*"%>
<%
/*String dateString = "2009-11-25 11:15:00";
DateFormat formatter = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
Date myDate = formatter.parse(dateString);


out.print( "<h2 align=\"center\">"+dateString+"</h2>");*/


String dateReceivedFromUser = "26-1-2016 11:10:26";
out.print( "<h2 align=\"center\">"+dateReceivedFromUser+"</h2>");
DateFormat userDateFormat = new SimpleDateFormat("dd-MM-yyyy H:mm:ss");
DateFormat dateFormatNeeded = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
Date date = userDateFormat.parse(dateReceivedFromUser);
String date_of_admit = dateFormatNeeded.format(date);

out.print( "<h2 align=\"center\">"+date_of_admit+"</h2>");


try{
    Class.forName("com.mysql.jdbc.Driver");
      Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "root");
      Statement st=con.createStatement();
      int i=st.executeUpdate("insert into testdate(date_of_admit) values('"+date_of_admit+"')");
    //  response.sendRedirect("manageuser1.jsp");
   }
   catch(Exception e){
   System.out.print(e);
   e.printStackTrace();
   }
%>
<!-- 
<html>
<body>
<form action="post">

<input type="Text" id="doa" name="date_of_admit" class="validate[required]" ></input>
<br/>
<input type="submit" value="SUBMIT" />
</form>
</body>
</html>
 -->