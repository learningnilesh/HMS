<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.itextpdf.text.Document"%>
<%@page import="com.itextpdf.text.Paragraph"%>
<%@page import="com.itextpdf.text.pdf.PdfWriter"%>
<%@page import="java.sql.*"%>
<%@page import="com.itextpdf.text.Element"%>
<%@page import="com.itextpdf.text.pdf.PdfContentByte"%>
<%@page import="com.itextpdf.text.DocumentException"%>
<%@page import="com.itextpdf.text.Rectangle"%>
<%@page import="com.itextpdf.text.Font"%>
<%@page import="java.io.FileOutputStream"%>

<%@page import="com.lowagie.text.Image"%>

<%@page import="com.lowagie.text.pdf.BaseFont"%>


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
     int id=Integer.parseInt(request.getParameter("id").toString());
  
     Class.forName("com.mysql.jdbc.Driver");
  Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/hmsdb", "root", "root");

  Statement st1=conn.createStatement();
  PreparedStatement ps=null;
ResultSet rs=null;
  
   String query = "select * from history_record where id_patient="+id+"";          //Fetching data from table
      ps=conn.prepareStatement(query);                // executing query
      rs=ps.executeQuery();
      
   document.open();
   
 //Line
   PdfContentByte cb = writer.getDirectContent();
   cb.moveTo(580, 750);
   cb.lineTo(12, 750);
   cb.moveTo(580, 680);
   cb.lineTo(12, 680);
   
   cb.moveTo(580, 535);
   cb.lineTo(12, 535);
   cb.moveTo(580, 465);
   cb.lineTo(12, 465);
   cb.moveTo(580, 358);
   cb.lineTo(12, 358);
   
   cb.moveTo(580, 225);
   cb.lineTo(12, 225);
   
   cb.moveTo(580, 100);
   cb.lineTo(12, 100);
  
   //Font
   Font mySizeSpecification=new Font();
   mySizeSpecification.setStyle("bold");
   mySizeSpecification.setSize(14);
   
 //Rectangle
   PdfContentByte canvas = writer.getDirectContent();
   Rectangle rect = new Rectangle(30, 670, 165, 652);
   rect.setBorder(Rectangle.BOX);
   rect.setBorderWidth(1);
   canvas.rectangle(rect);
   
   Rectangle rect1 = new Rectangle(30, 578, 235, 598);
   rect1.setBorder(Rectangle.BOX);
   rect1.setBorderWidth(1);
   canvas.rectangle(rect1);
   
   Rectangle rect2 = new Rectangle(30, 525, 140, 506);
   rect2.setBorder(Rectangle.BOX);
   rect2.setBorderWidth(1);
   canvas.rectangle(rect2);
  
   Rectangle rect3 = new Rectangle(30, 435,176, 453);
   rect3.setBorder(Rectangle.BOX);
   rect3.setBorderWidth(1);
   canvas.rectangle(rect3);
   
   Rectangle rect4 = new Rectangle(30, 328,149, 346);
   rect4.setBorder(Rectangle.BOX);
   rect4.setBorderWidth(1);
   canvas.rectangle(rect4);
   
   Rectangle rect5 = new Rectangle(30, 273,149, 290);
   rect5.setBorder(Rectangle.BOX);
   rect5.setBorderWidth(1);
   canvas.rectangle(rect5);
   
   Rectangle rect6 = new Rectangle(30, 203,190, 220);
   rect6.setBorder(Rectangle.BOX);
   rect6.setBorderWidth(1);
   canvas.rectangle(rect6);

