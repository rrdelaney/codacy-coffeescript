This rule warns about nested string interpolation,
as it tends to make code harder to read and understand.
<pre>
<code># Good!
str = "Book by #{firstName.toUpperCase()} #{lastName.toUpperCase()}"

# Bad!
str = "Book by #{"#{firstName} #{lastName}".toUpperCase()}"
</code>
</pre>