<%@ page import ="java.sql.*" %>
<%
    String userid = request.getParameter("uname");    
    String pwd = request.getParameter("pass");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hmsdb",
            "root", "root");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from admin_login where id='" + userid + "' and password='" + pwd + "'");
    if (rs.next()) {
        session.setAttribute("userid", userid);
        //out.println("welcome " + userid);
        //out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("AdminHome.jsp");
    } else {
    	  rs = st.executeQuery("select * from user_login where id='" + userid + "' and password='" + pwd + "'");
    	    if (rs.next()) {
    	        session.setAttribute("userid", userid);
    	        //out.println("welcome " + userid);
    	        //out.println("<a href='logout.jsp'>Log out</a>");
    	        response.sendRedirect("Home.jsp");
    	    } else {
    	    	 request.setAttribute("error","Invalid Username or Password");
    	    	    RequestDispatcher rd=request.getRequestDispatcher("/index.jsp");		    
    	    	    rd.include(request, response);
    	    }
    }
%>