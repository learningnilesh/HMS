<%@page import="java.io.File,java.io.FileOutputStream,java.io.OutputStream,java.util.Date,com.itextpdf.text.Document,com.itextpdf.text.Paragraph,com.itextpdf.text.pdf.PdfWriter"%>
<%@page import="java.sql.*"%>
 <jsp:getProperty name="member" property="fullname"/>
 <jsp:useBean id="member" scope="session"  class="hospital.patient" />

<%@ page import="java.util.*,java.sql.*,hospital.*"%>
<%

try {
	
	 Connection con = Database.getConnection();
     PreparedStatement ps = con.prepareStatement("select patient_name,age,gender  from patient where id_patient = ?");
     ps.setString(1,member.getMid());
     
     ResultSet rs = ps.executeQuery();
    Document document=new Document();
    PdfWriter.getInstance(document,new FileOutputStream("D:\\myfile.pdf"));
    document.open();  
    document.add(new Paragraph("My name is nilesh"));
    document.close();
} catch (Exception e) {
    System.out.println("error"+e.getMessage());
}
 %>