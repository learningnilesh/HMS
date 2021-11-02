

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style type="text/css">
ul{
list-style-type:none;
}
li{
display:inline;
}
a{ 
float:left;
width:164px;
text-decoration:none;
color:white;
font-weight:bold;
background:#999900;
padding:5px;
border-right:1px solid #FFFFFF;
}
a:hover{
background:#CCCC00;
}
</style>
    </head>
    <body valign="top">
    <form id="form1">
    <div>
    
    <table cellspacing="0" align="center" style="width: 1078px; height: 584px; margin-bottom: 0px;" 
            cellpadding="0" valign="top" >
  <tr>
     <td height="70" colspan="2">
    <table width="100%" bgcolor="#006ba1" style="height: 87%">


</table> 

     </td>
  </tr>
  <tr >
     <%@page import ="java.sql.*" %>
    <%@page import="java.io.*,java.sql.*,java.text.*"%>
  
   
    
  	<td valign="top"  
          style="border: 1px solid #808000; background-color: #FFFFFF;">
         
        </center>
            <table>
                 <table>
                 <table align="center" border="0" cellpadding="0" cellspacing="0" 
                   name="tblOuter" width="50%">
                <tr height="300" valign="top">
                    <td align="center" border="1" colspan="10">
                        <br>
                        <table align="center" border="1" bordercolor="skyblue" cellpadding="2" cellspacing="0"
                               name="tblFirstChild" width="100%">
                            <tr bgcolor="black">
                                
                                
                                                 </tr>
                                                <tr bgcolor="black" >  
                                                     <font size="4" color="white">
   <td>Patient name</td> 
   <td>Ipd number</td>  
     
   
   
      
   </tr>  
                             
     
            
    <%  String pt_name=request.getParameter("patient_name");   %>
                           <%  
                          // String pt_name=request.getParameter("patient_name");
                           
                           
                        	   
                          
                           Class.forName("com.mysql.jdbc.Driver");
                           Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hmsdb", "root", "root");
     Statement stmt = con.createStatement();  
           
    ResultSet result = stmt.executeQuery("select *from patient where patient_name='"+pt_name+"'");  
     while (result.next())  
     {  
  %>  
    <tr>  
   <td> <%= result.getString("patient_name") %> </td> 
     
    
   
   
      
   </tr>  
 <%  
     }  
 %> 
 
  
                         </table>
                    </td>
                </tr>
                
            </table>      
                           
                
            </table>
        </td>
    
  </tr>
       
   <tr>
     <td height="20" colspan="2">
     <hr style="height: -15px">
<div align=center  
             style="font-size:10;letter-spacing:2; background-color: #006ba1; height: 20px;">
    <span class="style8">All Rights Are Reserved</span><br>

</div>

     </td>
  </tr>
</table>  
    </div>
    </form>
    </body>
</html>
