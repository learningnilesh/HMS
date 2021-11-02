package hospital;
import java.sql.Connection;
import java.sql.DriverManager;


import net.sf.jasperreports.engine.JasperCompileManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.view.JasperViewer;


public class JR {

	public static void main(String[] args) 
	{
		showReport("C:/UsersNK/Desktop/JasperReports/Reports/admission_card.jrxml", "admission card");
	}
	
	
	public static void showReport(String reportName, String title)
	{
		try 
		{  			   
			
			/* JasperReport is the object
			that holds our compiled jrxml file */
			JasperReport jasperReport;

			/* JasperPrint is the object contains
			report after result filling process */
			JasperPrint jasperPrint;
			
			// connection is the data source we used to fetch the data from
			Connection connection = null;
			Class.forName("com.mysql.jdbc.Driver");  
			connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/hmsdb","root","root");	
			connection.setAutoCommit(false);
		
			//Connection connection = establishConnection(); 
			// jasperParameter is a Hashmap contains the parameters
			// passed from application to the jrxml layout
			//HashMap jasperParameter = new HashMap();

			// jrxml compiling process
			jasperReport = JasperCompileManager.compileReport(reportName);
		
			// filling report with data from data source

			jasperPrint = JasperFillManager.fillReport(jasperReport,null, connection); 

			//JasperViewer jv=new JasperViewer("C:/Users/Sachin/JaspersoftWorkspace/MyReports/admission_card.jrprint", false, false);
			
			JasperViewer jv = new JasperViewer(jasperPrint);
   			   
			jv.setTitle(title);

			jv.setVisible(true);

		} 
		catch (Exception e) 
		{
		   		System.out.println(e.toString());
		}		
		
	}
	
}
