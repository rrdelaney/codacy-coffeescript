This rule prohibits empty parameter lists in function definitions.
<pre>
<code># The empty parameter list in here is unnecessary:
myFunction = () -&gt;

# We might favor this instead:
myFunction = -&gt;
</code>
</pre>
Empty parameter lists are permitted by default.