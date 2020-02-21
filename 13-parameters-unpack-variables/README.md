# Exercise 13: parameters, unpacking, variables

在 ruby 中可以通过 `ARGV` 获取运行 .rb 脚本命令行传入的参数，而且可以通过 unpack 的方式顺序赋值给变量，使用 `ARGV` 时需要注意的是不能同时使用 `gets.chomp` 获取用户在脚本运行中输入的参数，如果这样使用，运行脚本时会报错，不过可以使用 `$stdin.gets.chomp` 达到与 `gets.chomp` 同样的功能。
