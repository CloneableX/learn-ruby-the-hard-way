# Exercise 32: Loops and Array

ruby 中的数组不仅像其他的语言的一样可以包含零个或多个相同类型的元素，特别的是 ruby 中的同一数组中还可以混合容纳数字和字符串类型的元素，ruby 中可以通过 `array.push` 方法向数组内添加元素。

说到数组就不得不谈访问数组元素的方式——遍历，在 ruby 中有如下三种方式可以对数组进行遍历

- `for-in`

`for-in` 与大多数语言遍历数组的方式一致都使用 `for element in array` 的方法，在 ruby 中需要注意的是整个循环体需要以 `end` 结束。

- `each do`

ruby 中特有一种 `each do` 的方式，按 `array.each do |element|` 的语法使用，同样也是以 `end` 结束循环体。

- `each {}`

`each {}` 的方式与 `each do` 相似，按 `array.each {|element|}` 的语法使用，你可以在花括号内 `|element|` 之后书写代码进行循环中需要做的事情。

上述三种循环语法以 `each do` 在 ruby 中较为常用。

在 ruby 中还可以使用 `(start..end)` 的方式表示一个区间的数组元素，相当于从 start 开始逐渐增 1 直到 end (包含 start 和 end) 的所有数作为元素组成的数组。
