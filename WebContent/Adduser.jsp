    <%@page import="java.sql.*,java.util.*"%>
<%
String id=request.getParameter("uname");
String password=request.getParameter("pass");


        try{
         Class.forName("com.mysql.jdbc.Driver");
           Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hmsdb", "root", "root");
           Statement st=con.createStatement();
           int i=st.executeUpdate("insert into user_login(id,password) values('"+id+"','"+password+"')");
           response.sendRedirect("manageuser1.jsp");
        }
        catch(Exception e){
        System.out.print(e);
        e.printStackTrace();
        }
        %>