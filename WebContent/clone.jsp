<div class="str">
    <ul><li><input type="text" /></li></ul>
</div>
<a href="#">clone</a>
<script>
$(function() {
    $('a').live('click', function() {
        var cln = $('ul:last').clone();
        $('.str').append(cln);
    });
});
</script>