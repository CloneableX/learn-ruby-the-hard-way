# Exercise 16: reading and writing files

在 ruby 中，可以通过 `open` `close` `truncate` `read` `write` 等方法操作文件，在此例中清除文件可以先 `open` 打开文件，再执行 `truncate` 对原文件内容进行清除，不过也可以通过 `open` 增加模式参数 `w+` 进行操作，效果等同，关于 ruby 操作文件的方法详情可以阅读 [*Ruby File Open: Opening a File in Ruby with Different Modes*](https://blog.udemy.com/ruby-file-open/)
