Disallows declaring empty functions. The goal of this rule is that
unintentional empty callbacks can be detected:
<pre>
<code>someFunctionWithCallback ->
doSomethingSignificant()
</code>
</pre>
The problem is that the call to
<tt>doSomethingSignificant</tt> will be made regardless
of <tt>someFunctionWithCallback</tt>'s execution. It can
be because you did not indent the call to
<tt>doSomethingSignificant</tt> properly.

If you really meant that <tt>someFunctionWithCallback</tt>
should call a callback that does nothing, you can write your code
this way:
<pre>
<code>someFunctionWithCallback ->
    undefined
doSomethingSignificant()
</code>
</pre>