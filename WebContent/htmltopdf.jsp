<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.itextpdf.text.Document"%>
<%@page import="com.itextpdf.text.Paragraph"%>
<%@page import="com.itextpdf.text.pdf.PdfWriter"%>
<%@page import="java.sql.*"%>
<%@page import="com.itextpdf.text.Element"%>
<%@page import="com.itextpdf.text.DocumentException"%>
<%@page import="com.itextpdf.text.Chunk"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.io.StringReader"%>
<%@page import="com.itextpdf.text.PageSize"%>
<%@page import="com.itextpdf.text.html.simpleparser.HTMLWorker"%>




  <%
    try {
    	 response.setContentType("application/pdf");
      Document document = new Document(PageSize.LETTER);
      PdfWriter writer =PdfWriter.getInstance(document, response.getOutputStream());
    //  PdfWriter.getInstance(document, new FileOutputStream("c://testpdf1.pdf"));
      document.open();
    
      HTMLWorker htmlWorker = new HTMLWorker(document);
      String str = "<html><head></head><body>"+
        "<center><a href='http://www.rgagnon.com/howto.html'><b>\t\t\t\t\t\tReal's HowTo</b></a></center>" +
        "<h1>		Show your support</h1>" +
        "<p>It DOES cost a lot to produce this site - in ISP storage and transfer fees, " +
        "in personal hardware and software costs to set up test environments, and above all," +
        "the huge amounts of time it takes for one person to design and write the actual content." +
        "<p>If you feel that effort has been useful to you, perhaps you will consider giving something back?" +
        "<p>Donate using PayPal? to real@rgagnon.com." +
        "<p>Contributions via PayPal are accepted in any amount " +
        "<P><br><table border='1'><tr><td>Java HowTo<tr>" +
        "<td bgcolor='red'>Javascript HowTo<tr><td>Powerbuilder HowTo</table>" +
        "</body></html>";
      htmlWorker.parse(new StringReader(str));
      document.close();
      System.out.println("Done");
      }
    catch (Exception e) {
      e.printStackTrace();
    }
  %>
