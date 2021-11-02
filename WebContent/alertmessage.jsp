<script type="text/javascript">
function Confirm(form){
alert("Record insert successfully!"); 
form.submit();
}
</script>

<form name="form" method="post" action="">
Your Email:<br>
<input name="email" type="text" />
<input type="button" name="Submit" value="Submit" onClick="Confirm(this.form)">
</form> 