package classmates;


import java.sql.*;

public class  Database
{
 public static Connection getConnection() throws Exception
 {
	 
	 Class.forName("com.mysql.jdbc.Driver");
     Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student", "root", "root");
   
   // connect using Thin driver
  
   return con;
 }

 public static void clean(Connection con, Statement st)
 {
    try
    {
     st.close();
     con.close();
    }
    catch(Exception ex) {}
 }

}