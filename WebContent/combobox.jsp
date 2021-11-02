<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<form name="form1" method="get" action="servlet/PrintResultsServlet"> 
 
<select name="Events">
<option value="0" selected>(please select:)</option>
<option value="100M Run">100M Run</option>
<option value="200M Run">200M Run</option>
<option value="400M Run">400M Run</option>
<option value="800M Run">800M Run</option>
</select>
<input type="text" name="choicetext">
   <p align="center">
    <input type="submit" name="Submit" value="Search">
  </p>
        <br><br><br><br><br><br><br><br><br><br><br>
     
     
     <font size=5 color="red">
Check all Favorite fruits: <br>

<input TYPE=checkbox name=fruit VALUE=apples> Apples <BR>
<input TYPE=checkbox name=fruit VALUE=grapes> Grapes <BR>
<input TYPE=checkbox name=fruit VALUE=oranges> Oranges <BR>
<input TYPE=checkbox name=fruit VALUE=melons> Melons <BR>
</font>
</form>

</body>
</html>