String tab="\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0";
   /* new paragraph instance initialized and add func2ion write in pdf file*/
   document.add(new Paragraph(tab+"\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0CHOUGALE NEUROLOGY CENTRE",mySizeSpecification));  
   document.add(new Paragraph(tab+tab+"\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0& NURSING HOME\n",mySizeSpecification));  
 document.addCreationDate();
   
   while(rs.next())
   {
         // fetch & writing records in pdf files
      document.add(new Paragraph("\nPatient ID : "+rs.getString(2)+""));
      document.add(new Paragraph("Name of Patient : "+rs.getString(3)+""));
       document.add(new Paragraph("S/B DR : "+rs.getString(4)+"\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0HNB : "+rs.getString(5)+""));
       document.add(new Paragraph("\nCHIEF COMPLANTS : \u00a0\u00a0\u00a0\u00a0"+rs.getString(6)));
       document.add(new Paragraph("\nHISTORY OF PRESENT ILLNESS : \u00a0\u00a0\u00a0\u00a0"+rs.getString(7)));

    
       document.add(new Paragraph("\nPAST HISTORY : "));
       document.add(new Paragraph("DM : "+rs.getString(8)+"\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0ASTHMA : "+rs.getString(9)+"\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0TB : "+rs.getString(10)+"\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0HTN : "+rs.getString(11)+"\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0IHD : "+rs.getString(12)));
       document.add(new Paragraph("CVA : "+rs.getString(13)+"\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0EPILEPSY : "+rs.getString(14)+"\u00a0\u00a0\u00a0\u00a0COPD : "+rs.getString(15)+"\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0CKD : "+rs.getString(16)+"\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0Other : "+rs.getString(17)));
       document.add(new Paragraph("\nPERSONAL HISTORY : "));
       document.add(new Paragraph("DIET : "+rs.getString(18)+"\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0SLEEP : "+rs.getString(19)+"\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0APPETITE : "+rs.getString(20)+"\nBOWEL : "+rs.getString(21)+"\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0BLADDER : "+rs.getString(22)+"\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0OCCUPATION : "+rs.getString(23)+""));
       document.add(new Paragraph("ADDICATION : "));
       document.add(new Paragraph("ALCOHOL : "+rs.getString(24)+"\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0TOBACCO : "+rs.getString(25)+"\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0SMOKING : "+rs.getString(26)+"\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0PAN/GUTKHA : "+rs.getString(27)));
      
       document.add(new Paragraph("\nDRUGS HISTORY : \u00a0\u00a0\u00a0"+rs.getString(28)));
       document.add(new Paragraph("\n\nFAMILY HISTORY : \u00a0\u00a0\u00a0"+rs.getString(29)));
       document.add(new Paragraph("\n\n\nGENERAL EXAMINATION : "));
       document.add(new Paragraph("HIGHER FUN : "+rs.getString(30)));
       document.add(new Paragraph("TEMP : "+rs.getString(31)+"\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0PR : "+rs.getString(32)+"\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0BP : "+rs.getString(33)+"\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0RR : "+rs.getString(34)));
       document.add(new Paragraph("PALLOR : "+rs.getString(35)+"\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0EDEMA : "+rs.getString(36)+"\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0CLUBBING : "+rs.getString(37)));
       document.add(new Paragraph("LNPATHY : "+rs.getString(38)+"\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0ICTERUS : "+rs.getString(39)+"\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0JVP : "+rs.getString(40)));
       document.add(new Paragraph("SIGN OF CCF : "+rs.getString(41)+"\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0Height : "+rs.getString(42)+"\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0\u00a0Weight : "+rs.getString(43)));
       
       document.newPage();
       cb.moveTo(580, 790);
       cb.lineTo(12, 790);
       cb.stroke();
       document.add(new Paragraph("\nSYSTEMATIC EXAMINATION :"));
       Rectangle rect7 = new Rectangle(30, 767, 210, 783);
       rect7.setBorder(Rectangle.BOX);
       rect7.setBorderWidth(1);
       canvas.rectangle(rect7);
       document.add(new Paragraph("\nCNS EXAMINATION : "));
       Rectangle rect8 = new Rectangle(30, 730, 160, 746);
       rect8.setBorder(Rectangle.BOX);
       rect8.setBorderWidth(1);
       canvas.rectangle(rect8);
       document.add(new Paragraph("\nHigher Function : "+rs.getString(44)));
       document.add(new Paragraph("\nCRANIAL NERVE(Facial Nerve) : "+rs.getString(45)));
       document.add(new Paragraph("\nTone : "+rs.getString(46)));
       document.add(new Paragraph("\nGlassglow Coma Scale : "+rs.getString(51)));
       document.add(new Paragraph("\nSensory System : "+rs.getString(52)));
       document.add(new Paragraph("\nCoordination/Abnormal Movement : "+rs.getString(53)));
       document.add(new Paragraph("\nCEREBELLUM FUN : "+rs.getString(57)));
       
       document.add(new Paragraph("\nCLINICAL PROVISIONAL DIAGNOSIS :\u00a0\u00a0\u00a0 "+rs.getString(58)));
       Rectangle rect9 = new Rectangle(30, 441, 253, 458);
       rect9.setBorder(Rectangle.BOX);
       rect9.setBorderWidth(1);
       canvas.rectangle(rect9);
      
       cb.moveTo(580, 380);
       cb.lineTo(12, 380);
       cb.stroke();
   
  // Paragraph p = new Paragraph("Hello World.");
   
   
   document.close(); //document instance closed
   conn.close();  //db connection close
   }
   cb.stroke();
%>


</body>
</html>