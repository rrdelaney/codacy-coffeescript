<p>This rule checks to see that there is spacing before and
after the colon in a colon assignment (i.e., classes, objects).
The spacing amount is specified by
spacing.left and spacing.right, respectively.
A zero value means no spacing required.
</p>
<pre><code>
#
# If spacing.left and spacing.right is 1
#

# Doesn't throw an error
object = {spacing : true}
class Dog
  canBark : true

# Throws an error
object = {spacing: true}
class Cat
  canBark: false
</code></pre>