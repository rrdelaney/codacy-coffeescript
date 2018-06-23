This rule prohibits double quotes unless string interpolation is
used or the string contains single quotes.
<pre>
<code># Double quotes are discouraged:
foo = "bar"

# Unless string interpolation is used:
foo = "#{bar}baz"

# Or they prevent cumbersome escaping:
foo = "I'm just following the 'rules'"
</code>
</pre>
Double quotes are permitted by default.