<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.itextpdf.text.Document"%>
<%@page import="com.itextpdf.text.Paragraph"%>
<%@page import="com.itextpdf.text.pdf.PdfWriter"%>
<%@page import="java.sql.*"%>
<%@page import="com.itextpdf.text.Element"%>
<%@page import="com.itextpdf.text.DocumentException"%>

<%@page import="com.itextpdf.text.Chunk"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<jsp:useBean id="member" scope="session"  class="hospital.patient" />

<%@ page import="java.util.*,java.sql.*,hospital.*"%>

<div style="background-color:navy;color:white;font:700 12pt verdana">
 <jsp:getProperty name="member" property="fullname"/>
</div>

<%
   response.setContentType("application/pdf");
   Document document = new Document();
   PdfWriter writer =PdfWriter.getInstance(document, response.getOutputStream());
     //	int id=Integer.parseInt(request.getParameter("id").toString());
  
     Class.forName("com.mysql.jdbc.Driver");
  Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/hmsdb", "root", "root");

  Statement st1=conn.createStatement();
  PreparedStatement ps=null;
ResultSet rs=null;
  
   String query = "select * from patient where id_patient=25";          //Fetching data from table
      ps=conn.prepareStatement(query);                // executing query
      rs=ps.executeQuery();
      
   document.open();
String abc="\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0";
   /* new paragraph instance initialized and add function write in pdf file*/
   document.add(new Paragraph(abc+"REPORT\n\n"));
  
   document.add(new Paragraph("---------------------------------------------------------------------------------------------------------------------------------"));
   document.addCreationDate();
   
   while(rs.next())
   {
         // fetch & writing records in pdf files
       document.add(new Paragraph("Name Of Patient:"+rs.getString(2)+"\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0Patient ID ::"+rs.getString(3)+"\nAge ::"+rs.getString(4)+"\tGender ::"+rs.getString(5)+"\nAddress ::"+rs.getString(6)+"\n\n"));
   }
   document.add(new Paragraph("---------------------------------------------------------PAGE NO::"+document.getPageNumber()+"------------------------------------------------------"));
   
  // Paragraph p = new Paragraph("Hello World.");
   
   
   document.close(); //document instance closed
   conn.close();  //db connection close
   
%>


</body>
</html>