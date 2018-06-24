Warns when you use `this` inside a function that wasn't defined
with a fat arrow. This rule does not apply to methods defined in a
class, since they have `this` bound to the class instance (or the
class itself, for class methods). The option `is_strict` is
available for checking bindings of class methods.

It is impossible to statically determine whether a function using
`this` will be bound with the correct `this` value due to language
features like `Function.prototype.call` and
`Function.prototype.bind`, so this rule may produce false positives.