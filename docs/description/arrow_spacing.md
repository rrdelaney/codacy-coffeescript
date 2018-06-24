<p>This rule checks to see that there is spacing before and after
the arrow operator that declares a function. This rule is disabled
by default.</p> <p>Note that if arrow_spacing is enabled, and you
pass an empty function as a parameter, arrow_spacing will accept
either a space or no space in-between the arrow operator and the
parenthesis</p>
<pre><code># Both of this will not trigger an error,
# even with arrow_spacing enabled.
x(-> 3)
x( -> 3)

# However, this will trigger an error
x((a,b)-> 3)
</code>
</pre>