This rule mandates that all class names are UpperCamelCased.
Camel casing class names is a generally accepted way of
distinguishing constructor functions - which require the 'new'
prefix to behave properly - from plain old functions.
<pre>
<code># Good!
class BoaConstrictor

# Bad!
class boaConstrictor
</code>
</pre>
This rule is enabled by default.