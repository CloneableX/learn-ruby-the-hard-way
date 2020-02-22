# Exercise 14: prompting and pass

`ARGV` 可能获取执行 ruby 脚本时命令行传入的参数，但当只解析一个传入参数时不能再使用 unpack 的方式，需要使用 `ARGV.first` 的方式获取，同时方法之后使用逗号将参数隔开表示此方法分别用不同的参数执行多次。
