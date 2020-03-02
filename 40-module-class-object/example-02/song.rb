class Song

  def initialize(lyrics)
    @lyrics = lyrics
  end

  def sing()
    @lyrics.each {|line| puts line}
  end
end

happy_birthday = Song.new(["Happy birthday to you",
                         "I don't want to get sued",
                         "So I'll stop right there"])

bulls_of_parade = Song.new(["They really around tha family",
                          "With pockets full of shells"])

happy_birthday.sing
bulls_of_parade.sing
