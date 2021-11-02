<html>
<link rel="stylesheet" href="style.css">
<body>
<h1 align="center">CLASSMATES.COM </h1>
<table width="100%" height="100%">
<tr>
<td width="30%" style="background-color:tan" valign="top">
<h3>Login </h3>
<form  action="SearchDemo.jsp" method=post>
<b>Email Address</b>
<br>
<input type=text size=30 name=email>
<br>
<b>Password</b>
<br>
<input type=text  size=20 name=pwd>
<p>
<input type=submit value="Login">
</form>

<%

if ( request.getParameter("email") != null )
{
%>

<jsp:useBean id="member" class="hospital.patient" scope="session" />

<jsp:setProperty name="member"
   property="*" />
   
<%
   if  ( member.login() )
   {
    response.sendRedirect("Patient.jsp");
   }
   else
   {
     out.println("<p><span style=color:red>Invalid Login</span>");
    }
  }
%>
	   

   
</td>


<td valign="top">


</td>
</tr>
</table>
</body>
</html>
