This rule prohibits trailing semicolons, since they are needless
cruft in CoffeeScript.
<pre>
<code># This semicolon is meaningful.
x = '1234'; console.log(x)

# This semicolon is redundant.
alert('end of line');
</code>
</pre>
Trailing semicolons are forbidden by default.