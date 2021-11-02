<%@page import="java.sql.*,java.util.*"%>
<%@page import="java.sql.Connection,java.sql.DriverManager,java.sql.SQLException,net.sf.jasperreports.engine.JasperCompileManager,net.sf.jasperreports.engine.JasperFillManager,net.sf.jasperreports.engine.JasperPrint,net.sf.jasperreports.engine.JasperReport,net.sf.jasperreports.view.JasperViewer"%>

<%@ page  import="java.io.*"%> 
<%@ page  import="java.sql.Connection"%> 
<%@ page  import="java.sql.DriverManager"%>
<%@ page  import="java.util.HashMap"%>
<%@ page  import="java.util.Map"%>
<%@ page  import="net.sf.jasperreports.engine.*"%>
<%@ page import="net.sf.jasperreports.engine.util.*" %>

<%
	String patientId = request.getParameter("patientId");
	String reportName = request.getParameter("reportName");
	String reportNameHtml = reportName.replace("jrxml", "html");


	try {
		Connection connection = null;

		Class.forName("com.mysql.jdbc.Driver");
		connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/hmsdb", "root", "root");
		
		String sql = "DELETE FROM r_patient";

		PreparedStatement ps = connection.prepareStatement(sql);
		ps.executeUpdate();
		
		sql = "Insert into r_patient select p.* from patient p where id_patient = " + patientId + ";";

		ps = connection.prepareStatement(sql);
		//ps.setString(1, patientId);

		ps.executeUpdate();
		
		
		JasperReport  jasperReport = JasperCompileManager.compileReport(reportName);

        JasperPrint jasperPrint = JasperFillManager.fillReport(jasperReport, null, connection);

        JasperExportManager.exportReportToHtmlFile(jasperPrint, reportNameHtml);

        response.sendRedirect(reportNameHtml);
        
	} 
	catch (Exception e) 
	{
		System.out.println(e.toString());
	}

%>
