<!DOCTYPE html>
<html>
<body>

<p>Click the button to display an alert box:</p>

<button name="tryit"  onclick="window.location.href='AssignPatientId.jsp'">Try it</button>
<a href="AssignPatientId.jsp" target="popup" onclick="window.open('tryit','width=600,height=400')">Open page in new window</a>
<script>
function myFunction() {
    alert("I am an alert box!");
}
</script>

</body>
</html>
