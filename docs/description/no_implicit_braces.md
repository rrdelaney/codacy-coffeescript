This rule prohibits implicit braces when declaring object literals.
Implicit braces can make code more difficult to understand,
especially when used in combination with optional parenthesis.
<pre>
<code># Do you find this code ambiguous? Is it a
# function call with three arguments or four?
myFunction a, b, 1:2, 3:4

# While the same code written in a more
# explicit manner has no ambiguity.
myFunction(a, b, {1:2, 3:4})
</code>
</pre>
Implicit braces are permitted by default, since their use is
idiomatic CoffeeScript.