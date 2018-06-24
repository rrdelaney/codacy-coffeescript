This rule prohibits string interpolation in a single quoted string.
<pre>
<code># String interpolation in single quotes is not allowed:
foo = '#{bar}'

# Double quotes is OK of course
foo = "#{bar}"
</code>
</pre>
String interpolation in single quoted strings is permitted by
default.