

<%@page session="true" import="java.io.*"%>
<html>
<body bgcolor="#d0d0d0">
<br></br>
<br></br>
<br></br>
<h2><center>enter patient details</center></h2>
<form name="searchpt" action="searchptinfo.jsp"method="post">
<table border="2" align=center>
<tr><td>
<b>enter the id u want to search:</b>
<input type="text"name="id"/>
<br/>
<br/>
</td></tr>
</table>
<center>
<input type="submit"value="submit"/>
<input type="reset"value="reset"/>
</form>
</body>
</html>
