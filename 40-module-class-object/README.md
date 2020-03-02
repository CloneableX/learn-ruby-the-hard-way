# Exercise 40: module, class and object

ruby 是一种面向对象的语言，所以肯定有关于 `class` 和 `object` 的概念，class 可以认为是迷你版本的 module，使用 module 需要 `require` 关键字的帮助，class 被使用需要 `new` 方法将其实例化为 object，而通过 object 就可以访问 class 中定义的方法等。

module 中除了方法也可以定义常量，不过访问 module 中的常量需要通过 `::` 符号，而 class 中比较特殊的是可定义 class 内部变量，通过 `@` 符号，一般情况下 class 内部变量外部无法访问，但也可以通过 `attr_reader` `attr_writer` `attr_accessor` 开放内部变量的部分访问权限，具体可阅读 [How to Use attr_accessor, attr_writer & attr_reader](https://www.rubyguides.com/2018/11/attr_accessor/)，当然 class 还有 `initialize` 方法较为特殊，在 class 通过 `new` 进行实例化的过程中，initialize 方法会被调用。
