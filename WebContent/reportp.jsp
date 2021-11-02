s<!DOCTYPE html>
<html>
<body>

<form action="ShowReport.jsp">
  First name: <input type="text" name="patientId" value="1"><br>
  <input type="hidden" name="reportName" value="C:/Users/NK/Desktop/JasperReports/Reports/admission_card.jrxml">
  <input type="hidden" name="title" value="admission card">
  <input type="submit" value="Submit">
</form>

<p>Notice that the hidden field above is not shown to a user.</p>

</body>
</html>
